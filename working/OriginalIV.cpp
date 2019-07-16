#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/CallSite.h"
#include <vector>

using namespace llvm;

namespace {
  struct OriginalIV : public FunctionPass {
    static char ID;
    OriginalIV() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
        Function *newFunction = NULL;
        bool typeFound = false;
        for (auto &B : F) {
          std::vector<Instruction *> dels;
          dels.clear();
          for (auto &I : B) {
            if (auto *op = dyn_cast<CallInst>(&I)) {
	      auto function = op->getCalledFunction();
              if (function != NULL) {
                auto name = function->getName();
                if (name == "sub_400650_generate_iv_original") {

                  // get return type of function
       	          if (typeFound == false) {	
       	            Type *retType = function->getReturnType();
                    FunctionType *newFunctionType = FunctionType::get(retType, function->getFunctionType()->params(), false);
                    newFunction =
                        (Function *)(F.getParent()->getOrInsertFunction("sub_400df0_generate_iv", newFunctionType));
                    typeFound = true;
                  }

                  IRBuilder<> builder(op);
                  CallSite CS(&I);
                  std::vector<Value *> arguments;
                  for (unsigned int i = 0; i < CS.arg_size(); i++) {
                    Value *arg = CS.getArgument(i);
                    arguments.push_back(arg);
                  }
                  
                  ArrayRef<Value *> argArray = ArrayRef<Value *>(arguments); 
                  Value* newCall = builder.CreateCall(newFunction, argArray); //, ArrayRef<Value*>(arguments));
                  // replace all calls to old function with calls to new function
                  for (auto& U : op->uses()) {
                    User* user = U.getUser();
		    errs() << user << "\n";
		    errs() << U.getOperandNo() << "\n";
                    user->setOperand(U.getOperandNo(), newCall);
                  }
                  dels.push_back(&I);
                }
              }
            }
          }
          for (auto &I : dels) {
            if (!I->use_empty()) I->replaceAllUsesWith(UndefValue::get(I->getType()));
            I->eraseFromParent();
          }
        }
        return true;
    }
  };
}

char OriginalIV::ID = 0;
static RegisterPass<OriginalIV> X("originalIV", "OriginalIV Pass", false, false);
