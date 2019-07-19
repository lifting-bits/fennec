# ToB-Summer19

stuff you need:
- copy of llvm 4.0.1, since that's what mcsema works with (then, you have to put the directory ReplaceFunction, containing CMakeLists.txt and ReplaceFunction.cpp into the folder of passes (lib/Transforms/ReplaceFunction), then have to change CMakeLists.txt in Transforms to have add_subdirectory(ReplaceFunction))
- working copy of McSema/Remill 2.0
- copy of IDA Pro

how to run the thing:
- start by setting up the pass in llvm, then running make in llvm/build
- make sure mcsema/remill are working and you have clang things within remill-build directory
- need 2 binaries:
  - the one you want to modify. need to know the name of the function you want to swap out.
  - the replacement binary. what you want to do here is make sure your source code can be compiled (it doesn't matter what your main function is, as long as replacement function exists in the program). If you want your replacement function to call the original function anywhere (for example, if you want to test for a certain characteristic of the original function and replace it if necessary), you'll need to create a stub function as a placeholder for the original function. Make sure to call it something different from the original so the tool can differentiate between them. In your replacement function, you'll want to call this stub where you eventually want to call the original function.
- run the program!
  ```./run.sh [mode] [path to remill-build directory] [path to llvm build directory] [path to IDA Pro] [original binary] [replacement binary] [name of original function] [name of replacement function] [if using mode 2: name of stub function] [any necessary compilation flags]```
