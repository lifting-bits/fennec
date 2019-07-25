# ToB-Summer19

This tool enables post-compilation function call changes; for an arbitrary x86-64 ELF binary, a user can write a function that will be substituted in for a given function in the binary. The tool will output a new compiled binary that is identical to the original, except that the specified function will be replaced by the new function. This process requires no runtime linking, nor access to the source code of the binary.

## Features
#### Modes
This tool allows a choice of two modes, to be specified at runtime using either a `1` or a `2` in the command.
1. **Single Function Replacement**: This mode should be used for "normal" cases of function replacement, when there is no use for the original function that you are replacing. If you wish to replace the function no matter what, and do not need to call it anywhere else, this is the appropriate mode.
2. **Dual Function Replacement**: This mode allows you to access the original function from your replacement function. If you wish to test something about the original function or use its result in some manner when you are replacing it, this is the appropriate mode. For example, if your replacement function were used simply to modify the output of the original in some way, this would be the appropriate mode, as you would be able to call the original function in your replacement function.

#### Stripped Binaries
This tool may be used on stripped binaries in addition to those that include symbol information. In order to use the tool in this way, simply specify the stripped function address as it appears in the binary (for example, `sub_400df0`) as the name of the original function.

## Usage

#### Installation

First, clone this repository using `git clone [INSERT LINK]` and navigate into the directory.

##### McSema Setup
You will need a working copy of McSema and Remill - specifically, version 2.0.0. Build instructions can be found at https://github.com/trailofbits/mcsema/tree/v2.0.0. This requires a copy of IDA Pro.

##### LLVM Setup
You will need a copy of LLVM 4.0.1. Then, you must register the pass that will replace a function. To do this, run `bash llvm-setup.sh`. This step might take some time.

##### Binary Setup

To use this project, you will need two binaries: the binary you wish to modify, and a binary containing the function you would like to swap into the original. For your replacement binary, the function you wish to use should have a different name from the original, and the `main` function can be anything.

If you are using mode 2, you will also need to create a stub function as a placeholder for the original function that you're going to be replacing. Make sure to call it something different from the original so the tool can differentiate between them. In your replacement function, you'll want to call this stub where you eventually want to call the original function.

#### Commands

To replace your function, run the following command:

`bash run.sh [mode (1 or 2)] [path to remill-build directory] [path to IDA Pro] [original binary] [replacement binary] [name of original function] [name of replacement function] [if using mode 2: name of stub function] [any necessary compilation flags]`

#### Testing

To test your installation process, run `bash test.sh [path to remill-build directory] [path to IDA Pro]`. This will check several examples, found in the `tests` directory.
