#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
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
      std::vector<Type*> paramTypes = {Type::getInt32Ty(Ctx)};
      Type *retType = Type::getVoidTy(Ctx);
      FunctionType *logFuncType = FunctionType::get(retType, paramTypes, false);
      FunctionCallee logFunc = F.getParent()->getOrInsertFunction("logop", logFuncType);

      for (auto &B : F) {
        for (auto &I : B) {
          if (auto *op = dyn_cast<BinaryOperator>(&I)) {
            // Insert *after* `op`.
            IRBuilder<> builder(op);
            builder.SetInsertPoint(&B, ++builder.GetInsertPoint());

            // Insert a call to our function.
            Value* args[] = {op};
            builder.CreateCall(logFunc, args);

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

