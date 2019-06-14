#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Module.h"
using namespace llvm;

namespace {
  struct Example : public FunctionPass {
    static char ID;
    Example() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      // Get the function to call from our runtime library.
      LLVMContext &Ctx = F.getContext();
      Type *retType = Type::getInt32Ty(Ctx);
      FunctionType *logFuncType = FunctionType::get(retType, false);
      FunctionCallee logFunc = F.getParent()->getOrInsertFunction("logop", logFuncType);

      for (auto &B : F) {
        for (auto &I : B) {
          if (auto *op = dyn_cast<ReturnInst>(&I)) {
            // Insert *after* `op`.
            IRBuilder<> builder(op);
            // builder.SetInsertPoint(&B, ++builder.GetInsertPoint());
            // Insert *before `op`.
            builder.SetInsertPoint(&I);

            // Insert a call to our function.
            Value* result = builder.CreateCall(logFunc);
            // errs() << "Hello \n" << (*result); 
            I.setOperand(I.getNumOperands() - 1, result);

            /*
	    for (auto &U : op->uses()) {
              User* user = U.getUser();
              user->setOperand(U.getOperandNo(), result);
            }
            */
            // builder.CreateRet(result);
            return true;
          }
        }
      }

      return false;
    }
  };
}
	
char Example::ID = 0;
static RegisterPass<Example> X("example", "Example Pass", false, false);

