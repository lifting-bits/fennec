#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;
namespace {
struct ModifyIV : public FunctionPass {
  static char ID;
  ModifyIV() : FunctionPass(ID) {}
  bool runOnFunction(Function &F) override {
    if (F.getName() == "generate_iv") {
      errs() << "Reached iv function";          
      errs() << "\n";
    }
    return false;   
  }
};
}

char ModifyIV::ID = 0;
static RegisterPass<ModifyIV> X("modifyIV", "Modify IV Pass",
				false, false);
