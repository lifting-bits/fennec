#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Module.h"
using namespace llvm;

namespace {
  struct OriginalIV : public FunctionPass {
    static char ID;
    OriginalIV() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
        LLVMContext &Ctx = F.getContext();
        Type *retType = Type::getInt8PtrTy(Ctx);
        FunctionType *newFunctionType = FunctionType::get(retType, false);
        FunctionCallee newFunction =
            F.getParent()->getOrInsertFunction("generate_iv", newFunctionType);

        for (auto &B : F) {
          for (auto &I : B) {
            if (auto *op = dyn_cast<CallInst>(&I)) {
              if (op->getCalledFunction()->getName() == "generate_iv_original") {
                IRBuilder<> builder(op);
                Value* newCall = builder.CreateCall(newFunction);
                for (auto& U : op->uses()) {
                  User* user = U.getUser();
                  user->setOperand(U.getOperandNo(), newCall);
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

char OriginalIV::ID = 0;
static RegisterPass<OriginalIV> X("originalIV", "originalIV Pass", false, false);
