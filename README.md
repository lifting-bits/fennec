# ToB-Summer19

This tool enables post-compilation function call changes; for an arbitrary x86-64 ELF binary, a user can write a function that will be substituted in for a given function in the binary. The tool will output a new compiled binary that is identical to the original, except that the specified function will be replaced by the new function. This process requires no runtime linking, nor access to the source code of the binary.

## Modes:

1. **Single Function Replacement**: This mode should be used for "normal" cases of function replacement, when there is no use for the original function that you are replacing. If you wish to replace the function no matter what, and do not need to call it anywhere else, this is the appropriate mode.
2. **Dual Function Replacement**: This mode allows you to access the original function from your replacement function. If you wish to test something about the original function or use its result in some manner when you are replacing it, this is the appropriate mode. For example, if your replacement function were used simply to modify the output of the original in some way, this would be the appropriate mode, as you would be able to call the original function in your replacement function.

## Setup:

##### LLVM Setup
You will need a copy of LLVM that is compatible with McSema/Remill. This project has been tested using LLVM 4.0.1. Then, the next step is to register the pass that will replace a function.

To do this, you will first copy the `ReplaceFunction` directory into the LLVM source base - specifically, into `lib/Transforms`. This directory contains `CMakeLists.txt` and `ReplaceFunction.cpp`. Next, add the following line to `lib/Transforms/CMakeLists.txt`: `add_subdirectory(ReplaceFunction)`. Finally, in the `build` directory, run the `make` command to finish registering the pass.

##### McSema Setup

You will need a working copy of McSema and Remill. This project was tested on McSema version 2.0.0. Build instructions can be found at https://github.com/trailofbits/mcsema/tree/v2.0.0. This requires a copy of IDA Pro. Ensure that `clang` executables are in the `remill-build` directory.

##### Binary Setup

To use this project, you will need two binaries: the binary you wish to modify, and a binary containing the function you would like to swap into the original. For your replacement binary, the function you wish to use should have a different name from the original, and the `main` function should call this function, although it does not need to do anything with the result.

If you are using mode 2, you will also need to create a stub function as a placeholder for the original function that you're going to be replacing. Make sure to call it something different from the original so the tool can differentiate between them. In your replacement function, you'll want to call this stub where you eventually want to call the original function.

##### Tool Setup

The final step is to clone the bash scripts (`replace.sh`, `replace2functions.sh`, and `run.sh`) onto your machine.

## Using the tool:

To replace your function, run the following command:
`./run.sh [mode (1 or 2)] [path to remill-build directory] [path to llvm build directory] [path to IDA Pro] [original binary] [replacement binary] [name of original function] [name of replacement function] [if using mode 2: name of stub function] [any necessary compilation flags]`

## An Example:

The capabilities of this tool can be demonstrated in the patching of a common cryptographic vulnerability resulting from a static initialization vector in the CBC mode of AES encryption. We began with a program that calls OpenSSL's implementation of AES, but generates an IV by calling a function that returns a static value. We used this tool to replace the call to this constant function with a call to new function that would generate a randomized IV. With a simple C program containing a replacement function, we ran the tool (on mode 2) to produce a new binary that would generate its IV through a process that checked the original function for randomness and replace it if it was static.
