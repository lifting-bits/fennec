#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/CallSite.h"
#include <vector>
#include "llvm/Support/CommandLine.h"
#include <string>

using namespace llvm;

// take names of functions as command line arguments
cl::opt<std::string> OriginalFunction("original", cl::desc("<original function>"), cl::Required);
cl::opt<std::string> ReplacementFunction("replacement", cl::desc("<replacement function>"), cl::Required);

namespace {
  struct ReplaceFunction : public FunctionPass {
    static char ID;
    ReplaceFunction() : FunctionPass(ID) {}
    bool runOnFunction(Function &F) override {
        Function *newFunction = NULL;
        bool typeFound = false; // whether new function has been created already
        for (auto &B : F) {
          // store calls to original function to delete
          std::vector<Instruction *> dels;
          dels.clear();

          for (auto &I : B) {
            // check if instruction is a call to the function we want to replace
            if (auto *op = dyn_cast<CallInst>(&I)) {
	            auto function = op->getCalledFunction();
              if (function != NULL) {
                auto name = function->getName();
                if (name == OriginalFunction) {

                  // get type of function and create new replacement function
       	          if (typeFound == false) {
       	            Type *retType = function->getReturnType();
                    FunctionType *newFunctionType =
                      FunctionType::get(retType, function->getFunctionType()->params(), false);
                    // create new function
                    newFunction =
                      (Function *)(F.getParent()->getOrInsertFunction(ReplacementFunction, newFunctionType));
                    typeFound = true;
                  }

                  // set up for insertion of new instruction
                  IRBuilder<> builder(op);
                  CallSite CS(&I);

                  // get arguments to original function so they can be passed to replacement
                  std::vector<Value *> arguments;
                  for (unsigned int i = 0; i < CS.arg_size(); i++) {
                    Value *arg = CS.getArgument(i);
                    arguments.push_back(arg);
                  }
                  ArrayRef<Value *> argArray = ArrayRef<Value *>(arguments);

                  // create call to replacement function
                  Value* newCall = builder.CreateCall(newFunction, argArray);
                  // replace all calls to old function with calls to new function
                  for (auto& U : op->uses()) {
                    User* user = U.getUser();
                    user->setOperand(U.getOperandNo(), newCall);
                  }

                  // need to remove the original instruction
                  dels.push_back(&I);
                }
              }
            }
          }

          // remove calls to original function
          for (auto &I : dels) {
            if (!I->use_empty()) I->replaceAllUsesWith(UndefValue::get(I->getType()));
            I->eraseFromParent();
          }
        }
        return true;
    }
  };
}

// register pass
char ReplaceFunction::ID = 0;
static RegisterPass<ReplaceFunction> X("replaceFunction", "ReplaceFunction Pass", false, false);
