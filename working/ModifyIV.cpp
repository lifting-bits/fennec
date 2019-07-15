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
  struct ModifyIV : public FunctionPass {
    static char ID;
    ModifyIV() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
        // LLVMContext &Ctx = F.getContext();

/*
        StructType *newMemoryStruct = StructType::create(Ctx, "Memory");
	
        Type *retType = newMemoryStruct; // Type::getPointerElementType(); // Type::getInt8PtrTy(Ctx);
        FunctionType *newFunctionType = FunctionType::get(retType, false);
        Constant *newFunction =
            F.getParent()->getOrInsertFunction("replacement", newFunctionType);
*/
        std::vector<Instruction *> dels;
        dels.clear();
        Function *newFunction = NULL;
        bool typeFound = false;
        for (auto &B : F) {
          for (auto &I : B) {
            if (auto *op = dyn_cast<CallInst>(&I)) {
	      auto function = op->getCalledFunction();
              // errs() << function << "\n";
              if (function != NULL) {
                auto name = function->getName();
                if (name == "sub_400df0_generate_iv") {
      		  errs() << "found \n";

                  // get return type of function
       	          if (typeFound == false) {	
       	            Type *retType = function->getReturnType();
                    FunctionType *newFunctionType = FunctionType::get(retType, function->getFunctionType()->params(), false);
                    newFunction =
                        (Function *)(F.getParent()->getOrInsertFunction("sub_400650_replacement", newFunctionType));
                    typeFound = true;
                  }

                  IRBuilder<> builder(op);
                  CallSite CS(&I);
		  // CallSite::arg_iterator ait = CS.arg_begin(), aend = CS.arg_end();
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
                  // I.eraseFromParent();
                  dels.push_back(&I);
                }
              }
            }
          }
          for (auto &I : dels) {
            I->eraseFromParent();
          }
          return true;
        }

      return false;
    }
  };
}

char ModifyIV::ID = 0;
static RegisterPass<ModifyIV> X("modifyIV", "ModifyIV Pass", false, false);
