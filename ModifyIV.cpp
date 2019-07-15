#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Module.h"
using namespace llvm;

namespace {
  struct ModifyIV : public FunctionPass {
    static char ID;
    ModifyIV() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
        LLVMContext &Ctx = F.getContext();

/*
        StructType *newMemoryStruct = StructType::create(Ctx, "Memory");
	
        Type *retType = newMemoryStruct; // Type::getPointerElementType(); // Type::getInt8PtrTy(Ctx);
        FunctionType *newFunctionType = FunctionType::get(retType, false);
        Constant *newFunction =
            F.getParent()->getOrInsertFunction("replacement", newFunctionType);
*/
        Constant *newFunction = NULL;
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
       	          if (typeFound == false) {	
       	            Type *retType = function->getReturnType();
                    FunctionType *newFunctionType = FunctionType::get(retType, false);
                    newFunction =
                        F.getParent()->getOrInsertFunction("sub_400650_replacement", newFunctionType);
                    typeFound = true;
                  }
                  IRBuilder<> builder(op);
                  Value* newCall = builder.CreateCall(newFunction);
                  for (auto& U : op->uses()) {
                    User* user = U.getUser();
		    errs() << user << "\n";
		    errs() << U.getOperandNo() << "\n";
                    user->setOperand(U.getOperandNo(), newCall);
                  }
                }
              }
            }
          }
          return true;
        }

      return false;
    }
  };
}

char ModifyIV::ID = 0;
static RegisterPass<ModifyIV> X("modifyIV", "ModifyIV Pass", false, false);
