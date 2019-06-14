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
      if (F.getName() == "generate_iv") {
      // Get the function to call from our runtime library.
        LLVMContext &Ctx = F.getContext();
        Type *retType = Type::getInt8PtrTy(Ctx);
        FunctionType *logFuncType = FunctionType::get(retType, false);
        FunctionCallee logFunc = F.getParent()->getOrInsertFunction("replacement", logFuncType);

        for (auto &B : F) {
          for (auto &I : B) {
            if (auto *op = dyn_cast<ReturnInst>(&I)) {
              IRBuilder<> builder(op);
              // Insert *before `op`.
              builder.SetInsertPoint(&I);

              // Insert a call to our function.
              Value* result = builder.CreateCall(logFunc);
              I.setOperand(I.getNumOperands() - 1, result);
              return true;
            }
          }
        }
      }

      return false;
    }
  };
}
	
char ModifyIV::ID = 0;
static RegisterPass<ModifyIV> X("modifyIV", "ModifyIV Pass", false, false);

