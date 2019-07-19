; ModuleID = 'encryptDebug.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%seg_401450__rodata_type = type <{ [4 x i8], [17 x i8], [35 x i8], [45 x i8], [185 x i8], [3 x i8], [2 x i8], [3 x i8], [21 x i8], [35 x i8], [44 x i8] }>
%seg_601ff8__got_type = type <{ i64 }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.Flags, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.Flags, %union.FPU }
%struct.ArchState = type { i32, i32, i32, i32 }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.Flags }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.2] }
%struct.anon.2 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.Flags = type { i64 }
%union.FPU = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.FpuFXSAVE, [224 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [8 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.10, [6 x i8] }
%union.anon.10 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.Memory = type opaque

@stderr = external global i64
@seg_401450__rodata = internal constant %seg_401450__rodata_type <{ [4 x i8] c"\01\00\02\00", [17 x i8] c"0123456789012345\00", [35 x i8] c"16807282475249162265007398494365\00/\00", [45 x i8] c"0b039286d997a33c9e463b296e4dc7be4c666390cc85\00", [185 x i8] c"Um9sbGluJyBpbiBteSA1LjAKV2l0aCBteSByYWctdG9wIGRvd24gc28gbXkgaGFpciBjYW4gYmxvdwpUaGUgZ2lybGllcyBvbiBzdGFuZGJ5IHdhdmluZyBqdXN0IHRvIHNheSBoaQpEaWQgeW91IHN0b3A/IE5vLCBJIGp1c3QgZHJvdmUgYnkK\00", [3 x i8] c"%s\00", [2 x i8] c"\0A\00", [3 x i8] c"%d\00", [21 x i8] c"*length == decodeLen\00", [35 x i8] c"/home/aditi/ToB-new/base64decode.c\00", [44 x i8] c"int Base64Decode(char *, char **, size_t *)\00" }>
@seg_601ff8__got = internal global %seg_601ff8__got_type <{ i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@0 = internal constant void ()* @__mcsema_attach_call
@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400e00_main
@2 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400d00_encrypt
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_401120_Base64Encode
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_401210_calcDecodeLength
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400df0_generate_iv
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_401444__term_proc
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400ce0_handleErrors
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400a38__init_proc
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4012b0_Base64Decode

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #1

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @BIO_read(i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @BIO_new(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @BIO_s_mem() #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @EVP_EncryptInit_ex(i64, i64, i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @EVP_EncryptUpdate(i64, i64, i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @BIO_set_flags(i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @strlen(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @BIO_free_all(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @BIO_new_mem_buf(i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @EVP_CIPHER_CTX_free(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memcpy(i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__assert_fail(i64, i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @BIO_ctrl(i64, i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @BIO_push(i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @ERR_print_errors_fp(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @abort() #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @BIO_f_base64() #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @EVP_EncryptFinal_ex(i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @EVP_CIPHER_CTX_new() #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @BIO_write(i64, i64, i64) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @EVP_aes_256_cbc() #3

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400e00_main(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400e00:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i8*
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 19, i32 0
  %4 = bitcast %union.Flags* %3 to i8*
  %5 = bitcast %union.Flags* %1 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0
  %7 = bitcast %union.Flags* %6 to i32*
  %8 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %12 = getelementptr inbounds %union.Flags, %union.Flags* %6, i64 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 17, i32 0, i32 0
  %16 = tail call %struct.Memory* @breakpoint_400e00(%struct.State* undef, i64 undef, %struct.Memory* %memory1) #9
  %17 = load i64, i64* %14, align 8
  %18 = load i64, i64* %13, align 8, !tbaa !1256
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %17, i64* %20
  %21 = tail call %struct.Memory* @breakpoint_400e01(%struct.State* undef, i64 undef, %struct.Memory* %16) #9
  store i64 %19, i64* %14, align 8, !tbaa !1256
  %22 = tail call %struct.Memory* @breakpoint_400e04(%struct.State* undef, i64 undef, %struct.Memory* %21) #9
  %23 = add i64 %18, -296
  %24 = icmp ult i64 %19, 288
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1, !tbaa !1260
  %27 = trunc i64 %23 to i32
  %28 = and i32 %27, 255
  %29 = tail call i32 @llvm.ctpop.i32(i32 %28) #9
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1, !tbaa !1271
  %34 = xor i64 %19, %23
  %35 = lshr i64 %34, 4
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %37, i8* %38, align 1, !tbaa !1272
  %39 = icmp eq i64 %23, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %40, i8* %41, align 1, !tbaa !1273
  %42 = lshr i64 %23, 63
  %43 = trunc i64 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1, !tbaa !1274
  %45 = lshr i64 %19, 63
  %46 = xor i64 %42, %45
  %47 = add nuw nsw i64 %46, %45
  %48 = icmp eq i64 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1, !tbaa !1275
  %51 = tail call %struct.Memory* @breakpoint_400e0b(%struct.State* undef, i64 undef, %struct.Memory* %22) #9
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 286), i64* %8, align 8, !tbaa !1256
  %52 = tail call %struct.Memory* @breakpoint_400e15(%struct.State* undef, i64 undef, %struct.Memory* %51) #9
  %53 = add i64 %18, -12
  %54 = inttoptr i64 %53 to i32*
  store i32 0, i32* %54
  %55 = tail call %struct.Memory* @breakpoint_400e1c(%struct.State* undef, i64 undef, %struct.Memory* %52) #9
  %56 = add i64 %18, -16
  %57 = load i32, i32* %7, align 4
  %58 = inttoptr i64 %56 to i32*
  store i32 %57, i32* %58
  %59 = tail call %struct.Memory* @breakpoint_400e1f(%struct.State* undef, i64 undef, %struct.Memory* %55) #9
  %60 = add i64 %18, -24
  %61 = load i64, i64* %11, align 8
  %62 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %62
  %63 = tail call %struct.Memory* @breakpoint_400e23(%struct.State* undef, i64 undef, %struct.Memory* %59) #9
  %64 = add i64 %18, -32
  %65 = inttoptr i64 %64 to i64*
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 21), i64* %65
  %66 = tail call %struct.Memory* @breakpoint_400e2b(%struct.State* undef, i64 undef, %struct.Memory* %63) #9
  %67 = add i64 %18, -200
  %68 = inttoptr i64 %67 to i64*
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 286), i64* %68
  %69 = tail call %struct.Memory* @breakpoint_400e32(%struct.State* undef, i64 undef, %struct.Memory* %66) #9
  %70 = add i64 %pc, -16
  %71 = add i64 %pc, 55
  %72 = add i64 %18, -304
  %73 = inttoptr i64 %72 to i64*
  store i64 %71, i64* %73
  store i64 %72, i64* %13, align 8, !tbaa !1256
  store i64 %70, i64* %0, align 8, !tbaa !1256
  %74 = tail call %struct.Memory* @sub_400df0_generate_iv(%struct.State* nonnull %state2, i64 %70, %struct.Memory* %69)
  %75 = tail call %struct.Memory* @breakpoint_400e37(%struct.State* undef, i64 undef, %struct.Memory* %74) #9
  %76 = load i64, i64* %14, align 8
  %77 = add i64 %76, -32
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %0, align 8
  %80 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %80
  %81 = tail call %struct.Memory* @breakpoint_400e3b(%struct.State* undef, i64 undef, %struct.Memory* %75) #9
  %82 = add i64 %76, -40
  %83 = inttoptr i64 %82 to i64*
  store i64 16, i64* %83
  %84 = tail call %struct.Memory* @breakpoint_400e43(%struct.State* undef, i64 undef, %struct.Memory* %81) #9
  %85 = add i64 %76, -48
  %86 = inttoptr i64 %85 to i64*
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 54), i64* %86
  %87 = tail call %struct.Memory* @breakpoint_400e4b(%struct.State* undef, i64 undef, %struct.Memory* %84) #9
  %88 = add i64 %76, -56
  %89 = inttoptr i64 %88 to i64*
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 56), i64* %89
  %90 = tail call %struct.Memory* @breakpoint_400e53(%struct.State* undef, i64 undef, %struct.Memory* %87) #9
  %91 = add i64 %76, -64
  %92 = inttoptr i64 %91 to i64*
  store i64 22, i64* %92
  %93 = tail call %struct.Memory* @breakpoint_400e5b(%struct.State* undef, i64 undef, %struct.Memory* %90) #9
  %94 = add i64 %76, -72
  %95 = inttoptr i64 %94 to i64*
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 101), i64* %95
  %96 = tail call %struct.Memory* @breakpoint_400e63(%struct.State* undef, i64 undef, %struct.Memory* %93) #9
  store i64 and (i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 101), i64 4294967295), i64* %12, align 8, !tbaa !1256
  %97 = tail call %struct.Memory* @breakpoint_400e68(%struct.State* undef, i64 undef, %struct.Memory* %96) #9
  %98 = add i64 %76, -80
  store i64 %98, i64* %11, align 8, !tbaa !1256
  %99 = tail call %struct.Memory* @breakpoint_400e6c(%struct.State* undef, i64 undef, %struct.Memory* %97) #9
  %100 = add i64 %76, -88
  store i64 %100, i64* %10, align 8, !tbaa !1256
  %101 = tail call %struct.Memory* @breakpoint_400e70(%struct.State* undef, i64 undef, %struct.Memory* %99) #9
  %102 = add i64 %79, 1145
  %103 = add i64 %79, 62
  %104 = load i64, i64* %13, align 8, !tbaa !1256
  %105 = add i64 %104, -8
  %106 = inttoptr i64 %105 to i64*
  store i64 %103, i64* %106
  store i64 %105, i64* %13, align 8, !tbaa !1256
  store i64 %102, i64* %0, align 8, !tbaa !1256
  %107 = tail call %struct.Memory* @sub_4012b0_Base64Decode(%struct.State* nonnull %state2, i64 %102, %struct.Memory* %101)
  %108 = tail call %struct.Memory* @breakpoint_400e75(%struct.State* undef, i64 undef, %struct.Memory* %107) #9
  %109 = load i64, i64* %14, align 8
  %110 = add i64 %109, -16
  %111 = load i64, i64* %0, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112
  %114 = tail call %struct.Memory* @breakpoint_400e79(%struct.State* undef, i64 undef, %struct.Memory* %108) #9
  %115 = add i64 %113, 8
  %116 = inttoptr i64 %115 to i64*
  %117 = load i64, i64* %116
  %118 = tail call %struct.Memory* @breakpoint_400e7d(%struct.State* undef, i64 undef, %struct.Memory* %114) #9
  %119 = add i64 %109, -96
  %120 = inttoptr i64 %119 to i64*
  store i64 %117, i64* %120
  %121 = tail call %struct.Memory* @breakpoint_400e81(%struct.State* undef, i64 undef, %struct.Memory* %118) #9
  %122 = add i64 %109, -104
  store i64 %122, i64* %11, align 8, !tbaa !1256
  %123 = tail call %struct.Memory* @breakpoint_400e85(%struct.State* undef, i64 undef, %struct.Memory* %121) #9
  %124 = add i64 %109, -112
  %125 = tail call %struct.Memory* @breakpoint_400e89(%struct.State* undef, i64 undef, %struct.Memory* %123) #9
  %126 = add i64 %109, -200
  %127 = inttoptr i64 %126 to i64*
  store i64 %124, i64* %127
  %128 = tail call %struct.Memory* @breakpoint_400e90(%struct.State* undef, i64 undef, %struct.Memory* %125) #9
  store i64 %117, i64* %12, align 8, !tbaa !1256
  %129 = tail call %struct.Memory* @breakpoint_400e93(%struct.State* undef, i64 undef, %struct.Memory* %128) #9
  %130 = inttoptr i64 %126 to i64*
  %131 = load i64, i64* %130
  store i64 %131, i64* %10, align 8, !tbaa !1256
  %132 = tail call %struct.Memory* @breakpoint_400e9a(%struct.State* undef, i64 undef, %struct.Memory* %129) #9
  %133 = add i64 %109, -204
  %134 = load i32, i32* %5, align 4
  %135 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %135
  %136 = tail call %struct.Memory* @breakpoint_400ea0(%struct.State* undef, i64 undef, %struct.Memory* %132) #9
  %137 = add i64 %111, 1083
  %138 = add i64 %111, 48
  %139 = load i64, i64* %13, align 8, !tbaa !1256
  %140 = add i64 %139, -8
  %141 = inttoptr i64 %140 to i64*
  store i64 %138, i64* %141
  store i64 %140, i64* %13, align 8, !tbaa !1256
  store i64 %137, i64* %0, align 8, !tbaa !1256
  %142 = tail call %struct.Memory* @sub_4012b0_Base64Decode(%struct.State* nonnull %state2, i64 %137, %struct.Memory* %136)
  %143 = tail call %struct.Memory* @breakpoint_400ea5(%struct.State* undef, i64 undef, %struct.Memory* %142) #9
  %144 = load i64, i64* %14, align 8
  %145 = add i64 %144, -64
  %146 = load i64, i64* %0, align 8
  %147 = inttoptr i64 %145 to i64*
  %148 = load i64, i64* %147
  %149 = tail call %struct.Memory* @breakpoint_400ea9(%struct.State* undef, i64 undef, %struct.Memory* %143) #9
  %150 = add i64 %144, -112
  %151 = inttoptr i64 %150 to i64*
  %152 = load i64, i64* %151
  %153 = tail call %struct.Memory* @breakpoint_400ead(%struct.State* undef, i64 undef, %struct.Memory* %149) #9
  %154 = add i64 %148, %152
  %155 = tail call %struct.Memory* @breakpoint_400eb0(%struct.State* undef, i64 undef, %struct.Memory* %153) #9
  %156 = add i64 %144, -88
  %157 = inttoptr i64 %156 to i64*
  %158 = load i64, i64* %157
  %159 = tail call %struct.Memory* @breakpoint_400eb4(%struct.State* undef, i64 undef, %struct.Memory* %155) #9
  %160 = load i64, i64* %13, align 8
  %161 = tail call %struct.Memory* @breakpoint_400eb7(%struct.State* undef, i64 undef, %struct.Memory* %159) #9
  %162 = add i64 %144, -120
  %163 = inttoptr i64 %162 to i64*
  store i64 %160, i64* %163
  %164 = tail call %struct.Memory* @breakpoint_400ebb(%struct.State* undef, i64 undef, %struct.Memory* %161) #9
  %165 = add i64 %158, 16
  %166 = add i64 %165, %154
  %167 = tail call %struct.Memory* @breakpoint_400ec0(%struct.State* undef, i64 undef, %struct.Memory* %164) #9
  %168 = and i64 %166, -16
  %169 = tail call %struct.Memory* @breakpoint_400ec4(%struct.State* undef, i64 undef, %struct.Memory* %167) #9
  %170 = tail call %struct.Memory* @breakpoint_400ec7(%struct.State* undef, i64 undef, %struct.Memory* %169) #9
  %171 = sub i64 %160, %168
  %172 = icmp ult i64 %160, %168
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %26, align 1, !tbaa !1260
  %174 = trunc i64 %171 to i32
  %175 = and i32 %174, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175) #9
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %33, align 1, !tbaa !1271
  %180 = xor i64 %166, %160
  %181 = xor i64 %180, %171
  %182 = lshr i64 %181, 4
  %183 = trunc i64 %182 to i8
  %184 = and i8 %183, 1
  store i8 %184, i8* %38, align 1, !tbaa !1272
  %185 = icmp eq i64 %171, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %41, align 1, !tbaa !1273
  %187 = lshr i64 %171, 63
  %188 = trunc i64 %187 to i8
  store i8 %188, i8* %44, align 1, !tbaa !1274
  %189 = lshr i64 %160, 63
  %190 = lshr i64 %166, 63
  %191 = xor i64 %190, %189
  %192 = xor i64 %187, %189
  %193 = add nuw nsw i64 %192, %191
  %194 = icmp eq i64 %193, 2
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %50, align 1, !tbaa !1275
  %196 = tail call %struct.Memory* @breakpoint_400eca(%struct.State* undef, i64 undef, %struct.Memory* %170) #9
  %197 = tail call %struct.Memory* @breakpoint_400ecd(%struct.State* undef, i64 undef, %struct.Memory* %196) #9
  %198 = load i64, i64* %14, align 8
  %199 = add i64 %198, -56
  %200 = inttoptr i64 %199 to i64*
  %201 = load i64, i64* %200
  %202 = tail call %struct.Memory* @breakpoint_400ed1(%struct.State* undef, i64 undef, %struct.Memory* %197) #9
  %203 = add i64 %198, -64
  %204 = inttoptr i64 %203 to i64*
  %205 = load i64, i64* %204
  %206 = tail call %struct.Memory* @breakpoint_400ed5(%struct.State* undef, i64 undef, %struct.Memory* %202) #9
  %207 = add i64 %198, -216
  %208 = inttoptr i64 %207 to i64*
  store i64 %205, i64* %208
  %209 = tail call %struct.Memory* @breakpoint_400edc(%struct.State* undef, i64 undef, %struct.Memory* %206) #9
  store i64 %171, i64* %12, align 8, !tbaa !1256
  %210 = tail call %struct.Memory* @breakpoint_400edf(%struct.State* undef, i64 undef, %struct.Memory* %209) #9
  %211 = add i64 %198, -224
  %212 = inttoptr i64 %211 to i64*
  store i64 %171, i64* %212
  %213 = tail call %struct.Memory* @breakpoint_400ee6(%struct.State* undef, i64 undef, %struct.Memory* %210) #9
  store i64 %201, i64* %11, align 8, !tbaa !1256
  %214 = tail call %struct.Memory* @breakpoint_400ee9(%struct.State* undef, i64 undef, %struct.Memory* %213) #9
  %215 = inttoptr i64 %207 to i64*
  %216 = load i64, i64* %215
  store i64 %216, i64* %10, align 8, !tbaa !1256
  %217 = tail call %struct.Memory* @breakpoint_400ef0(%struct.State* undef, i64 undef, %struct.Memory* %214) #9
  %218 = add i64 %198, -228
  %219 = load i32, i32* %5, align 4
  %220 = inttoptr i64 %218 to i32*
  store i32 %219, i32* %220
  %221 = tail call %struct.Memory* @breakpoint_400ef6(%struct.State* undef, i64 undef, %struct.Memory* %217) #9
  %222 = add i64 %146, -709
  %223 = add i64 %146, 86
  %224 = add i64 %171, -8
  %225 = inttoptr i64 %224 to i64*
  store i64 %223, i64* %225
  store i64 %224, i64* %13, align 8, !tbaa !1256
  store i64 %222, i64* %0, align 8, !tbaa !1256
  %226 = tail call fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State* nonnull %state2, %struct.Memory* %221) #9
  %227 = tail call %struct.Memory* @breakpoint_400efb(%struct.State* undef, i64 undef, %struct.Memory* %226) #9
  %228 = load i64, i64* %14, align 8
  %229 = add i64 %228, -64
  %230 = load i64, i64* %0, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231
  %233 = tail call %struct.Memory* @breakpoint_400eff(%struct.State* undef, i64 undef, %struct.Memory* %227) #9
  %234 = add i64 %228, -224
  %235 = inttoptr i64 %234 to i64*
  %236 = load i64, i64* %235
  %237 = tail call %struct.Memory* @breakpoint_400f06(%struct.State* undef, i64 undef, %struct.Memory* %233) #9
  %238 = add i64 %232, %236
  %239 = icmp ult i64 %238, %236
  %240 = icmp ult i64 %238, %232
  %241 = or i1 %239, %240
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %26, align 1, !tbaa !1260
  %243 = trunc i64 %238 to i32
  %244 = and i32 %243, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244) #9
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %33, align 1, !tbaa !1271
  %249 = xor i64 %232, %236
  %250 = xor i64 %249, %238
  %251 = lshr i64 %250, 4
  %252 = trunc i64 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %38, align 1, !tbaa !1272
  %254 = icmp eq i64 %238, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %41, align 1, !tbaa !1273
  %256 = lshr i64 %238, 63
  %257 = trunc i64 %256 to i8
  store i8 %257, i8* %44, align 1, !tbaa !1274
  %258 = lshr i64 %236, 63
  %259 = lshr i64 %232, 63
  %260 = xor i64 %256, %258
  %261 = xor i64 %256, %259
  %262 = add nuw nsw i64 %260, %261
  %263 = icmp eq i64 %262, 2
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %50, align 1, !tbaa !1275
  %265 = tail call %struct.Memory* @breakpoint_400f09(%struct.State* undef, i64 undef, %struct.Memory* %237) #9
  %266 = add i64 %228, -104
  %267 = inttoptr i64 %266 to i64*
  %268 = load i64, i64* %267
  %269 = tail call %struct.Memory* @breakpoint_400f0d(%struct.State* undef, i64 undef, %struct.Memory* %265) #9
  %270 = add i64 %228, -112
  %271 = inttoptr i64 %270 to i64*
  %272 = load i64, i64* %271
  %273 = tail call %struct.Memory* @breakpoint_400f11(%struct.State* undef, i64 undef, %struct.Memory* %269) #9
  %274 = add i64 %228, -240
  %275 = inttoptr i64 %274 to i64*
  store i64 %272, i64* %275
  %276 = tail call %struct.Memory* @breakpoint_400f18(%struct.State* undef, i64 undef, %struct.Memory* %273) #9
  store i64 %238, i64* %12, align 8, !tbaa !1256
  %277 = tail call %struct.Memory* @breakpoint_400f1b(%struct.State* undef, i64 undef, %struct.Memory* %276) #9
  store i64 %268, i64* %11, align 8, !tbaa !1256
  %278 = tail call %struct.Memory* @breakpoint_400f1e(%struct.State* undef, i64 undef, %struct.Memory* %277) #9
  %279 = inttoptr i64 %274 to i64*
  %280 = load i64, i64* %279
  store i64 %280, i64* %10, align 8, !tbaa !1256
  %281 = tail call %struct.Memory* @breakpoint_400f25(%struct.State* undef, i64 undef, %struct.Memory* %278) #9
  %282 = add i64 %230, -795
  %283 = add i64 %230, 47
  %284 = load i64, i64* %13, align 8, !tbaa !1256
  %285 = add i64 %284, -8
  %286 = inttoptr i64 %285 to i64*
  store i64 %283, i64* %286
  store i64 %285, i64* %13, align 8, !tbaa !1256
  store i64 %282, i64* %0, align 8, !tbaa !1256
  %287 = tail call fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State* nonnull %state2, %struct.Memory* %281) #9
  %288 = tail call %struct.Memory* @breakpoint_400f2a(%struct.State* undef, i64 undef, %struct.Memory* %287) #9
  %289 = load i64, i64* %14, align 8
  %290 = add i64 %289, -64
  %291 = load i64, i64* %0, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292
  %294 = tail call %struct.Memory* @breakpoint_400f2e(%struct.State* undef, i64 undef, %struct.Memory* %288) #9
  %295 = add i64 %289, -224
  %296 = inttoptr i64 %295 to i64*
  %297 = load i64, i64* %296
  %298 = tail call %struct.Memory* @breakpoint_400f35(%struct.State* undef, i64 undef, %struct.Memory* %294) #9
  %299 = add i64 %293, %297
  %300 = tail call %struct.Memory* @breakpoint_400f38(%struct.State* undef, i64 undef, %struct.Memory* %298) #9
  %301 = add i64 %289, -112
  %302 = inttoptr i64 %301 to i64*
  %303 = load i64, i64* %302
  %304 = tail call %struct.Memory* @breakpoint_400f3c(%struct.State* undef, i64 undef, %struct.Memory* %300) #9
  %305 = add i64 %299, %303
  %306 = icmp ult i64 %305, %299
  %307 = icmp ult i64 %305, %303
  %308 = or i1 %306, %307
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %26, align 1, !tbaa !1260
  %310 = tail call %struct.Memory* @breakpoint_400f3f(%struct.State* undef, i64 undef, %struct.Memory* %304) #9
  %311 = add i64 %289, -80
  %312 = inttoptr i64 %311 to i64*
  %313 = load i64, i64* %312
  %314 = tail call %struct.Memory* @breakpoint_400f43(%struct.State* undef, i64 undef, %struct.Memory* %310) #9
  %315 = add i64 %289, -88
  %316 = inttoptr i64 %315 to i64*
  %317 = load i64, i64* %316
  %318 = tail call %struct.Memory* @breakpoint_400f47(%struct.State* undef, i64 undef, %struct.Memory* %314) #9
  %319 = add i64 %317, 1
  %320 = trunc i64 %319 to i32
  %321 = and i32 %320, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321) #9
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %33, align 1, !tbaa !1271
  %326 = xor i64 %319, %317
  %327 = lshr i64 %326, 4
  %328 = trunc i64 %327 to i8
  %329 = and i8 %328, 1
  store i8 %329, i8* %38, align 1, !tbaa !1272
  %330 = icmp eq i64 %319, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %41, align 1, !tbaa !1273
  %332 = lshr i64 %319, 63
  %333 = trunc i64 %332 to i8
  store i8 %333, i8* %44, align 1, !tbaa !1274
  %334 = lshr i64 %317, 63
  %335 = xor i64 %332, %334
  %336 = add nuw nsw i64 %335, %332
  %337 = icmp eq i64 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %50, align 1, !tbaa !1275
  %339 = tail call %struct.Memory* @breakpoint_400f4a(%struct.State* undef, i64 undef, %struct.Memory* %318) #9
  %340 = load i64, i64* %14, align 8
  %341 = add i64 %340, -248
  %342 = inttoptr i64 %341 to i64*
  store i64 %319, i64* %342
  %343 = tail call %struct.Memory* @breakpoint_400f51(%struct.State* undef, i64 undef, %struct.Memory* %339) #9
  store i64 %305, i64* %12, align 8, !tbaa !1256
  %344 = tail call %struct.Memory* @breakpoint_400f54(%struct.State* undef, i64 undef, %struct.Memory* %343) #9
  store i64 %313, i64* %11, align 8, !tbaa !1256
  %345 = tail call %struct.Memory* @breakpoint_400f57(%struct.State* undef, i64 undef, %struct.Memory* %344) #9
  %346 = inttoptr i64 %341 to i64*
  %347 = load i64, i64* %346
  store i64 %347, i64* %10, align 8, !tbaa !1256
  %348 = tail call %struct.Memory* @breakpoint_400f5e(%struct.State* undef, i64 undef, %struct.Memory* %345) #9
  %349 = add i64 %291, -842
  %350 = add i64 %291, 57
  %351 = load i64, i64* %13, align 8, !tbaa !1256
  %352 = add i64 %351, -8
  %353 = inttoptr i64 %352 to i64*
  store i64 %350, i64* %353
  store i64 %352, i64* %13, align 8, !tbaa !1256
  store i64 %349, i64* %0, align 8, !tbaa !1256
  %354 = tail call fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State* nonnull %state2, %struct.Memory* %348) #9
  %355 = tail call %struct.Memory* @breakpoint_400f63(%struct.State* undef, i64 undef, %struct.Memory* %354) #9
  %356 = load i64, i64* %14, align 8
  %357 = add i64 %356, -224
  %358 = load i64, i64* %0, align 8
  %359 = inttoptr i64 %357 to i64*
  %360 = load i64, i64* %359
  %361 = tail call %struct.Memory* @breakpoint_400f6a(%struct.State* undef, i64 undef, %struct.Memory* %355) #9
  %362 = add i64 %356, -128
  %363 = inttoptr i64 %362 to i64*
  store i64 %360, i64* %363
  %364 = tail call %struct.Memory* @breakpoint_400f6e(%struct.State* undef, i64 undef, %struct.Memory* %361) #9
  %365 = add i64 %356, -64
  %366 = inttoptr i64 %365 to i64*
  %367 = load i64, i64* %366
  %368 = tail call %struct.Memory* @breakpoint_400f72(%struct.State* undef, i64 undef, %struct.Memory* %364) #9
  %369 = add i64 %356, -112
  %370 = inttoptr i64 %369 to i64*
  %371 = load i64, i64* %370
  %372 = tail call %struct.Memory* @breakpoint_400f76(%struct.State* undef, i64 undef, %struct.Memory* %368) #9
  %373 = add i64 %367, %371
  %374 = tail call %struct.Memory* @breakpoint_400f79(%struct.State* undef, i64 undef, %struct.Memory* %372) #9
  %375 = add i64 %356, -88
  %376 = inttoptr i64 %375 to i64*
  %377 = load i64, i64* %376
  %378 = tail call %struct.Memory* @breakpoint_400f7d(%struct.State* undef, i64 undef, %struct.Memory* %374) #9
  %379 = add i64 %377, 1
  %380 = add i64 %379, %373
  %381 = tail call %struct.Memory* @breakpoint_400f82(%struct.State* undef, i64 undef, %struct.Memory* %378) #9
  %382 = add i64 %356, -136
  %383 = inttoptr i64 %382 to i64*
  store i64 %380, i64* %383
  %384 = tail call %struct.Memory* @breakpoint_400f89(%struct.State* undef, i64 undef, %struct.Memory* %381) #9
  %385 = add i64 %377, 16
  %386 = add i64 %385, %373
  %387 = tail call %struct.Memory* @breakpoint_400f8e(%struct.State* undef, i64 undef, %struct.Memory* %384) #9
  %388 = and i64 %386, -16
  %389 = tail call %struct.Memory* @breakpoint_400f92(%struct.State* undef, i64 undef, %struct.Memory* %387) #9
  %390 = load i64, i64* %13, align 8
  %391 = tail call %struct.Memory* @breakpoint_400f95(%struct.State* undef, i64 undef, %struct.Memory* %389) #9
  %392 = sub i64 %390, %388
  %393 = icmp ult i64 %390, %388
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %26, align 1, !tbaa !1260
  %395 = trunc i64 %392 to i32
  %396 = and i32 %395, 255
  %397 = tail call i32 @llvm.ctpop.i32(i32 %396) #9
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  store i8 %400, i8* %33, align 1, !tbaa !1271
  %401 = xor i64 %386, %390
  %402 = xor i64 %401, %392
  %403 = lshr i64 %402, 4
  %404 = trunc i64 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %38, align 1, !tbaa !1272
  %406 = icmp eq i64 %392, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %41, align 1, !tbaa !1273
  %408 = lshr i64 %392, 63
  %409 = trunc i64 %408 to i8
  store i8 %409, i8* %44, align 1, !tbaa !1274
  %410 = lshr i64 %390, 63
  %411 = lshr i64 %386, 63
  %412 = xor i64 %411, %410
  %413 = xor i64 %408, %410
  %414 = add nuw nsw i64 %413, %412
  %415 = icmp eq i64 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %50, align 1, !tbaa !1275
  %417 = tail call %struct.Memory* @breakpoint_400f98(%struct.State* undef, i64 undef, %struct.Memory* %391) #9
  %418 = tail call %struct.Memory* @breakpoint_400f9b(%struct.State* undef, i64 undef, %struct.Memory* %417) #9
  %419 = load i64, i64* %14, align 8
  %420 = add i64 %419, -128
  %421 = inttoptr i64 %420 to i64*
  %422 = load i64, i64* %421
  store i64 %422, i64* %12, align 8, !tbaa !1256
  %423 = tail call %struct.Memory* @breakpoint_400f9f(%struct.State* undef, i64 undef, %struct.Memory* %418) #9
  %424 = add i64 %419, -136
  %425 = inttoptr i64 %424 to i32*
  %426 = load i32, i32* %425
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %8, align 8, !tbaa !1256
  %428 = tail call %struct.Memory* @breakpoint_400fa5(%struct.State* undef, i64 undef, %struct.Memory* %423) #9
  %429 = add i64 %419, -24
  %430 = inttoptr i64 %429 to i64*
  %431 = load i64, i64* %430
  store i64 %431, i64* %10, align 8, !tbaa !1256
  %432 = tail call %struct.Memory* @breakpoint_400fa9(%struct.State* undef, i64 undef, %struct.Memory* %428) #9
  %433 = add i64 %419, -32
  %434 = inttoptr i64 %433 to i64*
  %435 = load i64, i64* %434
  store i64 %435, i64* %9, align 8, !tbaa !1256
  %436 = tail call %struct.Memory* @breakpoint_400fad(%struct.State* undef, i64 undef, %struct.Memory* %432) #9
  %437 = add i64 %419, -256
  %438 = inttoptr i64 %437 to i64*
  store i64 %392, i64* %438
  %439 = tail call %struct.Memory* @breakpoint_400fb4(%struct.State* undef, i64 undef, %struct.Memory* %436) #9
  store i64 %427, i64* %11, align 8, !tbaa !1256
  %440 = tail call %struct.Memory* @breakpoint_400fb6(%struct.State* undef, i64 undef, %struct.Memory* %439) #9
  %441 = inttoptr i64 %437 to i64*
  %442 = load i64, i64* %441
  store i64 %442, i64* %15, align 8, !tbaa !1256
  %443 = tail call %struct.Memory* @breakpoint_400fbd(%struct.State* undef, i64 undef, %struct.Memory* %440) #9
  %444 = add i64 %358, -611
  %445 = add i64 %358, 95
  %446 = add i64 %392, -8
  %447 = inttoptr i64 %446 to i64*
  store i64 %445, i64* %447
  store i64 %446, i64* %13, align 8, !tbaa !1256
  store i64 %444, i64* %0, align 8, !tbaa !1256
  %448 = tail call %struct.Memory* @sub_400d00_encrypt(%struct.State* nonnull %state2, i64 %444, %struct.Memory* %443)
  %449 = tail call %struct.Memory* @breakpoint_400fc2(%struct.State* undef, i64 undef, %struct.Memory* %448) #9
  %450 = load i64, i64* %14, align 8
  %451 = add i64 %450, -140
  %452 = load i32, i32* %5, align 4
  %453 = load i64, i64* %0, align 8
  %454 = inttoptr i64 %451 to i32*
  store i32 %452, i32* %454
  %455 = tail call %struct.Memory* @breakpoint_400fc8(%struct.State* undef, i64 undef, %struct.Memory* %449) #9
  %456 = add i64 %450, -256
  %457 = inttoptr i64 %456 to i64*
  %458 = load i64, i64* %457
  store i64 %458, i64* %9, align 8, !tbaa !1256
  %459 = tail call %struct.Memory* @breakpoint_400fcf(%struct.State* undef, i64 undef, %struct.Memory* %455) #9
  %460 = add i64 %450, -160
  %461 = inttoptr i64 %460 to i64*
  store i64 %458, i64* %461
  %462 = tail call %struct.Memory* @breakpoint_400fd6(%struct.State* undef, i64 undef, %struct.Memory* %459) #9
  %463 = inttoptr i64 %451 to i32*
  %464 = load i32, i32* %463
  %465 = sext i32 %464 to i64
  store i64 %465, i64* %11, align 8, !tbaa !1256
  %466 = tail call %struct.Memory* @breakpoint_400fdd(%struct.State* undef, i64 undef, %struct.Memory* %462) #9
  %467 = add i64 %450, -152
  store i64 %467, i64* %10, align 8, !tbaa !1256
  %468 = tail call %struct.Memory* @breakpoint_400fe4(%struct.State* undef, i64 undef, %struct.Memory* %466) #9
  store i64 %458, i64* %12, align 8, !tbaa !1256
  %469 = tail call %struct.Memory* @breakpoint_400fe7(%struct.State* undef, i64 undef, %struct.Memory* %468) #9
  %470 = add i64 %453, 350
  %471 = add i64 %453, 42
  %472 = load i64, i64* %13, align 8, !tbaa !1256
  %473 = add i64 %472, -8
  %474 = inttoptr i64 %473 to i64*
  store i64 %471, i64* %474
  store i64 %473, i64* %13, align 8, !tbaa !1256
  store i64 %470, i64* %0, align 8, !tbaa !1256
  %475 = tail call %struct.Memory* @sub_401120_Base64Encode(%struct.State* nonnull %state2, i64 %470, %struct.Memory* %469)
  %476 = tail call %struct.Memory* @breakpoint_400fec(%struct.State* undef, i64 undef, %struct.Memory* %475) #9
  %477 = load i64, i64* %14, align 8
  %478 = add i64 %477, -32
  %479 = load i64, i64* %0, align 8
  %480 = inttoptr i64 %478 to i64*
  %481 = load i64, i64* %480
  store i64 %481, i64* %9, align 8, !tbaa !1256
  %482 = tail call %struct.Memory* @breakpoint_400ff0(%struct.State* undef, i64 undef, %struct.Memory* %476) #9
  %483 = add i64 %477, -176
  %484 = inttoptr i64 %483 to i64*
  store i64 %481, i64* %484
  %485 = tail call %struct.Memory* @breakpoint_400ff7(%struct.State* undef, i64 undef, %struct.Memory* %482) #9
  %486 = add i64 %477, -40
  %487 = inttoptr i64 %486 to i64*
  %488 = load i64, i64* %487
  store i64 %488, i64* %11, align 8, !tbaa !1256
  %489 = tail call %struct.Memory* @breakpoint_400ffb(%struct.State* undef, i64 undef, %struct.Memory* %485) #9
  %490 = add i64 %477, -168
  store i64 %490, i64* %10, align 8, !tbaa !1256
  %491 = tail call %struct.Memory* @breakpoint_401002(%struct.State* undef, i64 undef, %struct.Memory* %489) #9
  store i64 %481, i64* %12, align 8, !tbaa !1256
  %492 = tail call %struct.Memory* @breakpoint_401005(%struct.State* undef, i64 undef, %struct.Memory* %491) #9
  %493 = add i64 %477, -260
  %494 = load i32, i32* %5, align 4
  %495 = inttoptr i64 %493 to i32*
  store i32 %494, i32* %495
  %496 = tail call %struct.Memory* @breakpoint_40100b(%struct.State* undef, i64 undef, %struct.Memory* %492) #9
  %497 = add i64 %479, 308
  %498 = add i64 %479, 36
  %499 = load i64, i64* %13, align 8, !tbaa !1256
  %500 = add i64 %499, -8
  %501 = inttoptr i64 %500 to i64*
  store i64 %498, i64* %501
  store i64 %500, i64* %13, align 8, !tbaa !1256
  store i64 %497, i64* %0, align 8, !tbaa !1256
  %502 = tail call %struct.Memory* @sub_401120_Base64Encode(%struct.State* nonnull %state2, i64 %497, %struct.Memory* %496)
  %503 = tail call %struct.Memory* @breakpoint_401010(%struct.State* undef, i64 undef, %struct.Memory* %502) #9
  %504 = load i64, i64* %14, align 8
  %505 = add i64 %504, -152
  %506 = load i64, i64* %0, align 8
  %507 = inttoptr i64 %505 to i64*
  %508 = load i64, i64* %507
  store i64 %508, i64* %12, align 8, !tbaa !1256
  %509 = tail call %struct.Memory* @breakpoint_401017(%struct.State* undef, i64 undef, %struct.Memory* %503) #9
  %510 = add i64 %504, -264
  %511 = load i32, i32* %5, align 4
  %512 = inttoptr i64 %510 to i32*
  store i32 %511, i32* %512
  %513 = tail call %struct.Memory* @breakpoint_40101d(%struct.State* undef, i64 undef, %struct.Memory* %509) #9
  %514 = add i64 %506, -1248
  %515 = add i64 %506, 18
  %516 = load i64, i64* %13, align 8, !tbaa !1256
  %517 = add i64 %516, -8
  %518 = inttoptr i64 %517 to i64*
  store i64 %515, i64* %518
  store i64 %517, i64* %13, align 8, !tbaa !1256
  store i64 %514, i64* %0, align 8, !tbaa !1256
  %519 = tail call fastcc %struct.Memory* @ext_400b30_strlen(%struct.State* nonnull %state2, %struct.Memory* %513) #9
  %520 = tail call %struct.Memory* @breakpoint_401022(%struct.State* undef, i64 undef, %struct.Memory* %519) #9
  %521 = load i64, i64* %14, align 8
  %522 = add i64 %521, -184
  %523 = load i64, i64* %8, align 8
  %524 = load i64, i64* %0, align 8
  %525 = inttoptr i64 %522 to i64*
  store i64 %523, i64* %525
  %526 = tail call %struct.Memory* @breakpoint_401029(%struct.State* undef, i64 undef, %struct.Memory* %520) #9
  %527 = add i64 %521, -40
  %528 = inttoptr i64 %527 to i64*
  store i64 24, i64* %528
  %529 = tail call %struct.Memory* @breakpoint_401031(%struct.State* undef, i64 undef, %struct.Memory* %526) #9
  %530 = inttoptr i64 %522 to i64*
  %531 = load i64, i64* %530
  %532 = tail call %struct.Memory* @breakpoint_401038(%struct.State* undef, i64 undef, %struct.Memory* %529) #9
  %533 = add i64 %531, 41
  %534 = tail call %struct.Memory* @breakpoint_40103c(%struct.State* undef, i64 undef, %struct.Memory* %532) #9
  %535 = and i64 %533, -16
  store i64 %535, i64* %8, align 8, !tbaa !1256
  %536 = tail call %struct.Memory* @breakpoint_401040(%struct.State* undef, i64 undef, %struct.Memory* %534) #9
  %537 = load i64, i64* %13, align 8
  %538 = tail call %struct.Memory* @breakpoint_401043(%struct.State* undef, i64 undef, %struct.Memory* %536) #9
  %539 = sub i64 %537, %535
  store i64 %539, i64* %9, align 8, !tbaa !1256
  %540 = icmp ult i64 %537, %535
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %26, align 1, !tbaa !1260
  %542 = trunc i64 %539 to i32
  %543 = and i32 %542, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543) #9
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %33, align 1, !tbaa !1271
  %548 = xor i64 %533, %537
  %549 = xor i64 %548, %539
  %550 = lshr i64 %549, 4
  %551 = trunc i64 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %38, align 1, !tbaa !1272
  %553 = icmp eq i64 %539, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %41, align 1, !tbaa !1273
  %555 = lshr i64 %539, 63
  %556 = trunc i64 %555 to i8
  store i8 %556, i8* %44, align 1, !tbaa !1274
  %557 = lshr i64 %537, 63
  %558 = lshr i64 %533, 63
  %559 = xor i64 %558, %557
  %560 = xor i64 %555, %557
  %561 = add nuw nsw i64 %560, %559
  %562 = icmp eq i64 %561, 2
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %50, align 1, !tbaa !1275
  %564 = tail call %struct.Memory* @breakpoint_401046(%struct.State* undef, i64 undef, %struct.Memory* %538) #9
  %565 = tail call %struct.Memory* @breakpoint_401049(%struct.State* undef, i64 undef, %struct.Memory* %564) #9
  %566 = load i64, i64* %14, align 8
  %567 = add i64 %566, -168
  %568 = inttoptr i64 %567 to i64*
  %569 = load i64, i64* %568
  store i64 %569, i64* %11, align 8, !tbaa !1256
  %570 = tail call %struct.Memory* @breakpoint_401050(%struct.State* undef, i64 undef, %struct.Memory* %565) #9
  %571 = add i64 %566, -40
  %572 = inttoptr i64 %571 to i64*
  %573 = load i64, i64* %572
  store i64 %573, i64* %10, align 8, !tbaa !1256
  %574 = tail call %struct.Memory* @breakpoint_401054(%struct.State* undef, i64 undef, %struct.Memory* %570) #9
  store i64 %539, i64* %12, align 8, !tbaa !1256
  %575 = tail call %struct.Memory* @breakpoint_401057(%struct.State* undef, i64 undef, %struct.Memory* %574) #9
  %576 = add i64 %566, -272
  %577 = inttoptr i64 %576 to i64*
  store i64 %539, i64* %577
  %578 = tail call %struct.Memory* @breakpoint_40105e(%struct.State* undef, i64 undef, %struct.Memory* %575) #9
  %579 = add i64 %524, -1090
  %580 = add i64 %524, 65
  %581 = add i64 %539, -8
  %582 = inttoptr i64 %581 to i64*
  store i64 %580, i64* %582
  store i64 %581, i64* %13, align 8, !tbaa !1256
  store i64 %579, i64* %0, align 8, !tbaa !1256
  %583 = tail call fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State* nonnull %state2, %struct.Memory* %578) #9
  %584 = tail call %struct.Memory* @breakpoint_401063(%struct.State* undef, i64 undef, %struct.Memory* %583) #9
  %585 = load i64, i64* %14, align 8
  %586 = add i64 %585, -40
  %587 = load i64, i64* %0, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588
  %590 = tail call %struct.Memory* @breakpoint_401067(%struct.State* undef, i64 undef, %struct.Memory* %584) #9
  %591 = add i64 %585, -48
  %592 = inttoptr i64 %591 to i64*
  %593 = load i64, i64* %592
  %594 = tail call %struct.Memory* @breakpoint_40106b(%struct.State* undef, i64 undef, %struct.Memory* %590) #9
  %595 = inttoptr i64 %593 to i8*
  %596 = load i8, i8* %595
  store i8 %596, i8* %4, align 1, !tbaa !1276
  %597 = tail call %struct.Memory* @breakpoint_40106e(%struct.State* undef, i64 undef, %struct.Memory* %594) #9
  %598 = add i64 %585, -272
  %599 = inttoptr i64 %598 to i64*
  %600 = load i64, i64* %599
  %601 = tail call %struct.Memory* @breakpoint_401075(%struct.State* undef, i64 undef, %struct.Memory* %597) #9
  %602 = add i64 %589, %600
  %603 = inttoptr i64 %602 to i8*
  store i8 %596, i8* %603
  %604 = tail call %struct.Memory* @breakpoint_401079(%struct.State* undef, i64 undef, %struct.Memory* %601) #9
  %605 = inttoptr i64 %586 to i64*
  %606 = load i64, i64* %605
  %607 = add i64 %606, %600
  %608 = tail call %struct.Memory* @breakpoint_40107d(%struct.State* undef, i64 undef, %struct.Memory* %604) #9
  %609 = add i64 %607, 1
  store i64 %609, i64* %9, align 8, !tbaa !1256
  %610 = tail call %struct.Memory* @breakpoint_401081(%struct.State* undef, i64 undef, %struct.Memory* %608) #9
  %611 = load i64, i64* %14, align 8
  %612 = add i64 %611, -152
  %613 = inttoptr i64 %612 to i64*
  %614 = load i64, i64* %613
  store i64 %614, i64* %11, align 8, !tbaa !1256
  %615 = tail call %struct.Memory* @breakpoint_401088(%struct.State* undef, i64 undef, %struct.Memory* %610) #9
  %616 = add i64 %611, -184
  %617 = inttoptr i64 %616 to i64*
  %618 = load i64, i64* %617
  %619 = tail call %struct.Memory* @breakpoint_40108f(%struct.State* undef, i64 undef, %struct.Memory* %615) #9
  %620 = add i64 %618, 1
  store i64 %620, i64* %8, align 8, !tbaa !1256
  %621 = icmp eq i64 %618, -1
  %622 = icmp eq i64 %620, 0
  %623 = or i1 %621, %622
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %26, align 1, !tbaa !1260
  %625 = trunc i64 %620 to i32
  %626 = and i32 %625, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626) #9
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %33, align 1, !tbaa !1271
  %631 = xor i64 %620, %618
  %632 = lshr i64 %631, 4
  %633 = trunc i64 %632 to i8
  %634 = and i8 %633, 1
  store i8 %634, i8* %38, align 1, !tbaa !1272
  %635 = zext i1 %622 to i8
  store i8 %635, i8* %41, align 1, !tbaa !1273
  %636 = lshr i64 %620, 63
  %637 = trunc i64 %636 to i8
  store i8 %637, i8* %44, align 1, !tbaa !1274
  %638 = lshr i64 %618, 63
  %639 = xor i64 %636, %638
  %640 = add nuw nsw i64 %639, %636
  %641 = icmp eq i64 %640, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %50, align 1, !tbaa !1275
  %643 = tail call %struct.Memory* @breakpoint_401093(%struct.State* undef, i64 undef, %struct.Memory* %619) #9
  store i64 %609, i64* %12, align 8, !tbaa !1256
  %644 = tail call %struct.Memory* @breakpoint_401096(%struct.State* undef, i64 undef, %struct.Memory* %643) #9
  store i64 %620, i64* %10, align 8, !tbaa !1256
  %645 = tail call %struct.Memory* @breakpoint_401099(%struct.State* undef, i64 undef, %struct.Memory* %644) #9
  %646 = add i64 %587, -1155
  %647 = add i64 %587, 59
  %648 = load i64, i64* %13, align 8, !tbaa !1256
  %649 = add i64 %648, -8
  %650 = inttoptr i64 %649 to i64*
  store i64 %647, i64* %650
  store i64 %649, i64* %13, align 8, !tbaa !1256
  store i64 %646, i64* %0, align 8, !tbaa !1256
  %651 = tail call fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State* nonnull %state2, %struct.Memory* %645) #9
  %652 = tail call %struct.Memory* @breakpoint_40109e(%struct.State* undef, i64 undef, %struct.Memory* %651) #9
  %653 = load i64, i64* %14, align 8
  %654 = add i64 %653, -192
  %655 = load i64, i64* %0, align 8
  %656 = inttoptr i64 %654 to i64*
  %657 = load i64, i64* %656
  store i64 %657, i64* %12, align 8, !tbaa !1256
  %658 = tail call %struct.Memory* @breakpoint_4010a5(%struct.State* undef, i64 undef, %struct.Memory* %652) #9
  %659 = add i64 %653, -272
  %660 = inttoptr i64 %659 to i64*
  %661 = load i64, i64* %660
  store i64 %661, i64* %11, align 8, !tbaa !1256
  %662 = tail call %struct.Memory* @breakpoint_4010ac(%struct.State* undef, i64 undef, %struct.Memory* %658) #9
  store i8 0, i8* %2, align 1, !tbaa !1276
  %663 = tail call %struct.Memory* @breakpoint_4010ae(%struct.State* undef, i64 undef, %struct.Memory* %662) #9
  %664 = add i64 %655, -1582
  %665 = add i64 %655, 21
  %666 = load i64, i64* %13, align 8, !tbaa !1256
  %667 = add i64 %666, -8
  %668 = inttoptr i64 %667 to i64*
  store i64 %665, i64* %668
  store i64 %667, i64* %13, align 8, !tbaa !1256
  store i64 %664, i64* %0, align 8, !tbaa !1256
  %669 = tail call fastcc %struct.Memory* @ext_400a70_printf(%struct.State* nonnull %state2, %struct.Memory* %663) #9
  %670 = tail call %struct.Memory* @breakpoint_4010b3(%struct.State* undef, i64 undef, %struct.Memory* %669) #9
  %671 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 289), i64* %12, align 8, !tbaa !1256
  %672 = tail call %struct.Memory* @breakpoint_4010bd(%struct.State* undef, i64 undef, %struct.Memory* %670) #9
  %673 = load i64, i64* %14, align 8
  %674 = add i64 %673, -276
  %675 = load i32, i32* %5, align 4
  %676 = inttoptr i64 %674 to i32*
  store i32 %675, i32* %676
  %677 = tail call %struct.Memory* @breakpoint_4010c3(%struct.State* undef, i64 undef, %struct.Memory* %672) #9
  store i8 0, i8* %2, align 1, !tbaa !1276
  %678 = tail call %struct.Memory* @breakpoint_4010c5(%struct.State* undef, i64 undef, %struct.Memory* %677) #9
  %679 = add i64 %671, -1603
  %680 = add i64 %671, 23
  %681 = load i64, i64* %13, align 8, !tbaa !1256
  %682 = add i64 %681, -8
  %683 = inttoptr i64 %682 to i64*
  store i64 %680, i64* %683
  store i64 %682, i64* %13, align 8, !tbaa !1256
  store i64 %679, i64* %0, align 8, !tbaa !1256
  %684 = tail call fastcc %struct.Memory* @ext_400a70_printf(%struct.State* nonnull %state2, %struct.Memory* %678) #9
  %685 = tail call %struct.Memory* @breakpoint_4010ca(%struct.State* undef, i64 undef, %struct.Memory* %684) #9
  %686 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 291), i64* %12, align 8, !tbaa !1256
  %687 = tail call %struct.Memory* @breakpoint_4010d4(%struct.State* undef, i64 undef, %struct.Memory* %685) #9
  %688 = load i64, i64* %14, align 8
  %689 = add i64 %688, -140
  %690 = inttoptr i64 %689 to i32*
  %691 = load i32, i32* %690
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %11, align 8, !tbaa !1256
  %693 = tail call %struct.Memory* @breakpoint_4010da(%struct.State* undef, i64 undef, %struct.Memory* %687) #9
  %694 = add i64 %688, -280
  %695 = load i32, i32* %5, align 4
  %696 = inttoptr i64 %694 to i32*
  store i32 %695, i32* %696
  %697 = tail call %struct.Memory* @breakpoint_4010e0(%struct.State* undef, i64 undef, %struct.Memory* %693) #9
  store i8 0, i8* %2, align 1, !tbaa !1276
  %698 = tail call %struct.Memory* @breakpoint_4010e2(%struct.State* undef, i64 undef, %struct.Memory* %697) #9
  %699 = add i64 %686, -1626
  %700 = add i64 %686, 29
  %701 = load i64, i64* %13, align 8, !tbaa !1256
  %702 = add i64 %701, -8
  %703 = inttoptr i64 %702 to i64*
  store i64 %700, i64* %703
  store i64 %702, i64* %13, align 8, !tbaa !1256
  store i64 %699, i64* %0, align 8, !tbaa !1256
  %704 = tail call fastcc %struct.Memory* @ext_400a70_printf(%struct.State* nonnull %state2, %struct.Memory* %698) #9
  %705 = tail call %struct.Memory* @breakpoint_4010e7(%struct.State* undef, i64 undef, %struct.Memory* %704) #9
  %706 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 289), i64* %12, align 8, !tbaa !1256
  %707 = tail call %struct.Memory* @breakpoint_4010f1(%struct.State* undef, i64 undef, %struct.Memory* %705) #9
  %708 = load i64, i64* %14, align 8
  %709 = add i64 %708, -284
  %710 = load i32, i32* %5, align 4
  %711 = inttoptr i64 %709 to i32*
  store i32 %710, i32* %711
  %712 = tail call %struct.Memory* @breakpoint_4010f7(%struct.State* undef, i64 undef, %struct.Memory* %707) #9
  store i8 0, i8* %2, align 1, !tbaa !1276
  %713 = tail call %struct.Memory* @breakpoint_4010f9(%struct.State* undef, i64 undef, %struct.Memory* %712) #9
  %714 = add i64 %706, -1655
  %715 = add i64 %706, 23
  %716 = load i64, i64* %13, align 8, !tbaa !1256
  %717 = add i64 %716, -8
  %718 = inttoptr i64 %717 to i64*
  store i64 %715, i64* %718
  store i64 %717, i64* %13, align 8, !tbaa !1256
  store i64 %714, i64* %0, align 8, !tbaa !1256
  %719 = tail call fastcc %struct.Memory* @ext_400a70_printf(%struct.State* nonnull %state2, %struct.Memory* %713) #9
  %720 = tail call %struct.Memory* @breakpoint_4010fe(%struct.State* undef, i64 undef, %struct.Memory* %719) #9
  %721 = load i64, i64* %14, align 8
  %722 = add i64 %721, -4
  %723 = inttoptr i64 %722 to i32*
  store i32 0, i32* %723
  %724 = tail call %struct.Memory* @breakpoint_401105(%struct.State* undef, i64 undef, %struct.Memory* %720) #9
  %725 = add i64 %721, -120
  %726 = inttoptr i64 %725 to i64*
  %727 = load i64, i64* %726
  store i64 %727, i64* %9, align 8, !tbaa !1256
  %728 = tail call %struct.Memory* @breakpoint_401109(%struct.State* undef, i64 undef, %struct.Memory* %724) #9
  %729 = tail call %struct.Memory* @breakpoint_40110c(%struct.State* undef, i64 undef, %struct.Memory* %728) #9
  %730 = inttoptr i64 %722 to i32*
  %731 = load i32, i32* %730
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %11, align 8, !tbaa !1256
  %733 = tail call %struct.Memory* @breakpoint_40110f(%struct.State* undef, i64 undef, %struct.Memory* %729) #9
  %734 = add i64 %721, -288
  %735 = load i32, i32* %5, align 4
  %736 = inttoptr i64 %734 to i32*
  store i32 %735, i32* %736
  %737 = tail call %struct.Memory* @breakpoint_401115(%struct.State* undef, i64 undef, %struct.Memory* %733) #9
  store i64 %732, i64* %8, align 8, !tbaa !1256
  %738 = tail call %struct.Memory* @breakpoint_401117(%struct.State* undef, i64 undef, %struct.Memory* %737) #9
  %739 = tail call %struct.Memory* @breakpoint_40111a(%struct.State* undef, i64 undef, %struct.Memory* %738) #9
  %740 = add i64 %721, 8
  %741 = inttoptr i64 %721 to i64*
  %742 = load i64, i64* %741
  store i64 %742, i64* %14, align 8, !tbaa !1256
  %743 = tail call %struct.Memory* @breakpoint_40111b(%struct.State* undef, i64 undef, %struct.Memory* %739) #9
  %744 = inttoptr i64 %740 to i64*
  %745 = load i64, i64* %744
  store i64 %745, i64* %0, align 8, !tbaa !1256
  %746 = add i64 %721, 16
  store i64 %746, i64* %13, align 8, !tbaa !1256
  ret %struct.Memory* %743
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_401210_calcDecodeLength(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_401210:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = tail call %struct.Memory* @breakpoint_401210(%struct.State* undef, i64 undef, %struct.Memory* %memory1) #9
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %5, align 8, !tbaa !1256
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %8, i64* %11
  %12 = tail call %struct.Memory* @breakpoint_401211(%struct.State* undef, i64 undef, %struct.Memory* %7) #9
  store i64 %10, i64* %6, align 8, !tbaa !1256
  %13 = tail call %struct.Memory* @breakpoint_401214(%struct.State* undef, i64 undef, %struct.Memory* %12) #9
  %14 = add i64 %9, -40
  %15 = icmp ult i64 %10, 32
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !1260
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #9
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !1271
  %25 = xor i64 %10, %14
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !1272
  %30 = icmp eq i64 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !1273
  %33 = lshr i64 %14, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !1274
  %36 = lshr i64 %10, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !1275
  %42 = tail call %struct.Memory* @breakpoint_401218(%struct.State* undef, i64 undef, %struct.Memory* %13) #9
  %43 = add i64 %9, -16
  %44 = load i64, i64* %4, align 8
  %45 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %45
  %46 = tail call %struct.Memory* @breakpoint_40121c(%struct.State* undef, i64 undef, %struct.Memory* %42) #9
  %47 = inttoptr i64 %43 to i64*
  %48 = load i64, i64* %47
  store i64 %48, i64* %4, align 8, !tbaa !1256
  %49 = tail call %struct.Memory* @breakpoint_401220(%struct.State* undef, i64 undef, %struct.Memory* %46) #9
  %50 = add i64 %pc, -1760
  %51 = add i64 %pc, 21
  %52 = add i64 %9, -48
  %53 = inttoptr i64 %52 to i64*
  store i64 %51, i64* %53
  store i64 %52, i64* %5, align 8, !tbaa !1256
  store i64 %50, i64* %0, align 8, !tbaa !1256
  %54 = tail call fastcc %struct.Memory* @ext_400b30_strlen(%struct.State* nonnull %state2, %struct.Memory* %49) #9
  %55 = tail call %struct.Memory* @breakpoint_401225(%struct.State* undef, i64 undef, %struct.Memory* %54) #9
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, -16
  %58 = load i64, i64* %1, align 8
  %59 = load i64, i64* %0, align 8
  %60 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %60
  %61 = tail call %struct.Memory* @breakpoint_401229(%struct.State* undef, i64 undef, %struct.Memory* %55) #9
  %62 = add i64 %56, -24
  %63 = inttoptr i64 %62 to i64*
  store i64 0, i64* %63
  %64 = tail call %struct.Memory* @breakpoint_401231(%struct.State* undef, i64 undef, %struct.Memory* %61) #9
  %65 = inttoptr i64 %57 to i64*
  %66 = load i64, i64* %65
  %67 = tail call %struct.Memory* @breakpoint_401235(%struct.State* undef, i64 undef, %struct.Memory* %64) #9
  %68 = add i64 %66, -1
  store i64 %68, i64* %1, align 8, !tbaa !1256
  %69 = tail call %struct.Memory* @breakpoint_401239(%struct.State* undef, i64 undef, %struct.Memory* %67) #9
  %70 = add i64 %56, -8
  %71 = inttoptr i64 %70 to i64*
  %72 = load i64, i64* %71
  store i64 %72, i64* %4, align 8, !tbaa !1256
  %73 = tail call %struct.Memory* @breakpoint_40123d(%struct.State* undef, i64 undef, %struct.Memory* %69) #9
  %74 = add i64 %68, %72
  %75 = inttoptr i64 %74 to i8*
  %76 = load i8, i8* %75
  %77 = sext i8 %76 to i64
  %78 = and i64 %77, 4294967295
  store i64 %78, i64* %2, align 8, !tbaa !1256
  %79 = tail call %struct.Memory* @breakpoint_401241(%struct.State* undef, i64 undef, %struct.Memory* %73) #9
  %80 = sext i8 %76 to i32
  %81 = add nsw i32 %80, -61
  %82 = icmp ult i8 %76, 61
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %17, align 1, !tbaa !1260
  %84 = and i32 %81, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84) #9
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %24, align 1, !tbaa !1271
  %89 = xor i32 %80, 16
  %90 = xor i32 %89, %81
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %29, align 1, !tbaa !1272
  %94 = icmp eq i32 %81, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %32, align 1, !tbaa !1273
  %96 = lshr i32 %81, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %35, align 1, !tbaa !1274
  %98 = lshr i32 %80, 31
  %99 = xor i32 %96, %98
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %41, align 1, !tbaa !1275
  %103 = tail call %struct.Memory* @breakpoint_401244(%struct.State* undef, i64 undef, %struct.Memory* %79) #9
  %.v = select i1 %94, i64 37, i64 75
  %104 = add i64 %59, %.v
  store i64 %104, i64* %0, align 8, !tbaa !1256
  br i1 %94, label %block_40124a, label %block_401210.block_401270_crit_edge

block_401210.block_401270_crit_edge:              ; preds = %block_401210
  %.pre = load i64, i64* %6, align 8
  br label %block_401270

block_401296:                                     ; preds = %block_401263, %block_401291
  %105 = phi i64 [ %196, %block_401263 ], [ %152, %block_401291 ]
  %.sink = phi %struct.Memory* [ %246, %block_401263 ], [ %150, %block_401291 ]
  %106 = tail call %struct.Memory* @breakpoint_401296(%struct.State* undef, i64 undef, %struct.Memory* %.sink) #9
  %107 = add i64 %105, -16
  %108 = inttoptr i64 %107 to i64*
  %109 = load i64, i64* %108
  %110 = mul i64 %109, 3
  %111 = tail call %struct.Memory* @breakpoint_40129b(%struct.State* undef, i64 undef, %struct.Memory* %106) #9
  %112 = lshr i64 %110, 2
  %113 = tail call %struct.Memory* @breakpoint_40129f(%struct.State* undef, i64 undef, %struct.Memory* %111) #9
  %114 = add i64 %105, -24
  %115 = inttoptr i64 %114 to i64*
  %116 = load i64, i64* %115
  %117 = sub i64 %112, %116
  store i64 %117, i64* %1, align 8, !tbaa !1256
  %118 = tail call %struct.Memory* @breakpoint_4012a3(%struct.State* undef, i64 undef, %struct.Memory* %113) #9
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 32
  %121 = icmp ugt i64 %119, -33
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %17, align 1, !tbaa !1260
  %123 = trunc i64 %120 to i32
  %124 = and i32 %123, 255
  %125 = tail call i32 @llvm.ctpop.i32(i32 %124) #9
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  store i8 %128, i8* %24, align 1, !tbaa !1271
  %129 = xor i64 %120, %119
  %130 = lshr i64 %129, 4
  %131 = trunc i64 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %29, align 1, !tbaa !1272
  %133 = icmp eq i64 %120, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %32, align 1, !tbaa !1273
  %135 = lshr i64 %120, 63
  %136 = trunc i64 %135 to i8
  store i8 %136, i8* %35, align 1, !tbaa !1274
  %137 = lshr i64 %119, 63
  %138 = xor i64 %135, %137
  %139 = add nuw nsw i64 %138, %135
  %140 = icmp eq i64 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %41, align 1, !tbaa !1275
  %142 = tail call %struct.Memory* @breakpoint_4012a7(%struct.State* undef, i64 undef, %struct.Memory* %118) #9
  %143 = add i64 %119, 40
  %144 = inttoptr i64 %120 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %6, align 8, !tbaa !1256
  %146 = tail call %struct.Memory* @breakpoint_4012a8(%struct.State* undef, i64 undef, %struct.Memory* %142) #9
  %147 = inttoptr i64 %143 to i64*
  %148 = load i64, i64* %147
  store i64 %148, i64* %0, align 8, !tbaa !1256
  %149 = add i64 %119, 48
  store i64 %149, i64* %5, align 8, !tbaa !1256
  ret %struct.Memory* %146

block_401291:                                     ; preds = %block_401289, %block_401270
  %MEMORY.1 = phi %struct.Memory* [ %193, %block_401270 ], [ %238, %block_401289 ]
  %150 = tail call %struct.Memory* @breakpoint_401291(%struct.State* undef, i64 undef, %struct.Memory* %MEMORY.1) #9
  br label %block_401296

block_401270:                                     ; preds = %block_40124a, %block_401210.block_401270_crit_edge
  %151 = phi i64 [ %104, %block_401210.block_401270_crit_edge ], [ %237, %block_40124a ]
  %152 = phi i64 [ %.pre, %block_401210.block_401270_crit_edge ], [ %196, %block_40124a ]
  %MEMORY.2 = phi %struct.Memory* [ %103, %block_401210.block_401270_crit_edge ], [ %236, %block_40124a ]
  %153 = tail call %struct.Memory* @breakpoint_401270(%struct.State* undef, i64 undef, %struct.Memory* %MEMORY.2) #9
  %154 = add i64 %152, -16
  %155 = inttoptr i64 %154 to i64*
  %156 = load i64, i64* %155
  %157 = tail call %struct.Memory* @breakpoint_401274(%struct.State* undef, i64 undef, %struct.Memory* %153) #9
  %158 = add i64 %156, -1
  store i64 %158, i64* %1, align 8, !tbaa !1256
  %159 = tail call %struct.Memory* @breakpoint_401278(%struct.State* undef, i64 undef, %struct.Memory* %157) #9
  %160 = add i64 %152, -8
  %161 = inttoptr i64 %160 to i64*
  %162 = load i64, i64* %161
  store i64 %162, i64* %2, align 8, !tbaa !1256
  %163 = tail call %struct.Memory* @breakpoint_40127c(%struct.State* undef, i64 undef, %struct.Memory* %159) #9
  %164 = add i64 %158, %162
  %165 = inttoptr i64 %164 to i8*
  %166 = load i8, i8* %165
  %167 = sext i8 %166 to i64
  %168 = and i64 %167, 4294967295
  store i64 %168, i64* %3, align 8, !tbaa !1256
  %169 = tail call %struct.Memory* @breakpoint_401280(%struct.State* undef, i64 undef, %struct.Memory* %163) #9
  %170 = sext i8 %166 to i32
  %171 = add nsw i32 %170, -61
  %172 = icmp ult i8 %166, 61
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %17, align 1, !tbaa !1260
  %174 = and i32 %171, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174) #9
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %24, align 1, !tbaa !1271
  %179 = xor i32 %170, 16
  %180 = xor i32 %179, %171
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %29, align 1, !tbaa !1272
  %184 = icmp eq i32 %171, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %32, align 1, !tbaa !1273
  %186 = lshr i32 %171, 31
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %35, align 1, !tbaa !1274
  %188 = lshr i32 %170, 31
  %189 = xor i32 %186, %188
  %190 = add nuw nsw i32 %189, %188
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %41, align 1, !tbaa !1275
  %193 = tail call %struct.Memory* @breakpoint_401283(%struct.State* undef, i64 undef, %struct.Memory* %169) #9
  %.v8 = select i1 %184, i64 25, i64 33
  %194 = add i64 %151, %.v8
  store i64 %194, i64* %0, align 8, !tbaa !1256
  br i1 %184, label %block_401289, label %block_401291

block_40124a:                                     ; preds = %block_401210
  %195 = tail call %struct.Memory* @breakpoint_40124a(%struct.State* undef, i64 undef, %struct.Memory* %103) #9
  %196 = load i64, i64* %6, align 8
  %197 = add i64 %196, -16
  %198 = inttoptr i64 %197 to i64*
  %199 = load i64, i64* %198
  %200 = tail call %struct.Memory* @breakpoint_40124e(%struct.State* undef, i64 undef, %struct.Memory* %195) #9
  %201 = add i64 %199, -2
  store i64 %201, i64* %1, align 8, !tbaa !1256
  %202 = tail call %struct.Memory* @breakpoint_401252(%struct.State* undef, i64 undef, %struct.Memory* %200) #9
  %203 = add i64 %196, -8
  %204 = inttoptr i64 %203 to i64*
  %205 = load i64, i64* %204
  store i64 %205, i64* %2, align 8, !tbaa !1256
  %206 = tail call %struct.Memory* @breakpoint_401256(%struct.State* undef, i64 undef, %struct.Memory* %202) #9
  %207 = add i64 %201, %205
  %208 = inttoptr i64 %207 to i8*
  %209 = load i8, i8* %208
  %210 = sext i8 %209 to i64
  %211 = and i64 %210, 4294967295
  store i64 %211, i64* %3, align 8, !tbaa !1256
  %212 = tail call %struct.Memory* @breakpoint_40125a(%struct.State* undef, i64 undef, %struct.Memory* %206) #9
  %213 = sext i8 %209 to i32
  %214 = add nsw i32 %213, -61
  %215 = icmp ult i8 %209, 61
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %17, align 1, !tbaa !1260
  %217 = and i32 %214, 255
  %218 = tail call i32 @llvm.ctpop.i32(i32 %217) #9
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %24, align 1, !tbaa !1271
  %222 = xor i32 %213, 16
  %223 = xor i32 %222, %214
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %29, align 1, !tbaa !1272
  %227 = icmp eq i32 %214, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %32, align 1, !tbaa !1273
  %229 = lshr i32 %214, 31
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %35, align 1, !tbaa !1274
  %231 = lshr i32 %213, 31
  %232 = xor i32 %229, %231
  %233 = add nuw nsw i32 %232, %231
  %234 = icmp eq i32 %233, 2
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %41, align 1, !tbaa !1275
  %236 = tail call %struct.Memory* @breakpoint_40125d(%struct.State* undef, i64 undef, %struct.Memory* %212) #9
  %.v9 = select i1 %227, i64 25, i64 38
  %237 = add i64 %104, %.v9
  store i64 %237, i64* %0, align 8, !tbaa !1256
  br i1 %227, label %block_401263, label %block_401270

block_401289:                                     ; preds = %block_401270
  %238 = tail call %struct.Memory* @breakpoint_401289(%struct.State* undef, i64 undef, %struct.Memory* %193) #9
  %239 = add i64 %152, -24
  %240 = add i64 %194, 8
  store i64 %240, i64* %0, align 8
  %241 = inttoptr i64 %239 to i64*
  store i64 1, i64* %241
  br label %block_401291

block_401263:                                     ; preds = %block_40124a
  %242 = tail call %struct.Memory* @breakpoint_401263(%struct.State* undef, i64 undef, %struct.Memory* %236) #9
  %243 = add i64 %196, -24
  %244 = add i64 %237, 8
  store i64 %244, i64* %0, align 8
  %245 = inttoptr i64 %243 to i64*
  store i64 2, i64* %245
  %246 = tail call %struct.Memory* @breakpoint_40126b(%struct.State* undef, i64 undef, %struct.Memory* %242) #9
  br label %block_401296
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4012b0_Base64Decode(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_4012b0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i32*
  %3 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %10 = tail call %struct.Memory* @breakpoint_4012b0(%struct.State* undef, i64 undef, %struct.Memory* %memory1) #9
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %8, align 8, !tbaa !1256
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14
  %15 = tail call %struct.Memory* @breakpoint_4012b1(%struct.State* undef, i64 undef, %struct.Memory* %10) #9
  store i64 %13, i64* %9, align 8, !tbaa !1256
  %16 = tail call %struct.Memory* @breakpoint_4012b4(%struct.State* undef, i64 undef, %struct.Memory* %15) #9
  %17 = add i64 %12, -72
  %18 = icmp ult i64 %13, 64
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1, !tbaa !1260
  %21 = trunc i64 %17 to i32
  %22 = and i32 %21, 255
  %23 = tail call i32 @llvm.ctpop.i32(i32 %22) #9
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1, !tbaa !1271
  %28 = xor i64 %13, %17
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1, !tbaa !1272
  %33 = icmp eq i64 %17, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1, !tbaa !1273
  %36 = lshr i64 %17, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1, !tbaa !1274
  %39 = lshr i64 %13, 63
  %40 = xor i64 %36, %39
  %41 = add nuw nsw i64 %40, %39
  %42 = icmp eq i64 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1, !tbaa !1275
  %45 = tail call %struct.Memory* @breakpoint_4012b8(%struct.State* undef, i64 undef, %struct.Memory* %16) #9
  %46 = add i64 %12, -16
  %47 = load i64, i64* %7, align 8
  %48 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %48
  %49 = tail call %struct.Memory* @breakpoint_4012bc(%struct.State* undef, i64 undef, %struct.Memory* %45) #9
  %50 = add i64 %12, -24
  %51 = load i64, i64* %6, align 8
  %52 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %52
  %53 = tail call %struct.Memory* @breakpoint_4012c0(%struct.State* undef, i64 undef, %struct.Memory* %49) #9
  %54 = add i64 %12, -32
  %55 = load i64, i64* %5, align 8
  %56 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %56
  %57 = tail call %struct.Memory* @breakpoint_4012c4(%struct.State* undef, i64 undef, %struct.Memory* %53) #9
  %58 = inttoptr i64 %46 to i64*
  %59 = load i64, i64* %58
  store i64 %59, i64* %7, align 8, !tbaa !1256
  %60 = tail call %struct.Memory* @breakpoint_4012c8(%struct.State* undef, i64 undef, %struct.Memory* %57) #9
  %61 = add i64 %pc, -160
  %62 = add i64 %pc, 29
  %63 = add i64 %12, -80
  %64 = inttoptr i64 %63 to i64*
  store i64 %62, i64* %64
  store i64 %63, i64* %8, align 8, !tbaa !1256
  store i64 %61, i64* %0, align 8, !tbaa !1256
  %65 = tail call %struct.Memory* @sub_401210_calcDecodeLength(%struct.State* nonnull %state2, i64 %61, %struct.Memory* %60)
  %66 = tail call %struct.Memory* @breakpoint_4012cd(%struct.State* undef, i64 undef, %struct.Memory* %65) #9
  %67 = load i32, i32* %2, align 4
  %68 = load i64, i64* %0, align 8
  %69 = tail call %struct.Memory* @breakpoint_4012cf(%struct.State* undef, i64 undef, %struct.Memory* %66) #9
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, -44
  %72 = inttoptr i64 %71 to i32*
  store i32 %67, i32* %72
  %73 = tail call %struct.Memory* @breakpoint_4012d2(%struct.State* undef, i64 undef, %struct.Memory* %69) #9
  %74 = inttoptr i64 %71 to i32*
  %75 = load i32, i32* %74
  %76 = tail call %struct.Memory* @breakpoint_4012d5(%struct.State* undef, i64 undef, %struct.Memory* %73) #9
  %77 = add i32 %75, 1
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %4, align 8, !tbaa !1256
  %79 = icmp eq i32 %75, -1
  %80 = icmp eq i32 %77, 0
  %81 = or i1 %79, %80
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %20, align 1, !tbaa !1260
  %83 = and i32 %77, 255
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83) #9
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %27, align 1, !tbaa !1271
  %88 = xor i32 %77, %75
  %89 = lshr i32 %88, 4
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  store i8 %91, i8* %32, align 1, !tbaa !1272
  %92 = zext i1 %80 to i8
  store i8 %92, i8* %35, align 1, !tbaa !1273
  %93 = lshr i32 %77, 31
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %38, align 1, !tbaa !1274
  %95 = lshr i32 %75, 31
  %96 = xor i32 %93, %95
  %97 = add nuw nsw i32 %96, %93
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %44, align 1, !tbaa !1275
  %100 = tail call %struct.Memory* @breakpoint_4012d8(%struct.State* undef, i64 undef, %struct.Memory* %76) #9
  %101 = sext i32 %77 to i64
  store i64 %101, i64* %7, align 8, !tbaa !1256
  %102 = tail call %struct.Memory* @breakpoint_4012db(%struct.State* undef, i64 undef, %struct.Memory* %100) #9
  %103 = add i64 %68, -2077
  %104 = add i64 %68, 19
  %105 = load i64, i64* %8, align 8, !tbaa !1256
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %104, i64* %107
  store i64 %106, i64* %8, align 8, !tbaa !1256
  store i64 %103, i64* %0, align 8, !tbaa !1256
  %108 = tail call fastcc %struct.Memory* @ext_6021f0_malloc(%struct.State* nonnull %state2, %struct.Memory* %102) #9
  %109 = tail call %struct.Memory* @breakpoint_4012e0(%struct.State* undef, i64 undef, %struct.Memory* %108) #9
  %110 = load i64, i64* %0, align 8
  store i64 4294967295, i64* %6, align 8, !tbaa !1256
  %111 = tail call %struct.Memory* @breakpoint_4012e5(%struct.State* undef, i64 undef, %struct.Memory* %109) #9
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %112, -16
  %114 = inttoptr i64 %113 to i64*
  %115 = load i64, i64* %114
  %116 = tail call %struct.Memory* @breakpoint_4012e9(%struct.State* undef, i64 undef, %struct.Memory* %111) #9
  %117 = load i64, i64* %3, align 8
  %118 = inttoptr i64 %115 to i64*
  store i64 %117, i64* %118
  %119 = tail call %struct.Memory* @breakpoint_4012ec(%struct.State* undef, i64 undef, %struct.Memory* %116) #9
  %120 = add i64 %112, -44
  %121 = inttoptr i64 %120 to i32*
  %122 = load i32, i32* %121
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %3, align 8, !tbaa !1256
  %124 = tail call %struct.Memory* @breakpoint_4012f0(%struct.State* undef, i64 undef, %struct.Memory* %119) #9
  %125 = inttoptr i64 %113 to i64*
  %126 = load i64, i64* %125
  %127 = tail call %struct.Memory* @breakpoint_4012f4(%struct.State* undef, i64 undef, %struct.Memory* %124) #9
  %128 = inttoptr i64 %126 to i64*
  %129 = load i64, i64* %128
  store i64 %129, i64* %5, align 8, !tbaa !1256
  %130 = tail call %struct.Memory* @breakpoint_4012f7(%struct.State* undef, i64 undef, %struct.Memory* %127) #9
  %131 = add i64 %123, %129
  %132 = inttoptr i64 %131 to i8*
  store i8 0, i8* %132
  %133 = tail call %struct.Memory* @breakpoint_4012fb(%struct.State* undef, i64 undef, %struct.Memory* %130) #9
  %134 = add i64 %112, -8
  %135 = inttoptr i64 %134 to i64*
  %136 = load i64, i64* %135
  store i64 %136, i64* %7, align 8, !tbaa !1256
  %137 = tail call %struct.Memory* @breakpoint_4012ff(%struct.State* undef, i64 undef, %struct.Memory* %133) #9
  %138 = add i64 %110, -1984
  %139 = add i64 %110, 36
  %140 = load i64, i64* %8, align 8, !tbaa !1256
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142
  store i64 %141, i64* %8, align 8, !tbaa !1256
  store i64 %138, i64* %0, align 8, !tbaa !1256
  %143 = tail call fastcc %struct.Memory* @ext_602228_BIO_new_mem_buf(%struct.State* nonnull %state2, %struct.Memory* %137) #9
  %144 = tail call %struct.Memory* @breakpoint_401304(%struct.State* undef, i64 undef, %struct.Memory* %143) #9
  %145 = load i64, i64* %9, align 8
  %146 = add i64 %145, -32
  %147 = load i64, i64* %3, align 8
  %148 = load i64, i64* %0, align 8
  %149 = inttoptr i64 %146 to i64*
  store i64 %147, i64* %149
  %150 = tail call %struct.Memory* @breakpoint_401308(%struct.State* undef, i64 undef, %struct.Memory* %144) #9
  %151 = add i64 %148, -2036
  %152 = add i64 %148, 9
  %153 = load i64, i64* %8, align 8, !tbaa !1256
  %154 = add i64 %153, -8
  %155 = inttoptr i64 %154 to i64*
  store i64 %152, i64* %155
  store i64 %154, i64* %8, align 8, !tbaa !1256
  store i64 %151, i64* %0, align 8, !tbaa !1256
  %156 = tail call fastcc %struct.Memory* @ext_602220_BIO_f_base64(%struct.State* nonnull %state2, %struct.Memory* %150) #9
  %157 = tail call %struct.Memory* @breakpoint_40130d(%struct.State* undef, i64 undef, %struct.Memory* %156) #9
  %158 = load i64, i64* %3, align 8
  %159 = load i64, i64* %0, align 8
  store i64 %158, i64* %7, align 8, !tbaa !1256
  %160 = tail call %struct.Memory* @breakpoint_401310(%struct.State* undef, i64 undef, %struct.Memory* %157) #9
  %161 = add i64 %159, -1885
  %162 = add i64 %159, 8
  %163 = load i64, i64* %8, align 8, !tbaa !1256
  %164 = add i64 %163, -8
  %165 = inttoptr i64 %164 to i64*
  store i64 %162, i64* %165
  store i64 %164, i64* %8, align 8, !tbaa !1256
  store i64 %161, i64* %0, align 8, !tbaa !1256
  %166 = tail call fastcc %struct.Memory* @ext_602270_BIO_new(%struct.State* nonnull %state2, %struct.Memory* %160) #9
  %167 = tail call %struct.Memory* @breakpoint_401315(%struct.State* undef, i64 undef, %struct.Memory* %166) #9
  %168 = load i64, i64* %9, align 8
  %169 = add i64 %168, -40
  %170 = load i64, i64* %3, align 8
  %171 = load i64, i64* %0, align 8
  %172 = inttoptr i64 %169 to i64*
  store i64 %170, i64* %172
  %173 = tail call %struct.Memory* @breakpoint_401319(%struct.State* undef, i64 undef, %struct.Memory* %167) #9
  %174 = inttoptr i64 %169 to i64*
  %175 = load i64, i64* %174
  store i64 %175, i64* %7, align 8, !tbaa !1256
  %176 = tail call %struct.Memory* @breakpoint_40131d(%struct.State* undef, i64 undef, %struct.Memory* %173) #9
  %177 = add i64 %168, -32
  %178 = inttoptr i64 %177 to i64*
  %179 = load i64, i64* %178
  store i64 %179, i64* %6, align 8, !tbaa !1256
  %180 = tail call %struct.Memory* @breakpoint_401321(%struct.State* undef, i64 undef, %struct.Memory* %176) #9
  %181 = add i64 %171, -2069
  %182 = add i64 %171, 17
  %183 = load i64, i64* %8, align 8, !tbaa !1256
  %184 = add i64 %183, -8
  %185 = inttoptr i64 %184 to i64*
  store i64 %182, i64* %185
  store i64 %184, i64* %8, align 8, !tbaa !1256
  store i64 %181, i64* %0, align 8, !tbaa !1256
  %186 = tail call fastcc %struct.Memory* @ext_400b00_BIO_push(%struct.State* nonnull %state2, %struct.Memory* %180) #9
  %187 = tail call %struct.Memory* @breakpoint_401326(%struct.State* undef, i64 undef, %struct.Memory* %186) #9
  %188 = load i64, i64* %0, align 8
  store i64 256, i64* %6, align 8, !tbaa !1256
  %189 = tail call %struct.Memory* @breakpoint_40132b(%struct.State* undef, i64 undef, %struct.Memory* %187) #9
  %190 = load i64, i64* %9, align 8
  %191 = add i64 %190, -32
  %192 = load i64, i64* %3, align 8
  %193 = inttoptr i64 %191 to i64*
  store i64 %192, i64* %193
  %194 = tail call %struct.Memory* @breakpoint_40132f(%struct.State* undef, i64 undef, %struct.Memory* %189) #9
  %195 = inttoptr i64 %191 to i64*
  %196 = load i64, i64* %195
  store i64 %196, i64* %7, align 8, !tbaa !1256
  %197 = tail call %struct.Memory* @breakpoint_401333(%struct.State* undef, i64 undef, %struct.Memory* %194) #9
  %198 = add i64 %188, -2134
  %199 = add i64 %188, 18
  %200 = load i64, i64* %8, align 8, !tbaa !1256
  %201 = add i64 %200, -8
  %202 = inttoptr i64 %201 to i64*
  store i64 %199, i64* %202
  store i64 %201, i64* %8, align 8, !tbaa !1256
  store i64 %198, i64* %0, align 8, !tbaa !1256
  %203 = tail call fastcc %struct.Memory* @ext_400ad0_BIO_set_flags(%struct.State* nonnull %state2, %struct.Memory* %197) #9
  %204 = tail call %struct.Memory* @breakpoint_401338(%struct.State* undef, i64 undef, %struct.Memory* %203) #9
  %205 = load i64, i64* %9, align 8
  %206 = add i64 %205, -32
  %207 = load i64, i64* %0, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208
  %210 = tail call %struct.Memory* @breakpoint_40133c(%struct.State* undef, i64 undef, %struct.Memory* %204) #9
  %211 = add i64 %205, -16
  %212 = inttoptr i64 %211 to i64*
  %213 = load i64, i64* %212
  %214 = tail call %struct.Memory* @breakpoint_401340(%struct.State* undef, i64 undef, %struct.Memory* %210) #9
  %215 = inttoptr i64 %213 to i64*
  %216 = load i64, i64* %215
  store i64 %216, i64* %6, align 8, !tbaa !1256
  %217 = tail call %struct.Memory* @breakpoint_401343(%struct.State* undef, i64 undef, %struct.Memory* %214) #9
  %218 = add i64 %205, -8
  %219 = inttoptr i64 %218 to i64*
  %220 = load i64, i64* %219
  store i64 %220, i64* %3, align 8, !tbaa !1256
  %221 = tail call %struct.Memory* @breakpoint_401347(%struct.State* undef, i64 undef, %struct.Memory* %217) #9
  %222 = add i64 %205, -56
  %223 = inttoptr i64 %222 to i64*
  store i64 %209, i64* %223
  %224 = tail call %struct.Memory* @breakpoint_40134b(%struct.State* undef, i64 undef, %struct.Memory* %221) #9
  store i64 %220, i64* %7, align 8, !tbaa !1256
  %225 = tail call %struct.Memory* @breakpoint_40134e(%struct.State* undef, i64 undef, %struct.Memory* %224) #9
  %226 = add i64 %205, -64
  %227 = inttoptr i64 %226 to i64*
  store i64 %216, i64* %227
  %228 = tail call %struct.Memory* @breakpoint_401352(%struct.State* undef, i64 undef, %struct.Memory* %225) #9
  %229 = add i64 %207, -2056
  %230 = add i64 %207, 31
  %231 = load i64, i64* %8, align 8, !tbaa !1256
  %232 = add i64 %231, -8
  %233 = inttoptr i64 %232 to i64*
  store i64 %230, i64* %233
  store i64 %232, i64* %8, align 8, !tbaa !1256
  store i64 %229, i64* %0, align 8, !tbaa !1256
  %234 = tail call fastcc %struct.Memory* @ext_400b30_strlen(%struct.State* nonnull %state2, %struct.Memory* %228) #9
  %235 = tail call %struct.Memory* @breakpoint_401357(%struct.State* undef, i64 undef, %struct.Memory* %234) #9
  %236 = load i32, i32* %2, align 4
  %237 = zext i32 %236 to i64
  %238 = load i64, i64* %0, align 8
  store i64 %237, i64* %4, align 8, !tbaa !1256
  %239 = tail call %struct.Memory* @breakpoint_401359(%struct.State* undef, i64 undef, %struct.Memory* %235) #9
  %240 = load i64, i64* %9, align 8
  %241 = add i64 %240, -56
  %242 = inttoptr i64 %241 to i64*
  %243 = load i64, i64* %242
  store i64 %243, i64* %7, align 8, !tbaa !1256
  %244 = tail call %struct.Memory* @breakpoint_40135d(%struct.State* undef, i64 undef, %struct.Memory* %239) #9
  %245 = add i64 %240, -64
  %246 = inttoptr i64 %245 to i64*
  %247 = load i64, i64* %246
  store i64 %247, i64* %6, align 8, !tbaa !1256
  %248 = tail call %struct.Memory* @breakpoint_401361(%struct.State* undef, i64 undef, %struct.Memory* %244) #9
  store i64 %237, i64* %5, align 8, !tbaa !1256
  %249 = tail call %struct.Memory* @breakpoint_401363(%struct.State* undef, i64 undef, %struct.Memory* %248) #9
  %250 = add i64 %238, -1975
  %251 = add i64 %238, 17
  %252 = load i64, i64* %8, align 8, !tbaa !1256
  %253 = add i64 %252, -8
  %254 = inttoptr i64 %253 to i64*
  store i64 %251, i64* %254
  store i64 %253, i64* %8, align 8, !tbaa !1256
  store i64 %250, i64* %0, align 8, !tbaa !1256
  %255 = tail call fastcc %struct.Memory* @ext_602268_BIO_read(%struct.State* nonnull %state2, %struct.Memory* %249) #9
  %256 = tail call %struct.Memory* @breakpoint_401368(%struct.State* undef, i64 undef, %struct.Memory* %255) #9
  %257 = load i32, i32* %2, align 4
  %258 = load i64, i64* %0, align 8
  %259 = sext i32 %257 to i64
  %260 = tail call %struct.Memory* @breakpoint_40136b(%struct.State* undef, i64 undef, %struct.Memory* %256) #9
  %261 = load i64, i64* %9, align 8
  %262 = add i64 %261, -24
  %263 = inttoptr i64 %262 to i64*
  %264 = load i64, i64* %263
  %265 = tail call %struct.Memory* @breakpoint_40136f(%struct.State* undef, i64 undef, %struct.Memory* %260) #9
  %266 = inttoptr i64 %264 to i64*
  store i64 %259, i64* %266
  %267 = tail call %struct.Memory* @breakpoint_401372(%struct.State* undef, i64 undef, %struct.Memory* %265) #9
  %268 = inttoptr i64 %262 to i64*
  %269 = load i64, i64* %268
  %270 = tail call %struct.Memory* @breakpoint_401376(%struct.State* undef, i64 undef, %struct.Memory* %267) #9
  %271 = inttoptr i64 %269 to i64*
  %272 = load i64, i64* %271
  store i64 %272, i64* %6, align 8, !tbaa !1256
  %273 = tail call %struct.Memory* @breakpoint_401379(%struct.State* undef, i64 undef, %struct.Memory* %270) #9
  %274 = add i64 %261, -44
  %275 = inttoptr i64 %274 to i32*
  %276 = load i32, i32* %275
  %277 = sext i32 %276 to i64
  store i64 %277, i64* %7, align 8, !tbaa !1256
  %278 = tail call %struct.Memory* @breakpoint_40137d(%struct.State* undef, i64 undef, %struct.Memory* %273) #9
  %279 = sub i64 %272, %277
  %280 = icmp ult i64 %272, %277
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %20, align 1, !tbaa !1260
  %282 = trunc i64 %279 to i32
  %283 = and i32 %282, 255
  %284 = tail call i32 @llvm.ctpop.i32(i32 %283) #9
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  store i8 %287, i8* %27, align 1, !tbaa !1271
  %288 = xor i64 %272, %277
  %289 = xor i64 %288, %279
  %290 = lshr i64 %289, 4
  %291 = trunc i64 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %32, align 1, !tbaa !1272
  %293 = icmp eq i64 %279, 0
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %35, align 1, !tbaa !1273
  %295 = lshr i64 %279, 63
  %296 = trunc i64 %295 to i8
  store i8 %296, i8* %38, align 1, !tbaa !1274
  %297 = lshr i64 %272, 63
  %298 = lshr i64 %277, 63
  %299 = xor i64 %297, %298
  %300 = xor i64 %295, %297
  %301 = add nuw nsw i64 %300, %299
  %302 = icmp eq i64 %301, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %44, align 1, !tbaa !1275
  %304 = tail call %struct.Memory* @breakpoint_401380(%struct.State* undef, i64 undef, %struct.Memory* %278) #9
  %.v = select i1 %293, i64 30, i64 35
  %305 = add i64 %258, %.v
  store i64 %305, i64* %0, align 8, !tbaa !1256
  br i1 %293, label %block_401386, label %block_40138b

block_401386:                                     ; preds = %block_4012b0
  %306 = tail call %struct.Memory* @breakpoint_401386(%struct.State* undef, i64 undef, %struct.Memory* %304) #9
  %307 = tail call %struct.Memory* @breakpoint_4013b3(%struct.State* undef, i64 undef, %struct.Memory* %306) #9
  %308 = add i64 %261, -32
  %309 = inttoptr i64 %308 to i64*
  %310 = load i64, i64* %309
  store i64 %310, i64* %7, align 8, !tbaa !1256
  %311 = tail call %struct.Memory* @breakpoint_4013b7(%struct.State* undef, i64 undef, %struct.Memory* %307) #9
  %312 = add i64 %305, -2198
  %313 = add i64 %305, 54
  %314 = load i64, i64* %8, align 8, !tbaa !1256
  %315 = add i64 %314, -8
  %316 = inttoptr i64 %315 to i64*
  store i64 %313, i64* %316
  store i64 %315, i64* %8, align 8, !tbaa !1256
  store i64 %312, i64* %0, align 8, !tbaa !1256
  %317 = tail call fastcc %struct.Memory* @ext_400af0_BIO_free_all(%struct.State* nonnull %state2, %struct.Memory* %311) #9
  %318 = tail call %struct.Memory* @breakpoint_4013bc(%struct.State* undef, i64 undef, %struct.Memory* %317) #9
  store i64 0, i64* %3, align 8, !tbaa !1256
  %319 = tail call %struct.Memory* @breakpoint_4013be(%struct.State* undef, i64 undef, %struct.Memory* %318) #9
  %320 = load i64, i64* %8, align 8
  %321 = add i64 %320, 64
  %322 = icmp ugt i64 %320, -65
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %20, align 1, !tbaa !1260
  %324 = trunc i64 %321 to i32
  %325 = and i32 %324, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325) #9
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %27, align 1, !tbaa !1271
  %330 = xor i64 %321, %320
  %331 = lshr i64 %330, 4
  %332 = trunc i64 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %32, align 1, !tbaa !1272
  %334 = icmp eq i64 %321, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %35, align 1, !tbaa !1273
  %336 = lshr i64 %321, 63
  %337 = trunc i64 %336 to i8
  store i8 %337, i8* %38, align 1, !tbaa !1274
  %338 = lshr i64 %320, 63
  %339 = xor i64 %336, %338
  %340 = add nuw nsw i64 %339, %336
  %341 = icmp eq i64 %340, 2
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %44, align 1, !tbaa !1275
  %343 = tail call %struct.Memory* @breakpoint_4013c2(%struct.State* undef, i64 undef, %struct.Memory* %319) #9
  %344 = add i64 %320, 72
  %345 = inttoptr i64 %321 to i64*
  %346 = load i64, i64* %345
  store i64 %346, i64* %9, align 8, !tbaa !1256
  %347 = tail call %struct.Memory* @breakpoint_4013c3(%struct.State* undef, i64 undef, %struct.Memory* %343) #9
  %348 = inttoptr i64 %344 to i64*
  %349 = load i64, i64* %348
  store i64 %349, i64* %0, align 8, !tbaa !1256
  %350 = add i64 %320, 80
  store i64 %350, i64* %8, align 8, !tbaa !1256
  ret %struct.Memory* %347

block_40138b:                                     ; preds = %block_4012b0
  %351 = tail call %struct.Memory* @breakpoint_40138b(%struct.State* undef, i64 undef, %struct.Memory* %304) #9
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 294), i64* %7, align 8, !tbaa !1256
  %352 = tail call %struct.Memory* @breakpoint_401395(%struct.State* undef, i64 undef, %struct.Memory* %351) #9
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 315), i64* %6, align 8, !tbaa !1256
  %353 = tail call %struct.Memory* @breakpoint_40139f(%struct.State* undef, i64 undef, %struct.Memory* %352) #9
  store i64 36, i64* %5, align 8, !tbaa !1256
  %354 = tail call %struct.Memory* @breakpoint_4013a4(%struct.State* undef, i64 undef, %struct.Memory* %353) #9
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 350), i64* %4, align 8, !tbaa !1256
  %355 = tail call %struct.Memory* @breakpoint_4013ae(%struct.State* undef, i64 undef, %struct.Memory* %354) #9
  %356 = add i64 %305, -2299
  %357 = add i64 %305, 40
  %358 = load i64, i64* %8, align 8, !tbaa !1256
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360
  store i64 %359, i64* %8, align 8, !tbaa !1256
  store i64 %356, i64* %0, align 8, !tbaa !1256
  %361 = tail call fastcc %struct.Memory* @ext_6021e0___assert_fail(%struct.State* nonnull %state2, %struct.Memory* %355) #9
  %362 = load i64, i64* %0, align 8
  %363 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %362, %struct.Memory* %361)
  ret %struct.Memory* %363
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400a38__init_proc(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400a38:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = tail call %struct.Memory* @breakpoint_400a38(%struct.State* undef, i64 undef, %struct.Memory* %memory1) #9
  %4 = load i64, i64* %2, align 8
  %5 = add i64 %4, -8
  store i64 %5, i64* %2, align 8, !tbaa !1256
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %11 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  %12 = tail call %struct.Memory* @breakpoint_400a3c(%struct.State* undef, i64 undef, %struct.Memory* %3) #9
  %13 = load i64, i64* getelementptr inbounds (%seg_601ff8__got_type, %seg_601ff8__got_type* @seg_601ff8__got, i32 0, i32 0)
  store i64 %13, i64* %1, align 8, !tbaa !1256
  %14 = tail call %struct.Memory* @breakpoint_400a43(%struct.State* undef, i64 undef, %struct.Memory* %12) #9
  store i8 0, i8* %6, align 1, !tbaa !1260
  %15 = trunc i64 %13 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #9
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  store i8 %20, i8* %7, align 1, !tbaa !1271
  %21 = icmp eq i64 %13, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %9, align 1, !tbaa !1273
  %23 = lshr i64 %13, 63
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %10, align 1, !tbaa !1274
  store i8 0, i8* %11, align 1, !tbaa !1275
  store i8 0, i8* %8, align 1, !tbaa !1272
  %25 = tail call %struct.Memory* @breakpoint_400a46(%struct.State* undef, i64 undef, %struct.Memory* %14) #9
  %.v = select i1 %21, i64 21, i64 16
  %26 = add i64 %.v, %pc
  store i64 %26, i64* %0, align 8, !tbaa !1256
  br i1 %21, label %block_400a4d, label %block_400a48

block_400a48:                                     ; preds = %block_400a38
  %27 = tail call %struct.Memory* @breakpoint_400a48(%struct.State* undef, i64 undef, %struct.Memory* %25) #9
  %28 = add i64 %26, 424
  %29 = add i64 %26, 5
  %30 = add i64 %4, -16
  %31 = inttoptr i64 %30 to i64*
  store i64 %29, i64* %31
  store i64 %30, i64* %2, align 8, !tbaa !1256
  store i64 %28, i64* %0, align 8, !tbaa !1256
  %32 = tail call fastcc %struct.Memory* @sub_400bf0___gmon_start__(%struct.State* nonnull %state2, i64 %28, %struct.Memory* %27)
  %.pre = load i64, i64* %2, align 8
  br label %block_400a4d

block_400a4d:                                     ; preds = %block_400a48, %block_400a38
  %33 = phi i64 [ %5, %block_400a38 ], [ %.pre, %block_400a48 ]
  %MEMORY.0 = phi %struct.Memory* [ %25, %block_400a38 ], [ %32, %block_400a48 ]
  %34 = tail call %struct.Memory* @breakpoint_400a4d(%struct.State* undef, i64 undef, %struct.Memory* %MEMORY.0) #9
  %35 = add i64 %33, 8
  %36 = icmp ugt i64 %33, -9
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %6, align 1, !tbaa !1260
  %38 = trunc i64 %35 to i32
  %39 = and i32 %38, 255
  %40 = tail call i32 @llvm.ctpop.i32(i32 %39) #9
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = xor i8 %42, 1
  store i8 %43, i8* %7, align 1, !tbaa !1271
  %44 = xor i64 %35, %33
  %45 = lshr i64 %44, 4
  %46 = trunc i64 %45 to i8
  %47 = and i8 %46, 1
  store i8 %47, i8* %8, align 1, !tbaa !1272
  %48 = icmp eq i64 %35, 0
  %49 = zext i1 %48 to i8
  store i8 %49, i8* %9, align 1, !tbaa !1273
  %50 = lshr i64 %35, 63
  %51 = trunc i64 %50 to i8
  store i8 %51, i8* %10, align 1, !tbaa !1274
  %52 = lshr i64 %33, 63
  %53 = xor i64 %50, %52
  %54 = add nuw nsw i64 %53, %50
  %55 = icmp eq i64 %54, 2
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %11, align 1, !tbaa !1275
  %57 = tail call %struct.Memory* @breakpoint_400a51(%struct.State* undef, i64 undef, %struct.Memory* %34) #9
  %58 = inttoptr i64 %35 to i64*
  %59 = load i64, i64* %58
  store i64 %59, i64* %0, align 8, !tbaa !1256
  %60 = add i64 %33, 16
  store i64 %60, i64* %2, align 8, !tbaa !1256
  ret %struct.Memory* %57
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400ce0_handleErrors(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400ce0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = tail call %struct.Memory* @breakpoint_400ce0(%struct.State* undef, i64 undef, %struct.Memory* %memory1) #9
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %2, align 8, !tbaa !1256
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %5, i64* %8
  %9 = tail call %struct.Memory* @breakpoint_400ce1(%struct.State* undef, i64 undef, %struct.Memory* %4) #9
  store i64 %7, i64* %3, align 8, !tbaa !1256
  %10 = tail call %struct.Memory* @breakpoint_400ce4(%struct.State* undef, i64 undef, %struct.Memory* %9) #9
  %11 = load i64, i64* @stderr
  store i64 %11, i64* %1, align 8, !tbaa !1256
  %12 = tail call %struct.Memory* @breakpoint_400cec(%struct.State* undef, i64 undef, %struct.Memory* %10) #9
  %13 = add i64 %pc, -368
  %14 = add i64 %pc, 17
  %15 = add i64 %6, -16
  %16 = inttoptr i64 %15 to i64*
  store i64 %14, i64* %16
  store i64 %15, i64* %2, align 8, !tbaa !1256
  store i64 %13, i64* %0, align 8, !tbaa !1256
  %17 = tail call fastcc %struct.Memory* @ext_400b70_ERR_print_errors_fp(%struct.State* nonnull %state2, %struct.Memory* %12) #9
  %18 = tail call %struct.Memory* @breakpoint_400cf1(%struct.State* undef, i64 undef, %struct.Memory* %17) #9
  %19 = load i64, i64* %0, align 8
  %20 = add i64 %19, -625
  %21 = add i64 %19, 5
  %22 = load i64, i64* %2, align 8, !tbaa !1256
  %23 = add i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64 %21, i64* %24
  store i64 %23, i64* %2, align 8, !tbaa !1256
  store i64 %20, i64* %0, align 8, !tbaa !1256
  %25 = tail call fastcc %struct.Memory* @ext_6021d8_abort(%struct.State* nonnull %state2, %struct.Memory* %18) #9
  %26 = tail call %struct.Memory* @breakpoint_400cf6(%struct.State* undef, i64 undef, %struct.Memory* %25) #9
  %27 = load i64, i64* %0, align 8
  %28 = add i64 %27, 10
  store i64 %28, i64* %0, align 8
  %29 = tail call %struct.Memory* @sub_400d00_encrypt(%struct.State* nonnull %state2, i64 %28, %struct.Memory* %26)
  ret %struct.Memory* %29
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400df0_generate_iv(%struct.State* nocapture dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400df0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = tail call %struct.Memory* @breakpoint_400df0(%struct.State* undef, i64 undef, %struct.Memory* %memory1) #9
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %2, align 8, !tbaa !1256
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %5, i64* %8
  %9 = tail call %struct.Memory* @breakpoint_400df1(%struct.State* undef, i64 undef, %struct.Memory* %4) #9
  %10 = tail call %struct.Memory* @breakpoint_400df4(%struct.State* undef, i64 undef, %struct.Memory* %9) #9
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 4), i64* %1, align 8, !tbaa !1256
  %11 = tail call %struct.Memory* @breakpoint_400dfe(%struct.State* undef, i64 undef, %struct.Memory* %10) #9
  %12 = inttoptr i64 %7 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %3, align 8, !tbaa !1256
  %14 = tail call %struct.Memory* @breakpoint_400dff(%struct.State* undef, i64 undef, %struct.Memory* %11) #9
  %15 = inttoptr i64 %6 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %0, align 8, !tbaa !1256
  %17 = add i64 %6, 8
  store i64 %17, i64* %2, align 8, !tbaa !1256
  ret %struct.Memory* %14
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_401444__term_proc(%struct.State* nocapture dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_401444:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %2 = tail call %struct.Memory* @breakpoint_401444(%struct.State* undef, i64 undef, %struct.Memory* %memory1) #9
  %3 = load i64, i64* %1, align 8
  %4 = add i64 %3, -8
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %7 = xor i64 %4, %3
  %8 = lshr i64 %7, 4
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %12 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %13 = lshr i64 %4, 63
  %14 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %15 = lshr i64 %3, 63
  %16 = xor i64 %13, %15
  %17 = add nuw nsw i64 %16, %15
  %18 = icmp eq i64 %17, 2
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  %21 = tail call %struct.Memory* @breakpoint_401448(%struct.State* undef, i64 undef, %struct.Memory* %2) #9
  %22 = icmp ult i64 %3, 8
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %5, align 1, !tbaa !1260
  %24 = trunc i64 %3 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #9
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  store i8 %29, i8* %6, align 1, !tbaa !1271
  store i8 %10, i8* %11, align 1, !tbaa !1272
  %30 = icmp eq i64 %3, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %12, align 1, !tbaa !1273
  %32 = trunc i64 %15 to i8
  store i8 %32, i8* %14, align 1, !tbaa !1274
  store i8 %19, i8* %20, align 1, !tbaa !1275
  %33 = tail call %struct.Memory* @breakpoint_40144c(%struct.State* undef, i64 undef, %struct.Memory* %21) #9
  %34 = inttoptr i64 %3 to i64*
  %35 = load i64, i64* %34
  store i64 %35, i64* %0, align 8, !tbaa !1256
  %36 = add i64 %3, 8
  store i64 %36, i64* %1, align 8, !tbaa !1256
  ret %struct.Memory* %33
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_401120_Base64Encode(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_401120:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i32*
  %3 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 17, i32 0, i32 0
  %11 = tail call %struct.Memory* @breakpoint_401120(%struct.State* undef, i64 undef, %struct.Memory* %memory1) #9
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %8, align 8, !tbaa !1256
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15
  %16 = tail call %struct.Memory* @breakpoint_401121(%struct.State* undef, i64 undef, %struct.Memory* %11) #9
  store i64 %14, i64* %9, align 8, !tbaa !1256
  %17 = tail call %struct.Memory* @breakpoint_401124(%struct.State* undef, i64 undef, %struct.Memory* %16) #9
  %18 = add i64 %13, -104
  %19 = icmp ult i64 %14, 96
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1, !tbaa !1260
  %22 = trunc i64 %18 to i32
  %23 = and i32 %22, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #9
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1, !tbaa !1271
  %29 = xor i64 %14, %18
  %30 = lshr i64 %29, 4
  %31 = trunc i64 %30 to i8
  %32 = and i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %32, i8* %33, align 1, !tbaa !1272
  %34 = icmp eq i64 %18, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1, !tbaa !1273
  %37 = lshr i64 %18, 63
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1, !tbaa !1274
  %40 = lshr i64 %14, 63
  %41 = xor i64 %37, %40
  %42 = add nuw nsw i64 %41, %40
  %43 = icmp eq i64 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1, !tbaa !1275
  %46 = tail call %struct.Memory* @breakpoint_401128(%struct.State* undef, i64 undef, %struct.Memory* %17) #9
  %47 = add i64 %13, -16
  %48 = load i64, i64* %7, align 8
  %49 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %49
  %50 = tail call %struct.Memory* @breakpoint_40112c(%struct.State* undef, i64 undef, %struct.Memory* %46) #9
  %51 = add i64 %13, -24
  %52 = load i64, i64* %6, align 8
  %53 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %53
  %54 = tail call %struct.Memory* @breakpoint_401130(%struct.State* undef, i64 undef, %struct.Memory* %50) #9
  %55 = add i64 %13, -32
  %56 = load i64, i64* %5, align 8
  %57 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %57
  %58 = tail call %struct.Memory* @breakpoint_401134(%struct.State* undef, i64 undef, %struct.Memory* %54) #9
  %59 = add i64 %pc, -1552
  %60 = add i64 %pc, 25
  %61 = add i64 %13, -112
  %62 = inttoptr i64 %61 to i64*
  store i64 %60, i64* %62
  store i64 %61, i64* %8, align 8, !tbaa !1256
  store i64 %59, i64* %0, align 8, !tbaa !1256
  %63 = tail call fastcc %struct.Memory* @ext_602220_BIO_f_base64(%struct.State* nonnull %state2, %struct.Memory* %58) #9
  %64 = tail call %struct.Memory* @breakpoint_401139(%struct.State* undef, i64 undef, %struct.Memory* %63) #9
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* %0, align 8
  store i64 %65, i64* %7, align 8, !tbaa !1256
  %67 = tail call %struct.Memory* @breakpoint_40113c(%struct.State* undef, i64 undef, %struct.Memory* %64) #9
  %68 = add i64 %66, -1417
  %69 = add i64 %66, 8
  %70 = load i64, i64* %8, align 8, !tbaa !1256
  %71 = add i64 %70, -8
  %72 = inttoptr i64 %71 to i64*
  store i64 %69, i64* %72
  store i64 %71, i64* %8, align 8, !tbaa !1256
  store i64 %68, i64* %0, align 8, !tbaa !1256
  %73 = tail call fastcc %struct.Memory* @ext_602270_BIO_new(%struct.State* nonnull %state2, %struct.Memory* %67) #9
  %74 = tail call %struct.Memory* @breakpoint_401141(%struct.State* undef, i64 undef, %struct.Memory* %73) #9
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, -40
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* %0, align 8
  %79 = inttoptr i64 %76 to i64*
  store i64 %77, i64* %79
  %80 = tail call %struct.Memory* @breakpoint_401145(%struct.State* undef, i64 undef, %struct.Memory* %74) #9
  %81 = add i64 %78, -1633
  %82 = add i64 %78, 9
  %83 = load i64, i64* %8, align 8, !tbaa !1256
  %84 = add i64 %83, -8
  %85 = inttoptr i64 %84 to i64*
  store i64 %82, i64* %85
  store i64 %84, i64* %8, align 8, !tbaa !1256
  store i64 %81, i64* %0, align 8, !tbaa !1256
  %86 = tail call fastcc %struct.Memory* @ext_400ae0_BIO_s_mem(%struct.State* nonnull %state2, %struct.Memory* %80) #9
  %87 = tail call %struct.Memory* @breakpoint_40114a(%struct.State* undef, i64 undef, %struct.Memory* %86) #9
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* %0, align 8
  store i64 %88, i64* %7, align 8, !tbaa !1256
  %90 = tail call %struct.Memory* @breakpoint_40114d(%struct.State* undef, i64 undef, %struct.Memory* %87) #9
  %91 = add i64 %89, -1434
  %92 = add i64 %89, 8
  %93 = load i64, i64* %8, align 8, !tbaa !1256
  %94 = add i64 %93, -8
  %95 = inttoptr i64 %94 to i64*
  store i64 %92, i64* %95
  store i64 %94, i64* %8, align 8, !tbaa !1256
  store i64 %91, i64* %0, align 8, !tbaa !1256
  %96 = tail call fastcc %struct.Memory* @ext_602270_BIO_new(%struct.State* nonnull %state2, %struct.Memory* %90) #9
  %97 = tail call %struct.Memory* @breakpoint_401152(%struct.State* undef, i64 undef, %struct.Memory* %96) #9
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, -32
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* %0, align 8
  %102 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %102
  %103 = tail call %struct.Memory* @breakpoint_401156(%struct.State* undef, i64 undef, %struct.Memory* %97) #9
  %104 = add i64 %98, -40
  %105 = inttoptr i64 %104 to i64*
  %106 = load i64, i64* %105
  store i64 %106, i64* %7, align 8, !tbaa !1256
  %107 = tail call %struct.Memory* @breakpoint_40115a(%struct.State* undef, i64 undef, %struct.Memory* %103) #9
  %108 = inttoptr i64 %99 to i64*
  %109 = load i64, i64* %108
  store i64 %109, i64* %6, align 8, !tbaa !1256
  %110 = tail call %struct.Memory* @breakpoint_40115e(%struct.State* undef, i64 undef, %struct.Memory* %107) #9
  %111 = add i64 %101, -1618
  %112 = add i64 %101, 17
  %113 = load i64, i64* %8, align 8, !tbaa !1256
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*
  store i64 %112, i64* %115
  store i64 %114, i64* %8, align 8, !tbaa !1256
  store i64 %111, i64* %0, align 8, !tbaa !1256
  %116 = tail call fastcc %struct.Memory* @ext_400b00_BIO_push(%struct.State* nonnull %state2, %struct.Memory* %110) #9
  %117 = tail call %struct.Memory* @breakpoint_401163(%struct.State* undef, i64 undef, %struct.Memory* %116) #9
  %118 = load i64, i64* %0, align 8
  store i64 256, i64* %6, align 8, !tbaa !1256
  %119 = tail call %struct.Memory* @breakpoint_401168(%struct.State* undef, i64 undef, %struct.Memory* %117) #9
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, -32
  %122 = load i64, i64* %3, align 8
  %123 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %123
  %124 = tail call %struct.Memory* @breakpoint_40116c(%struct.State* undef, i64 undef, %struct.Memory* %119) #9
  %125 = inttoptr i64 %121 to i64*
  %126 = load i64, i64* %125
  store i64 %126, i64* %7, align 8, !tbaa !1256
  %127 = tail call %struct.Memory* @breakpoint_401170(%struct.State* undef, i64 undef, %struct.Memory* %124) #9
  %128 = add i64 %118, -1683
  %129 = add i64 %118, 18
  %130 = load i64, i64* %8, align 8, !tbaa !1256
  %131 = add i64 %130, -8
  %132 = inttoptr i64 %131 to i64*
  store i64 %129, i64* %132
  store i64 %131, i64* %8, align 8, !tbaa !1256
  store i64 %128, i64* %0, align 8, !tbaa !1256
  %133 = tail call fastcc %struct.Memory* @ext_400ad0_BIO_set_flags(%struct.State* nonnull %state2, %struct.Memory* %127) #9
  %134 = tail call %struct.Memory* @breakpoint_401175(%struct.State* undef, i64 undef, %struct.Memory* %133) #9
  %135 = load i64, i64* %9, align 8
  %136 = add i64 %135, -32
  %137 = load i64, i64* %0, align 8
  %138 = inttoptr i64 %136 to i64*
  %139 = load i64, i64* %138
  store i64 %139, i64* %7, align 8, !tbaa !1256
  %140 = tail call %struct.Memory* @breakpoint_401179(%struct.State* undef, i64 undef, %struct.Memory* %134) #9
  %141 = add i64 %135, -8
  %142 = inttoptr i64 %141 to i64*
  %143 = load i64, i64* %142
  store i64 %143, i64* %6, align 8, !tbaa !1256
  %144 = tail call %struct.Memory* @breakpoint_40117d(%struct.State* undef, i64 undef, %struct.Memory* %140) #9
  %145 = add i64 %135, -16
  %146 = inttoptr i64 %145 to i64*
  %147 = load i64, i64* %146
  store i64 %147, i64* %3, align 8, !tbaa !1256
  %148 = tail call %struct.Memory* @breakpoint_401181(%struct.State* undef, i64 undef, %struct.Memory* %144) #9
  %149 = and i64 %147, 4294967295
  store i64 %149, i64* %4, align 8, !tbaa !1256
  %150 = tail call %struct.Memory* @breakpoint_401183(%struct.State* undef, i64 undef, %struct.Memory* %148) #9
  store i64 %149, i64* %5, align 8, !tbaa !1256
  %151 = tail call %struct.Memory* @breakpoint_401185(%struct.State* undef, i64 undef, %struct.Memory* %150) #9
  %152 = add i64 %137, -1573
  %153 = add i64 %137, 21
  %154 = load i64, i64* %8, align 8, !tbaa !1256
  %155 = add i64 %154, -8
  %156 = inttoptr i64 %155 to i64*
  store i64 %153, i64* %156
  store i64 %155, i64* %8, align 8, !tbaa !1256
  store i64 %152, i64* %0, align 8, !tbaa !1256
  %157 = tail call fastcc %struct.Memory* @ext_602240_BIO_write(%struct.State* nonnull %state2, %struct.Memory* %151) #9
  %158 = tail call %struct.Memory* @breakpoint_40118a(%struct.State* undef, i64 undef, %struct.Memory* %157) #9
  %159 = load i64, i64* %0, align 8
  store i64 11, i64* %6, align 8, !tbaa !1256
  %160 = tail call %struct.Memory* @breakpoint_40118f(%struct.State* undef, i64 undef, %struct.Memory* %158) #9
  store i8 0, i8* %21, align 1, !tbaa !1260
  store i8 1, i8* %28, align 1, !tbaa !1271
  store i8 1, i8* %36, align 1, !tbaa !1273
  store i8 0, i8* %39, align 1, !tbaa !1274
  store i8 0, i8* %45, align 1, !tbaa !1275
  store i8 0, i8* %33, align 1, !tbaa !1272
  %161 = tail call %struct.Memory* @breakpoint_401191(%struct.State* undef, i64 undef, %struct.Memory* %160) #9
  %162 = tail call %struct.Memory* @breakpoint_401193(%struct.State* undef, i64 undef, %struct.Memory* %161) #9
  %163 = load i64, i64* %9, align 8
  %164 = add i64 %163, -32
  %165 = inttoptr i64 %164 to i64*
  %166 = load i64, i64* %165
  store i64 %166, i64* %10, align 8, !tbaa !1256
  %167 = tail call %struct.Memory* @breakpoint_401197(%struct.State* undef, i64 undef, %struct.Memory* %162) #9
  %168 = add i64 %163, -56
  %169 = inttoptr i64 %168 to i64*
  store i64 0, i64* %169
  %170 = tail call %struct.Memory* @breakpoint_40119b(%struct.State* undef, i64 undef, %struct.Memory* %167) #9
  store i64 %166, i64* %7, align 8, !tbaa !1256
  %171 = tail call %struct.Memory* @breakpoint_40119e(%struct.State* undef, i64 undef, %struct.Memory* %170) #9
  %172 = inttoptr i64 %168 to i64*
  %173 = load i64, i64* %172
  store i64 %173, i64* %5, align 8, !tbaa !1256
  %174 = tail call %struct.Memory* @breakpoint_4011a2(%struct.State* undef, i64 undef, %struct.Memory* %171) #9
  %175 = inttoptr i64 %168 to i64*
  %176 = load i64, i64* %175
  store i64 %176, i64* %4, align 8, !tbaa !1256
  %177 = tail call %struct.Memory* @breakpoint_4011a6(%struct.State* undef, i64 undef, %struct.Memory* %174) #9
  %178 = add i64 %163, -60
  %179 = load i32, i32* %2, align 4
  %180 = inttoptr i64 %178 to i32*
  store i32 %179, i32* %180
  %181 = tail call %struct.Memory* @breakpoint_4011a9(%struct.State* undef, i64 undef, %struct.Memory* %177) #9
  %182 = add i64 %159, -1546
  %183 = add i64 %159, 36
  %184 = load i64, i64* %8, align 8, !tbaa !1256
  %185 = add i64 %184, -8
  %186 = inttoptr i64 %185 to i64*
  store i64 %183, i64* %186
  store i64 %185, i64* %8, align 8, !tbaa !1256
  store i64 %182, i64* %0, align 8, !tbaa !1256
  %187 = tail call fastcc %struct.Memory* @ext_602258_BIO_ctrl(%struct.State* nonnull %state2, %struct.Memory* %181) #9
  %188 = tail call %struct.Memory* @breakpoint_4011ae(%struct.State* undef, i64 undef, %struct.Memory* %187) #9
  %189 = load i64, i64* %0, align 8
  store i64 115, i64* %6, align 8, !tbaa !1256
  %190 = tail call %struct.Memory* @breakpoint_4011b3(%struct.State* undef, i64 undef, %struct.Memory* %188) #9
  %191 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %191, align 8, !tbaa !1256
  store i8 0, i8* %21, align 1, !tbaa !1260
  store i8 1, i8* %28, align 1, !tbaa !1271
  store i8 1, i8* %36, align 1, !tbaa !1273
  store i8 0, i8* %39, align 1, !tbaa !1274
  store i8 0, i8* %45, align 1, !tbaa !1275
  store i8 0, i8* %33, align 1, !tbaa !1272
  %192 = tail call %struct.Memory* @breakpoint_4011b6(%struct.State* undef, i64 undef, %struct.Memory* %190) #9
  store i64 0, i64* %5, align 8, !tbaa !1256
  %193 = tail call %struct.Memory* @breakpoint_4011b9(%struct.State* undef, i64 undef, %struct.Memory* %192) #9
  %194 = load i64, i64* %9, align 8
  %195 = add i64 %194, -48
  store i64 %195, i64* %4, align 8, !tbaa !1256
  %196 = tail call %struct.Memory* @breakpoint_4011bd(%struct.State* undef, i64 undef, %struct.Memory* %193) #9
  %197 = add i64 %194, -32
  %198 = inttoptr i64 %197 to i64*
  %199 = load i64, i64* %198
  store i64 %199, i64* %7, align 8, !tbaa !1256
  %200 = tail call %struct.Memory* @breakpoint_4011c1(%struct.State* undef, i64 undef, %struct.Memory* %196) #9
  %201 = add i64 %194, -72
  %202 = load i64, i64* %3, align 8
  %203 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %203
  %204 = tail call %struct.Memory* @breakpoint_4011c5(%struct.State* undef, i64 undef, %struct.Memory* %200) #9
  %205 = add i64 %189, -1582
  %206 = add i64 %189, 28
  %207 = load i64, i64* %8, align 8, !tbaa !1256
  %208 = add i64 %207, -8
  %209 = inttoptr i64 %208 to i64*
  store i64 %206, i64* %209
  store i64 %208, i64* %8, align 8, !tbaa !1256
  store i64 %205, i64* %0, align 8, !tbaa !1256
  %210 = tail call fastcc %struct.Memory* @ext_602258_BIO_ctrl(%struct.State* nonnull %state2, %struct.Memory* %204) #9
  %211 = tail call %struct.Memory* @breakpoint_4011ca(%struct.State* undef, i64 undef, %struct.Memory* %210) #9
  %212 = load i64, i64* %0, align 8
  store i64 9, i64* %6, align 8, !tbaa !1256
  %213 = tail call %struct.Memory* @breakpoint_4011cf(%struct.State* undef, i64 undef, %struct.Memory* %211) #9
  store i64 0, i64* %191, align 8, !tbaa !1256
  store i8 0, i8* %21, align 1, !tbaa !1260
  store i8 1, i8* %28, align 1, !tbaa !1271
  store i8 1, i8* %36, align 1, !tbaa !1273
  store i8 0, i8* %39, align 1, !tbaa !1274
  store i8 0, i8* %45, align 1, !tbaa !1275
  store i8 0, i8* %33, align 1, !tbaa !1272
  %214 = tail call %struct.Memory* @breakpoint_4011d2(%struct.State* undef, i64 undef, %struct.Memory* %213) #9
  store i64 0, i64* %4, align 8, !tbaa !1256
  %215 = tail call %struct.Memory* @breakpoint_4011d5(%struct.State* undef, i64 undef, %struct.Memory* %214) #9
  %216 = load i64, i64* %9, align 8
  %217 = add i64 %216, -32
  %218 = inttoptr i64 %217 to i64*
  %219 = load i64, i64* %218
  store i64 %219, i64* %7, align 8, !tbaa !1256
  %220 = tail call %struct.Memory* @breakpoint_4011d9(%struct.State* undef, i64 undef, %struct.Memory* %215) #9
  store i64 0, i64* %5, align 8, !tbaa !1256
  %221 = tail call %struct.Memory* @breakpoint_4011dc(%struct.State* undef, i64 undef, %struct.Memory* %220) #9
  %222 = add i64 %216, -80
  %223 = load i64, i64* %3, align 8
  %224 = inttoptr i64 %222 to i64*
  store i64 %223, i64* %224
  %225 = tail call %struct.Memory* @breakpoint_4011e0(%struct.State* undef, i64 undef, %struct.Memory* %221) #9
  %226 = add i64 %212, -1610
  %227 = add i64 %212, 27
  %228 = load i64, i64* %8, align 8, !tbaa !1256
  %229 = add i64 %228, -8
  %230 = inttoptr i64 %229 to i64*
  store i64 %227, i64* %230
  store i64 %229, i64* %8, align 8, !tbaa !1256
  store i64 %226, i64* %0, align 8, !tbaa !1256
  %231 = tail call fastcc %struct.Memory* @ext_602258_BIO_ctrl(%struct.State* nonnull %state2, %struct.Memory* %225) #9
  %232 = tail call %struct.Memory* @breakpoint_4011e5(%struct.State* undef, i64 undef, %struct.Memory* %231) #9
  %233 = load i64, i64* %9, align 8
  %234 = add i64 %233, -32
  %235 = load i64, i64* %0, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236
  store i64 %237, i64* %7, align 8, !tbaa !1256
  %238 = tail call %struct.Memory* @breakpoint_4011e9(%struct.State* undef, i64 undef, %struct.Memory* %232) #9
  %239 = add i64 %233, -88
  %240 = load i64, i64* %3, align 8
  %241 = inttoptr i64 %239 to i64*
  store i64 %240, i64* %241
  %242 = tail call %struct.Memory* @breakpoint_4011ed(%struct.State* undef, i64 undef, %struct.Memory* %238) #9
  %243 = add i64 %235, -1781
  %244 = add i64 %235, 13
  %245 = load i64, i64* %8, align 8, !tbaa !1256
  %246 = add i64 %245, -8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247
  store i64 %246, i64* %8, align 8, !tbaa !1256
  store i64 %243, i64* %0, align 8, !tbaa !1256
  %248 = tail call fastcc %struct.Memory* @ext_400af0_BIO_free_all(%struct.State* nonnull %state2, %struct.Memory* %242) #9
  %249 = tail call %struct.Memory* @breakpoint_4011f2(%struct.State* undef, i64 undef, %struct.Memory* %248) #9
  store i64 0, i64* %3, align 8, !tbaa !1256
  %250 = tail call %struct.Memory* @breakpoint_4011f4(%struct.State* undef, i64 undef, %struct.Memory* %249) #9
  %251 = load i64, i64* %9, align 8
  %252 = add i64 %251, -48
  %253 = inttoptr i64 %252 to i64*
  %254 = load i64, i64* %253
  %255 = tail call %struct.Memory* @breakpoint_4011f8(%struct.State* undef, i64 undef, %struct.Memory* %250) #9
  %256 = add i64 %254, 8
  %257 = inttoptr i64 %256 to i64*
  %258 = load i64, i64* %257
  store i64 %258, i64* %4, align 8, !tbaa !1256
  %259 = tail call %struct.Memory* @breakpoint_4011fc(%struct.State* undef, i64 undef, %struct.Memory* %255) #9
  %260 = add i64 %251, -24
  %261 = inttoptr i64 %260 to i64*
  %262 = load i64, i64* %261
  store i64 %262, i64* %5, align 8, !tbaa !1256
  %263 = tail call %struct.Memory* @breakpoint_401200(%struct.State* undef, i64 undef, %struct.Memory* %259) #9
  %264 = inttoptr i64 %262 to i64*
  store i64 %258, i64* %264
  %265 = tail call %struct.Memory* @breakpoint_401203(%struct.State* undef, i64 undef, %struct.Memory* %263) #9
  %266 = load i64, i64* %8, align 8
  %267 = add i64 %266, 96
  %268 = icmp ugt i64 %266, -97
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %21, align 1, !tbaa !1260
  %270 = trunc i64 %267 to i32
  %271 = and i32 %270, 255
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271) #9
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %28, align 1, !tbaa !1271
  %276 = xor i64 %267, %266
  %277 = lshr i64 %276, 4
  %278 = trunc i64 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %33, align 1, !tbaa !1272
  %280 = icmp eq i64 %267, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %36, align 1, !tbaa !1273
  %282 = lshr i64 %267, 63
  %283 = trunc i64 %282 to i8
  store i8 %283, i8* %39, align 1, !tbaa !1274
  %284 = lshr i64 %266, 63
  %285 = xor i64 %282, %284
  %286 = add nuw nsw i64 %285, %282
  %287 = icmp eq i64 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %45, align 1, !tbaa !1275
  %289 = tail call %struct.Memory* @breakpoint_401207(%struct.State* undef, i64 undef, %struct.Memory* %265) #9
  %290 = add i64 %266, 104
  %291 = inttoptr i64 %267 to i64*
  %292 = load i64, i64* %291
  store i64 %292, i64* %9, align 8, !tbaa !1256
  %293 = tail call %struct.Memory* @breakpoint_401208(%struct.State* undef, i64 undef, %struct.Memory* %289) #9
  %294 = inttoptr i64 %290 to i64*
  %295 = load i64, i64* %294
  store i64 %295, i64* %0, align 8, !tbaa !1256
  %296 = add i64 %266, 112
  store i64 %296, i64* %8, align 8, !tbaa !1256
  ret %struct.Memory* %293
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400d00_encrypt(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400d00:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i32*
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0
  %4 = bitcast %union.Flags* %3 to i32*
  %5 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0, i32 0
  %8 = getelementptr inbounds %union.Flags, %union.Flags* %3, i64 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 17, i32 0, i32 0
  %13 = tail call %struct.Memory* @breakpoint_400d00(%struct.State* undef, i64 undef, %struct.Memory* %memory1) #9
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %10, align 8, !tbaa !1256
  %16 = add i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %14, i64* %17
  %18 = tail call %struct.Memory* @breakpoint_400d01(%struct.State* undef, i64 undef, %struct.Memory* %13) #9
  store i64 %16, i64* %11, align 8, !tbaa !1256
  %19 = tail call %struct.Memory* @breakpoint_400d04(%struct.State* undef, i64 undef, %struct.Memory* %18) #9
  %20 = add i64 %15, -72
  %21 = icmp ult i64 %16, 64
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1, !tbaa !1260
  %24 = trunc i64 %20 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #9
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1, !tbaa !1271
  %31 = xor i64 %16, %20
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1, !tbaa !1272
  %36 = icmp eq i64 %20, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1, !tbaa !1273
  %39 = lshr i64 %20, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1, !tbaa !1274
  %42 = lshr i64 %16, 63
  %43 = xor i64 %39, %42
  %44 = add nuw nsw i64 %43, %42
  %45 = icmp eq i64 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1, !tbaa !1275
  %48 = tail call %struct.Memory* @breakpoint_400d08(%struct.State* undef, i64 undef, %struct.Memory* %19) #9
  %49 = add i64 %15, -16
  %50 = load i64, i64* %9, align 8
  %51 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %51
  %52 = tail call %struct.Memory* @breakpoint_400d0c(%struct.State* undef, i64 undef, %struct.Memory* %48) #9
  %53 = add i64 %15, -20
  %54 = load i32, i32* %4, align 4
  %55 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %55
  %56 = tail call %struct.Memory* @breakpoint_400d0f(%struct.State* undef, i64 undef, %struct.Memory* %52) #9
  %57 = add i64 %15, -32
  %58 = load i64, i64* %7, align 8
  %59 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %59
  %60 = tail call %struct.Memory* @breakpoint_400d13(%struct.State* undef, i64 undef, %struct.Memory* %56) #9
  %61 = add i64 %15, -40
  %62 = load i64, i64* %6, align 8
  %63 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %63
  %64 = tail call %struct.Memory* @breakpoint_400d17(%struct.State* undef, i64 undef, %struct.Memory* %60) #9
  %65 = add i64 %15, -48
  %66 = load i64, i64* %12, align 8
  %67 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %67
  %68 = tail call %struct.Memory* @breakpoint_400d1b(%struct.State* undef, i64 undef, %struct.Memory* %64) #9
  %69 = add i64 %pc, -608
  %70 = add i64 %pc, 32
  %71 = add i64 %15, -80
  %72 = inttoptr i64 %71 to i64*
  store i64 %70, i64* %72
  store i64 %71, i64* %10, align 8, !tbaa !1256
  store i64 %69, i64* %0, align 8, !tbaa !1256
  %73 = tail call fastcc %struct.Memory* @ext_6021e8_EVP_CIPHER_CTX_new(%struct.State* nonnull %state2, %struct.Memory* %68) #9
  %74 = tail call %struct.Memory* @breakpoint_400d20(%struct.State* undef, i64 undef, %struct.Memory* %73) #9
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, -48
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %0, align 8
  %79 = inttoptr i64 %76 to i64*
  store i64 %77, i64* %79
  %80 = tail call %struct.Memory* @breakpoint_400d24(%struct.State* undef, i64 undef, %struct.Memory* %74) #9
  store i8 0, i8* %23, align 1, !tbaa !1260
  %81 = trunc i64 %77 to i32
  %82 = and i32 %81, 255
  %83 = tail call i32 @llvm.ctpop.i32(i32 %82) #9
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %30, align 1, !tbaa !1271
  store i8 0, i8* %35, align 1, !tbaa !1272
  %87 = icmp eq i64 %77, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %38, align 1, !tbaa !1273
  %89 = lshr i64 %77, 63
  %90 = trunc i64 %89 to i8
  store i8 %90, i8* %41, align 1, !tbaa !1274
  store i8 0, i8* %47, align 1, !tbaa !1275
  %91 = tail call %struct.Memory* @breakpoint_400d28(%struct.State* undef, i64 undef, %struct.Memory* %80) #9
  %.v = select i1 %87, i64 14, i64 19
  %92 = add i64 %78, %.v
  store i64 %92, i64* %0, align 8, !tbaa !1256
  br i1 %87, label %block_400d2e, label %block_400d33

block_400d99:                                     ; preds = %block_400d6c
  %93 = tail call %struct.Memory* @breakpoint_400d99(%struct.State* undef, i64 undef, %struct.Memory* %398) #9
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %94, -52
  store i64 %95, i64* %7, align 8, !tbaa !1256
  %96 = tail call %struct.Memory* @breakpoint_400d9d(%struct.State* undef, i64 undef, %struct.Memory* %93) #9
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %5, align 8, !tbaa !1256
  %100 = tail call %struct.Memory* @breakpoint_400da0(%struct.State* undef, i64 undef, %struct.Memory* %96) #9
  %101 = add i64 %94, -56
  %102 = inttoptr i64 %101 to i32*
  store i32 %98, i32* %102
  %103 = tail call %struct.Memory* @breakpoint_400da3(%struct.State* undef, i64 undef, %struct.Memory* %100) #9
  %104 = add i64 %94, -48
  %105 = inttoptr i64 %104 to i64*
  %106 = load i64, i64* %105
  store i64 %106, i64* %9, align 8, !tbaa !1256
  %107 = tail call %struct.Memory* @breakpoint_400da7(%struct.State* undef, i64 undef, %struct.Memory* %103) #9
  %108 = add i64 %94, -40
  %109 = inttoptr i64 %108 to i64*
  %110 = load i64, i64* %109
  %111 = tail call %struct.Memory* @breakpoint_400dab(%struct.State* undef, i64 undef, %struct.Memory* %107) #9
  %112 = inttoptr i64 %95 to i32*
  %113 = load i32, i32* %112
  %114 = sext i32 %113 to i64
  %115 = tail call %struct.Memory* @breakpoint_400daf(%struct.State* undef, i64 undef, %struct.Memory* %111) #9
  %116 = add i64 %110, %114
  store i64 %116, i64* %6, align 8, !tbaa !1256
  %117 = icmp ult i64 %116, %110
  %118 = icmp ult i64 %116, %114
  %119 = or i1 %117, %118
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %23, align 1, !tbaa !1260
  %121 = trunc i64 %116 to i32
  %122 = and i32 %121, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122) #9
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %30, align 1, !tbaa !1271
  %127 = xor i64 %110, %114
  %128 = xor i64 %127, %116
  %129 = lshr i64 %128, 4
  %130 = trunc i64 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %35, align 1, !tbaa !1272
  %132 = icmp eq i64 %116, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %38, align 1, !tbaa !1273
  %134 = lshr i64 %116, 63
  %135 = trunc i64 %134 to i8
  store i8 %135, i8* %41, align 1, !tbaa !1274
  %136 = lshr i64 %110, 63
  %137 = lshr i64 %114, 63
  %138 = xor i64 %134, %136
  %139 = xor i64 %134, %137
  %140 = add nuw nsw i64 %138, %139
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %47, align 1, !tbaa !1275
  %143 = tail call %struct.Memory* @breakpoint_400db2(%struct.State* undef, i64 undef, %struct.Memory* %115) #9
  store i64 %116, i64* %8, align 8, !tbaa !1256
  %144 = tail call %struct.Memory* @breakpoint_400db5(%struct.State* undef, i64 undef, %struct.Memory* %143) #9
  %145 = add i64 %399, -601
  %146 = add i64 %399, 33
  %147 = load i64, i64* %10, align 8, !tbaa !1256
  %148 = add i64 %147, -8
  %149 = inttoptr i64 %148 to i64*
  store i64 %146, i64* %149
  store i64 %148, i64* %10, align 8, !tbaa !1256
  store i64 %145, i64* %0, align 8, !tbaa !1256
  %150 = tail call fastcc %struct.Memory* @ext_602238_EVP_EncryptFinal_ex(%struct.State* nonnull %state2, %struct.Memory* %144) #9
  %151 = tail call %struct.Memory* @breakpoint_400dba(%struct.State* undef, i64 undef, %struct.Memory* %150) #9
  %152 = load i64, i64* %0, align 8
  store i64 1, i64* %12, align 8, !tbaa !1256
  %153 = tail call %struct.Memory* @breakpoint_400dc0(%struct.State* undef, i64 undef, %struct.Memory* %151) #9
  %154 = load i32, i32* %2, align 4
  %155 = sub i32 1, %154
  %156 = icmp ugt i32 %154, 1
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %23, align 1, !tbaa !1260
  %158 = and i32 %155, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158) #9
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %30, align 1, !tbaa !1271
  %163 = xor i32 %154, %155
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %35, align 1, !tbaa !1272
  %167 = icmp eq i32 %155, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %38, align 1, !tbaa !1273
  %169 = lshr i32 %155, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %41, align 1, !tbaa !1274
  %171 = lshr i32 %154, 31
  %172 = add nuw nsw i32 %169, %171
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %47, align 1, !tbaa !1275
  %175 = tail call %struct.Memory* @breakpoint_400dc3(%struct.State* undef, i64 undef, %struct.Memory* %153) #9
  %.v6 = select i1 %167, i64 20, i64 15
  %176 = add i64 %152, %.v6
  store i64 %176, i64* %0, align 8, !tbaa !1256
  br i1 %167, label %block_400dce, label %block_400dc9

block_400dce:                                     ; preds = %block_400d99
  %177 = tail call %struct.Memory* @breakpoint_400dce(%struct.State* undef, i64 undef, %struct.Memory* %175) #9
  %178 = load i64, i64* %11, align 8
  %179 = add i64 %178, -52
  %180 = inttoptr i64 %179 to i32*
  %181 = load i32, i32* %180
  %182 = tail call %struct.Memory* @breakpoint_400dd1(%struct.State* undef, i64 undef, %struct.Memory* %177) #9
  %183 = add i64 %178, -56
  %184 = inttoptr i64 %183 to i32*
  %185 = load i32, i32* %184
  %186 = add i32 %185, %181
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %5, align 8, !tbaa !1256
  %188 = icmp ult i32 %186, %181
  %189 = icmp ult i32 %186, %185
  %190 = or i1 %188, %189
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %23, align 1, !tbaa !1260
  %192 = and i32 %186, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192) #9
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %30, align 1, !tbaa !1271
  %197 = xor i32 %185, %181
  %198 = xor i32 %197, %186
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %35, align 1, !tbaa !1272
  %202 = icmp eq i32 %186, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %38, align 1, !tbaa !1273
  %204 = lshr i32 %186, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %41, align 1, !tbaa !1274
  %206 = lshr i32 %181, 31
  %207 = lshr i32 %185, 31
  %208 = xor i32 %204, %206
  %209 = xor i32 %204, %207
  %210 = add nuw nsw i32 %208, %209
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %47, align 1, !tbaa !1275
  %213 = tail call %struct.Memory* @breakpoint_400dd4(%struct.State* undef, i64 undef, %struct.Memory* %182) #9
  %214 = inttoptr i64 %183 to i32*
  store i32 %186, i32* %214
  %215 = tail call %struct.Memory* @breakpoint_400dd7(%struct.State* undef, i64 undef, %struct.Memory* %213) #9
  %216 = add i64 %178, -48
  %217 = inttoptr i64 %216 to i64*
  %218 = load i64, i64* %217
  store i64 %218, i64* %9, align 8, !tbaa !1256
  %219 = tail call %struct.Memory* @breakpoint_400ddb(%struct.State* undef, i64 undef, %struct.Memory* %215) #9
  %220 = add i64 %176, -526
  %221 = add i64 %176, 18
  %222 = load i64, i64* %10, align 8, !tbaa !1256
  %223 = add i64 %222, -8
  %224 = inttoptr i64 %223 to i64*
  store i64 %221, i64* %224
  store i64 %223, i64* %10, align 8, !tbaa !1256
  store i64 %220, i64* %0, align 8, !tbaa !1256
  %225 = tail call fastcc %struct.Memory* @ext_400bc0_EVP_CIPHER_CTX_free(%struct.State* nonnull %state2, %struct.Memory* %219) #9
  %226 = tail call %struct.Memory* @breakpoint_400de0(%struct.State* undef, i64 undef, %struct.Memory* %225) #9
  %227 = load i64, i64* %11, align 8
  %228 = add i64 %227, -56
  %229 = inttoptr i64 %228 to i32*
  %230 = load i32, i32* %229
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %5, align 8, !tbaa !1256
  %232 = tail call %struct.Memory* @breakpoint_400de3(%struct.State* undef, i64 undef, %struct.Memory* %226) #9
  %233 = load i64, i64* %10, align 8
  %234 = add i64 %233, 64
  %235 = icmp ugt i64 %233, -65
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %23, align 1, !tbaa !1260
  %237 = trunc i64 %234 to i32
  %238 = and i32 %237, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238) #9
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %30, align 1, !tbaa !1271
  %243 = xor i64 %234, %233
  %244 = lshr i64 %243, 4
  %245 = trunc i64 %244 to i8
  %246 = and i8 %245, 1
  store i8 %246, i8* %35, align 1, !tbaa !1272
  %247 = icmp eq i64 %234, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %38, align 1, !tbaa !1273
  %249 = lshr i64 %234, 63
  %250 = trunc i64 %249 to i8
  store i8 %250, i8* %41, align 1, !tbaa !1274
  %251 = lshr i64 %233, 63
  %252 = xor i64 %249, %251
  %253 = add nuw nsw i64 %252, %249
  %254 = icmp eq i64 %253, 2
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %47, align 1, !tbaa !1275
  %256 = tail call %struct.Memory* @breakpoint_400de7(%struct.State* undef, i64 undef, %struct.Memory* %232) #9
  %257 = add i64 %233, 72
  %258 = inttoptr i64 %234 to i64*
  %259 = load i64, i64* %258
  store i64 %259, i64* %11, align 8, !tbaa !1256
  %260 = tail call %struct.Memory* @breakpoint_400de8(%struct.State* undef, i64 undef, %struct.Memory* %256) #9
  %261 = inttoptr i64 %257 to i64*
  %262 = load i64, i64* %261
  store i64 %262, i64* %0, align 8, !tbaa !1256
  %263 = add i64 %233, 80
  store i64 %263, i64* %10, align 8, !tbaa !1256
  ret %struct.Memory* %260

block_400d94:                                     ; preds = %block_400d6c
  %264 = tail call %struct.Memory* @breakpoint_400d94(%struct.State* undef, i64 undef, %struct.Memory* %398) #9
  %265 = add i64 %399, -180
  %266 = add i64 %399, 5
  %267 = load i64, i64* %10, align 8, !tbaa !1256
  %268 = add i64 %267, -8
  %269 = inttoptr i64 %268 to i64*
  store i64 %266, i64* %269
  store i64 %268, i64* %10, align 8, !tbaa !1256
  store i64 %265, i64* %0, align 8, !tbaa !1256
  %270 = tail call %struct.Memory* @sub_400ce0_handleErrors(%struct.State* nonnull %state2, i64 %265, %struct.Memory* %264)
  %271 = load i64, i64* %0, align 8
  %272 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %271, %struct.Memory* %270)
  ret %struct.Memory* %272

block_400d33:                                     ; preds = %block_400d00
  %273 = tail call %struct.Memory* @breakpoint_400d33(%struct.State* undef, i64 undef, %struct.Memory* %91) #9
  %274 = inttoptr i64 %76 to i64*
  %275 = load i64, i64* %274
  store i64 %275, i64* %9, align 8, !tbaa !1256
  %276 = tail call %struct.Memory* @breakpoint_400d37(%struct.State* undef, i64 undef, %struct.Memory* %273) #9
  %277 = add i64 %75, -64
  %278 = inttoptr i64 %277 to i64*
  store i64 %275, i64* %278
  %279 = tail call %struct.Memory* @breakpoint_400d3b(%struct.State* undef, i64 undef, %struct.Memory* %276) #9
  %280 = add i64 %92, -419
  %281 = add i64 %92, 13
  %282 = load i64, i64* %10, align 8, !tbaa !1256
  %283 = add i64 %282, -8
  %284 = inttoptr i64 %283 to i64*
  store i64 %281, i64* %284
  store i64 %283, i64* %10, align 8, !tbaa !1256
  store i64 %280, i64* %0, align 8, !tbaa !1256
  %285 = tail call fastcc %struct.Memory* @ext_400b90_EVP_aes_256_cbc(%struct.State* nonnull %state2, %struct.Memory* %279) #9
  %286 = tail call %struct.Memory* @breakpoint_400d40(%struct.State* undef, i64 undef, %struct.Memory* %285) #9
  %287 = load i64, i64* %0, align 8
  store i8 0, i8* %23, align 1, !tbaa !1260
  store i8 1, i8* %30, align 1, !tbaa !1271
  store i8 1, i8* %38, align 1, !tbaa !1273
  store i8 0, i8* %41, align 1, !tbaa !1274
  store i8 0, i8* %47, align 1, !tbaa !1275
  store i8 0, i8* %35, align 1, !tbaa !1272
  %288 = tail call %struct.Memory* @breakpoint_400d42(%struct.State* undef, i64 undef, %struct.Memory* %286) #9
  store i64 0, i64* %7, align 8, !tbaa !1256
  %289 = tail call %struct.Memory* @breakpoint_400d44(%struct.State* undef, i64 undef, %struct.Memory* %288) #9
  %290 = load i64, i64* %11, align 8
  %291 = add i64 %290, -24
  %292 = inttoptr i64 %291 to i64*
  %293 = load i64, i64* %292
  store i64 %293, i64* %6, align 8, !tbaa !1256
  %294 = tail call %struct.Memory* @breakpoint_400d48(%struct.State* undef, i64 undef, %struct.Memory* %289) #9
  %295 = add i64 %290, -32
  %296 = inttoptr i64 %295 to i64*
  %297 = load i64, i64* %296
  store i64 %297, i64* %12, align 8, !tbaa !1256
  %298 = tail call %struct.Memory* @breakpoint_400d4c(%struct.State* undef, i64 undef, %struct.Memory* %294) #9
  %299 = add i64 %290, -64
  %300 = inttoptr i64 %299 to i64*
  %301 = load i64, i64* %300
  store i64 %301, i64* %9, align 8, !tbaa !1256
  %302 = tail call %struct.Memory* @breakpoint_400d50(%struct.State* undef, i64 undef, %struct.Memory* %298) #9
  %303 = load i64, i64* %5, align 8
  store i64 %303, i64* %8, align 8, !tbaa !1256
  %304 = tail call %struct.Memory* @breakpoint_400d53(%struct.State* undef, i64 undef, %struct.Memory* %302) #9
  %305 = add i64 %287, -368
  %306 = add i64 %287, 24
  %307 = load i64, i64* %10, align 8, !tbaa !1256
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309
  store i64 %308, i64* %10, align 8, !tbaa !1256
  store i64 %305, i64* %0, align 8, !tbaa !1256
  %310 = tail call fastcc %struct.Memory* @ext_400bd0_EVP_EncryptInit_ex(%struct.State* nonnull %state2, %struct.Memory* %304) #9
  %311 = tail call %struct.Memory* @breakpoint_400d58(%struct.State* undef, i64 undef, %struct.Memory* %310) #9
  %312 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 19, i32 0, i32 0
  %313 = load i64, i64* %0, align 8
  store i64 1, i64* %312, align 8, !tbaa !1256
  %314 = tail call %struct.Memory* @breakpoint_400d5e(%struct.State* undef, i64 undef, %struct.Memory* %311) #9
  %315 = load i32, i32* %2, align 4
  %316 = sub i32 1, %315
  %317 = icmp ugt i32 %315, 1
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %23, align 1, !tbaa !1260
  %319 = and i32 %316, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319) #9
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %30, align 1, !tbaa !1271
  %324 = xor i32 %315, %316
  %325 = lshr i32 %324, 4
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %35, align 1, !tbaa !1272
  %328 = icmp eq i32 %316, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %38, align 1, !tbaa !1273
  %330 = lshr i32 %316, 31
  %331 = trunc i32 %330 to i8
  store i8 %331, i8* %41, align 1, !tbaa !1274
  %332 = lshr i32 %315, 31
  %333 = add nuw nsw i32 %330, %332
  %334 = icmp eq i32 %333, 2
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %47, align 1, !tbaa !1275
  %336 = tail call %struct.Memory* @breakpoint_400d61(%struct.State* undef, i64 undef, %struct.Memory* %314) #9
  %.v4 = select i1 %328, i64 20, i64 15
  %337 = add i64 %313, %.v4
  store i64 %337, i64* %0, align 8, !tbaa !1256
  br i1 %328, label %block_400d6c, label %block_400d67

block_400d2e:                                     ; preds = %block_400d00
  %338 = tail call %struct.Memory* @breakpoint_400d2e(%struct.State* undef, i64 undef, %struct.Memory* %91) #9
  %339 = add i64 %92, -78
  %340 = add i64 %92, 5
  %341 = load i64, i64* %10, align 8, !tbaa !1256
  %342 = add i64 %341, -8
  %343 = inttoptr i64 %342 to i64*
  store i64 %340, i64* %343
  store i64 %342, i64* %10, align 8, !tbaa !1256
  store i64 %339, i64* %0, align 8, !tbaa !1256
  %344 = tail call %struct.Memory* @sub_400ce0_handleErrors(%struct.State* nonnull %state2, i64 %339, %struct.Memory* %338)
  %345 = load i64, i64* %0, align 8
  %346 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %345, %struct.Memory* %344)
  ret %struct.Memory* %346

block_400d6c:                                     ; preds = %block_400d33
  %347 = tail call %struct.Memory* @breakpoint_400d6c(%struct.State* undef, i64 undef, %struct.Memory* %336) #9
  %348 = load i64, i64* %11, align 8
  %349 = add i64 %348, -52
  store i64 %349, i64* %7, align 8, !tbaa !1256
  %350 = tail call %struct.Memory* @breakpoint_400d70(%struct.State* undef, i64 undef, %struct.Memory* %347) #9
  %351 = add i64 %348, -48
  %352 = inttoptr i64 %351 to i64*
  %353 = load i64, i64* %352
  store i64 %353, i64* %9, align 8, !tbaa !1256
  %354 = tail call %struct.Memory* @breakpoint_400d74(%struct.State* undef, i64 undef, %struct.Memory* %350) #9
  %355 = add i64 %348, -40
  %356 = inttoptr i64 %355 to i64*
  %357 = load i64, i64* %356
  store i64 %357, i64* %8, align 8, !tbaa !1256
  %358 = tail call %struct.Memory* @breakpoint_400d78(%struct.State* undef, i64 undef, %struct.Memory* %354) #9
  %359 = add i64 %348, -8
  %360 = inttoptr i64 %359 to i64*
  %361 = load i64, i64* %360
  store i64 %361, i64* %6, align 8, !tbaa !1256
  %362 = tail call %struct.Memory* @breakpoint_400d7c(%struct.State* undef, i64 undef, %struct.Memory* %358) #9
  %363 = add i64 %348, -12
  %364 = inttoptr i64 %363 to i32*
  %365 = load i32, i32* %364
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %12, align 8, !tbaa !1256
  %367 = tail call %struct.Memory* @breakpoint_400d80(%struct.State* undef, i64 undef, %struct.Memory* %362) #9
  %368 = add i64 %337, -524
  %369 = add i64 %337, 25
  %370 = load i64, i64* %10, align 8, !tbaa !1256
  %371 = add i64 %370, -8
  %372 = inttoptr i64 %371 to i64*
  store i64 %369, i64* %372
  store i64 %371, i64* %10, align 8, !tbaa !1256
  store i64 %368, i64* %0, align 8, !tbaa !1256
  %373 = tail call fastcc %struct.Memory* @ext_400b60_EVP_EncryptUpdate(%struct.State* nonnull %state2, %struct.Memory* %367) #9
  %374 = tail call %struct.Memory* @breakpoint_400d85(%struct.State* undef, i64 undef, %struct.Memory* %373) #9
  %375 = load i64, i64* %0, align 8
  store i64 1, i64* %12, align 8, !tbaa !1256
  %376 = tail call %struct.Memory* @breakpoint_400d8b(%struct.State* undef, i64 undef, %struct.Memory* %374) #9
  %377 = load i32, i32* %2, align 4
  %378 = sub i32 1, %377
  %379 = icmp ugt i32 %377, 1
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %23, align 1, !tbaa !1260
  %381 = and i32 %378, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381) #9
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %30, align 1, !tbaa !1271
  %386 = xor i32 %377, %378
  %387 = lshr i32 %386, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %35, align 1, !tbaa !1272
  %390 = icmp eq i32 %378, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %38, align 1, !tbaa !1273
  %392 = lshr i32 %378, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %41, align 1, !tbaa !1274
  %394 = lshr i32 %377, 31
  %395 = add nuw nsw i32 %392, %394
  %396 = icmp eq i32 %395, 2
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %47, align 1, !tbaa !1275
  %398 = tail call %struct.Memory* @breakpoint_400d8e(%struct.State* undef, i64 undef, %struct.Memory* %376) #9
  %.v5 = select i1 %390, i64 20, i64 15
  %399 = add i64 %375, %.v5
  store i64 %399, i64* %0, align 8, !tbaa !1256
  br i1 %390, label %block_400d99, label %block_400d94

block_400dc9:                                     ; preds = %block_400d99
  %400 = tail call %struct.Memory* @breakpoint_400dc9(%struct.State* undef, i64 undef, %struct.Memory* %175) #9
  %401 = add i64 %176, -233
  %402 = add i64 %176, 5
  %403 = load i64, i64* %10, align 8, !tbaa !1256
  %404 = add i64 %403, -8
  %405 = inttoptr i64 %404 to i64*
  store i64 %402, i64* %405
  store i64 %404, i64* %10, align 8, !tbaa !1256
  store i64 %401, i64* %0, align 8, !tbaa !1256
  %406 = tail call %struct.Memory* @sub_400ce0_handleErrors(%struct.State* nonnull %state2, i64 %401, %struct.Memory* %400)
  %407 = load i64, i64* %0, align 8
  %408 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %407, %struct.Memory* %406)
  ret %struct.Memory* %408

block_400d67:                                     ; preds = %block_400d33
  %409 = tail call %struct.Memory* @breakpoint_400d67(%struct.State* undef, i64 undef, %struct.Memory* %336) #9
  %410 = add i64 %337, -135
  %411 = add i64 %337, 5
  %412 = load i64, i64* %10, align 8, !tbaa !1256
  %413 = add i64 %412, -8
  %414 = inttoptr i64 %413 to i64*
  store i64 %411, i64* %414
  store i64 %413, i64* %10, align 8, !tbaa !1256
  store i64 %410, i64* %0, align 8, !tbaa !1256
  %415 = tail call %struct.Memory* @sub_400ce0_handleErrors(%struct.State* nonnull %state2, i64 %410, %struct.Memory* %409)
  %416 = load i64, i64* %0, align 8
  %417 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %416, %struct.Memory* %415)
  ret %struct.Memory* %417
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @sub_400bf0___gmon_start__(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) unnamed_addr #4 {
block_400bf0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = tail call %struct.Memory* @breakpoint_400bf0(%struct.State* undef, i64 undef, %struct.Memory* %memory1) #9
  %2 = load i64, i64* getelementptr inbounds (%seg_601ff8__got_type, %seg_601ff8__got_type* @seg_601ff8__got, i32 0, i32 0)
  store i64 %2, i64* %0, align 8, !tbaa !1256
  %3 = tail call %struct.Memory* @__remill_jump(%struct.State* nonnull %state2, i64 %2, %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #3

; Function Attrs: norecurse nounwind readnone
define internal void @__mcsema_constructor() #5 {
  ret void
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e00(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e01(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e04(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e0b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e15(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e1c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e1f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e23(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e2b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e32(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e37(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e3b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e43(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e4b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e53(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e5b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e63(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e68(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e6c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e70(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e75(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e79(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e7d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e81(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e85(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e89(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e90(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e93(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400e9a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ea0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ea5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ea9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ead(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400eb0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400eb4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400eb7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ebb(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ec0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ec4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ec7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400eca(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ecd(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ed1(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ed5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400edc(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400edf(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ee6(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ee9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ef0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ef6(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400efb(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400eff(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f06(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f09(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f0d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f11(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f18(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f1b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f1e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f25(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f2a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f2e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f35(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f38(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f3c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f3f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f43(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f47(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f4a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f51(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f54(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f57(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f5e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f63(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f6a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f6e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f72(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f76(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f79(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f7d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f82(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f89(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f8e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f92(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f95(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f98(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f9b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400f9f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fa5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fa9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fad(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fb4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fb6(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fbd(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fc2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fc8(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fcf(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fd6(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fdd(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fe4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fe7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400fec(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ff0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ff7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ffb(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401002(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401005(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40100b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401010(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401017(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40101d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400b30_strlen(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401022(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401029(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401031(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401038(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40103c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401040(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401043(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401046(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401049(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401050(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401054(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401057(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40105e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401063(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401067(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40106b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40106e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401075(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401079(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40107d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401081(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401088(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40108f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401093(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401096(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401099(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40109e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010a5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010ac(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010ae(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400a70_printf(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010b3(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010bd(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010c3(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010c5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010ca(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010d4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010da(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010e0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010e2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010e7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010f1(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010f7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010f9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4010fe(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401105(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401109(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40110c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40110f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401115(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401117(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40111a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40111b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c00(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c02(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c05(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c06(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c09(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c0d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c0e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c0f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c16(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c1d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400e00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @0) #9
  ret void
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c24(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c29(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401296(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40129b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40129f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012a3(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012a7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012a8(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401291(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401270(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401274(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401278(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40127c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401280(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401283(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40124a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40124e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401252(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401256(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40125a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40125d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401289(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401263(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40126b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401210(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401211(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401214(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401218(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40121c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401220(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401225(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401229(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401231(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401235(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401239(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40123d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401241(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401244(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401386(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013b3(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013b7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400af0_BIO_free_all(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @BIO_free_all to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013bc(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013be(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013c2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013c3(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40138b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401395(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40139f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013a4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013ae(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6021e0___assert_fail(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @__assert_fail to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012b0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012b1(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012b4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012b8(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012bc(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012c0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012c4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012c8(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012cd(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012cf(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012d2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012d5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012d8(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012db(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6021f0_malloc(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012e0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012e5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012e9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012ec(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012f0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012f4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012f7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012fb(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4012ff(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602228_BIO_new_mem_buf(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @BIO_new_mem_buf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401304(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401308(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602220_BIO_f_base64(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @BIO_f_base64 to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40130d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401310(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602270_BIO_new(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @BIO_new to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401315(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401319(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40131d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401321(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400b00_BIO_push(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @BIO_push to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401326(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40132b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40132f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401333(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400ad0_BIO_set_flags(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @BIO_set_flags to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401338(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40133c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401340(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401343(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401347(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40134b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40134e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401352(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401357(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401359(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40135d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401361(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401363(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602268_BIO_read(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @BIO_read to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401368(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40136b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40136f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401372(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401376(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401379(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40137d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401380(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cd0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cd1(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cd4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cd5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401440(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cc0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ca9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400caa(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cad(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cb2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cb9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cba(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ca0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ca7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400a48(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400a4d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400a51(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400a38(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400a3c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400a43(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400a46(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ce0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ce1(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ce4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cec(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400b70_ERR_print_errors_fp(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @ERR_print_errors_fp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cf1(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6021d8_abort(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @abort to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400cf6(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401426(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40142a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40142b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40142c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40142e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401430(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401432(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401434(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401406(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401408(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401410(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401413(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401416(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401419(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40141d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401421(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401424(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013d0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013d2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013d4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013d7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013d9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013db(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013e2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013e3(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013ea(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013eb(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013ee(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013f1(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013f4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013f8(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4013fc(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401401(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401404(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400df0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400df1(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400df4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dfe(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dff(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401444(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401448(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40144c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401120(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401121(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401124(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401128(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40112c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401130(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401134(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401139(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40113c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401141(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401145(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400ae0_BIO_s_mem(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @BIO_s_mem to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40114a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40114d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401152(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401156(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40115a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40115e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401163(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401168(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40116c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401170(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401175(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401179(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40117d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401181(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401183(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401185(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602240_BIO_write(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @BIO_write to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40118a(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40118f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401191(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401193(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401197(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40119b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_40119e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011a2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011a6(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011a9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602258_BIO_ctrl(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @BIO_ctrl to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011ae(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011b3(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011b6(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011b9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011bd(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011c1(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011c5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011ca(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011cf(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011d2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011d5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011d9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011dc(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011e0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011e5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011e9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011ed(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011f2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011f4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011f8(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_4011fc(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401200(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401203(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401207(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_401208(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c4b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c4c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c51(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c41(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c46(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c49(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c58(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c59(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c30(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c31(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c36(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c3c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c3f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d99(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d9d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400da0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400da3(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400da7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dab(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400daf(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400db2(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400db5(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_602238_EVP_EncryptFinal_ex(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @EVP_EncryptFinal_ex to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dba(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dc0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dc3(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dce(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dd1(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dd4(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dd7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400ddb(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400bc0_EVP_CIPHER_CTX_free(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @EVP_CIPHER_CTX_free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400de0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400de3(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400de7(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400de8(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d94(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d33(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d37(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d3b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400b90_EVP_aes_256_cbc(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @EVP_aes_256_cbc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d40(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d42(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d44(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d48(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d4c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d50(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d53(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400bd0_EVP_EncryptInit_ex(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64)* @EVP_EncryptInit_ex to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d58(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d5e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d61(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d2e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d6c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d70(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d74(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d78(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d7c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d80(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_400b60_EVP_EncryptUpdate(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64)* @EVP_EncryptUpdate to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d85(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d8b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d8e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400dc9(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d67(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d00(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d01(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d04(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d08(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d0c(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d0f(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d13(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d17(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d1b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_6021e8_EVP_CIPHER_CTX_new(%struct.State*, %struct.Memory*) unnamed_addr #7 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @EVP_CIPHER_CTX_new to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d20(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d24(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400d28(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400bf0(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c98(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c99(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c8d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c8e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c93(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c83(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c88(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c8b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c60(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c65(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c66(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c6d(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c70(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c74(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c77(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c7b(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c7e(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @breakpoint_400c81(%struct.State*, i64, %struct.Memory*) local_unnamed_addr #6 {
  ret %struct.Memory* %2
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @encrypt() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400d00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @2, void ()** nonnull @0) #9
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Base64Encode() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401120;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @0) #9
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @calcDecodeLength() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401210;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @0) #9
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @generate_iv() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400df0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @0) #9
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401444;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @0) #9
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @handleErrors() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ce0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @0) #9
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a38;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @0) #9
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Base64Decode() local_unnamed_addr #8 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @0) #9
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline }
attributes #4 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readnone }
attributes #6 = { noinline nounwind optnone }
attributes #7 = { noinline nounwind }
attributes #8 = { naked nobuiltin noinline nounwind }
attributes #9 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1254, !1255}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !66, imports: !69)
!2 = !DIFile(filename: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !25, !34, !38, !44, !50, !54, !60}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 51, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill/Arch/Runtime/HyperCall.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 49, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!12 = !DIEnumerator(name: "kInvalid", value: 0)
!13 = !DIEnumerator(name: "kX86Int1", value: 1)
!14 = !DIEnumerator(name: "kX86Int3", value: 2)
!15 = !DIEnumerator(name: "kX86IntO", value: 3)
!16 = !DIEnumerator(name: "kX86IntN", value: 4)
!17 = !DIEnumerator(name: "kX86Bound", value: 5)
!18 = !DIEnumerator(name: "kX86IRet", value: 6)
!19 = !DIEnumerator(name: "kX86SysCall", value: 7)
!20 = !DIEnumerator(name: "kX86SysRet", value: 8)
!21 = !DIEnumerator(name: "kX86SysEnter", value: 9)
!22 = !DIEnumerator(name: "kX86SysExit", value: 10)
!23 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 11)
!24 = !DIEnumerator(name: "kInvalidInstruction", value: 12)
!25 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !26, line: 65, baseType: !27, size: 16, elements: !29, identifier: "_ZTS21RequestPrivilegeLevel")
!26 = !DIFile(filename: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill/Arch/X86/Runtime/State.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 218, baseType: !28)
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "kRPLRingZero", value: 0)
!31 = !DIEnumerator(name: "kRPLRingOne", value: 1)
!32 = !DIEnumerator(name: "kRPLRingTwo", value: 2)
!33 = !DIEnumerator(name: "kRPLRingThree", value: 3)
!34 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !26, line: 72, baseType: !27, size: 16, elements: !35, identifier: "_ZTS14TableIndicator")
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)
!37 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)
!38 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUPrecisionControl", file: !26, line: 112, baseType: !27, size: 16, elements: !39, identifier: "_ZTS19FPUPrecisionControl")
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "kPrecisionSingle", value: 0)
!41 = !DIEnumerator(name: "kPrecisionReserved", value: 1)
!42 = !DIEnumerator(name: "kPrecisionDouble", value: 2)
!43 = !DIEnumerator(name: "kPrecisionExtended", value: 3)
!44 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPURoundingControl", file: !26, line: 119, baseType: !27, size: 16, elements: !45, identifier: "_ZTS18FPURoundingControl")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "kFPURoundToNearestEven", value: 0)
!47 = !DIEnumerator(name: "kFPURoundDownNegInf", value: 1)
!48 = !DIEnumerator(name: "kFPURoundUpInf", value: 2)
!49 = !DIEnumerator(name: "kFPURoundToZero", value: 3)
!50 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUInfinityControl", file: !26, line: 126, baseType: !27, size: 16, elements: !51, identifier: "_ZTS18FPUInfinityControl")
!51 = !{!52, !53}
!52 = !DIEnumerator(name: "kInfinityProjective", value: 0)
!53 = !DIEnumerator(name: "kInfinityAffine", value: 1)
!54 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUTag", file: !26, line: 203, baseType: !27, size: 16, elements: !55, identifier: "_ZTS6FPUTag")
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "kFPUTagNonZero", value: 0)
!57 = !DIEnumerator(name: "kFPUTagZero", value: 1)
!58 = !DIEnumerator(name: "kFPUTagSpecial", value: 2)
!59 = !DIEnumerator(name: "kFPUTagEmpty", value: 3)
!60 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUAbridgedTag", file: !26, line: 210, baseType: !61, size: 8, elements: !63, identifier: "_ZTS14FPUAbridgedTag")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 237, baseType: !62)
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "kFPUAbridgedTagEmpty", value: 0)
!65 = !DIEnumerator(name: "kFPUAbridgedTagValid", value: 1)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!69 = !{!70, !76, !82, !85, !92, !96, !101, !103, !111, !115, !119, !131, !135, !139, !143, !147, !152, !156, !160, !164, !168, !176, !180, !184, !186, !190, !194, !198, !204, !208, !212, !214, !222, !226, !234, !236, !240, !244, !248, !252, !257, !262, !267, !268, !269, !270, !273, !274, !275, !276, !277, !278, !279, !334, !338, !353, !355, !359, !367, !372, !376, !380, !384, !388, !390, !392, !396, !402, !406, !412, !418, !420, !424, !428, !432, !436, !447, !449, !453, !457, !461, !463, !467, !471, !475, !477, !479, !483, !491, !495, !499, !503, !505, !511, !513, !519, !523, !527, !531, !535, !539, !543, !545, !547, !551, !555, !559, !561, !565, !569, !571, !573, !577, !581, !585, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !603, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !631, !632, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !662, !666, !671, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !707, !712, !716, !718, !720, !722, !724, !731, !735, !739, !743, !747, !751, !756, !760, !762, !766, !772, !776, !781, !783, !785, !789, !793, !797, !799, !801, !803, !805, !809, !811, !813, !817, !821, !825, !829, !833, !835, !837, !841, !845, !849, !853, !855, !857, !861, !865, !866, !867, !868, !869, !870, !874, !876, !879, !884, !886, !892, !894, !896, !898, !903, !905, !911, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !931, !933, !935, !939, !941, !943, !945, !947, !949, !951, !953, !958, !962, !964, !966, !971, !973, !975, !977, !979, !981, !983, !986, !988, !990, !994, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1012, !1014, !1016, !1018, !1022, !1026, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1046, !1048, !1050, !1052, !1054, !1056, !1060, !1064, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1090, !1094, !1098, !1100, !1102, !1104, !1108, !1112, !1116, !1118, !1120, !1122, !1124, !1126, !1128, !1130, !1132, !1134, !1136, !1138, !1140, !1144, !1148, !1152, !1154, !1156, !1158, !1160, !1164, !1168, !1170, !1172, !1174, !1176, !1178, !1180, !1184, !1188, !1190, !1192, !1194, !1196, !1200, !1204, !1208, !1210, !1212, !1214, !1216, !1218, !1220, !1224, !1228, !1232, !1234, !1238, !1242, !1244, !1246, !1248, !1250, !1252}
!70 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !71, entity: !73, line: 58)
!71 = !DINamespace(name: "__gnu_debug", scope: null, file: !72, line: 56)
!72 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/debug/debug.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!73 = !DINamespace(name: "__debug", scope: !74, file: !72, line: 50)
!74 = !DINamespace(name: "std", scope: null, file: !75, line: 252)
!75 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits/c++config.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !77, line: 52)
!77 = !DISubprogram(name: "abs", scope: !78, file: !78, line: 774, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !81}
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !83, line: 127)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !78, line: 101, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 97, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !86, line: 128)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !78, line: 109, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 105, size: 128, elements: !88, identifier: "_ZTS6ldiv_t")
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !87, file: !78, line: 107, baseType: !90, size: 64)
!90 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !87, file: !78, line: 108, baseType: !90, size: 64, offset: 64)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !93, line: 130)
!93 = !DISubprogram(name: "abort", scope: !78, file: !78, line: 515, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!94 = !DISubroutineType(types: !95)
!95 = !{null}
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !97, line: 134)
!97 = !DISubprogram(name: "atexit", scope: !78, file: !78, line: 519, type: !98, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!98 = !DISubroutineType(types: !99)
!99 = !{!81, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !102, line: 137)
!102 = !DISubprogram(name: "at_quick_exit", scope: !78, file: !78, line: 524, type: !98, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !104, line: 140)
!104 = !DISubprogram(name: "atof", scope: !78, file: !78, line: 144, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !108}
!107 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !112, line: 141)
!112 = !DISubprogram(name: "atoi", scope: !78, file: !78, line: 147, type: !113, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DISubroutineType(types: !114)
!114 = !{!81, !108}
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !116, line: 142)
!116 = !DISubprogram(name: "atol", scope: !78, file: !78, line: 150, type: !117, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DISubroutineType(types: !118)
!118 = !{!90, !108}
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !120, line: 143)
!120 = !DISubprogram(name: "bsearch", scope: !78, file: !78, line: 754, type: !121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !67, !67, !124, !124, !127}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 62, baseType: !126)
!125 = !DIFile(filename: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!126 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !78, line: 741, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!81, !67, !67}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !132, line: 144)
!132 = !DISubprogram(name: "calloc", scope: !78, file: !78, line: 468, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!123, !124, !124}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !136, line: 145)
!136 = !DISubprogram(name: "div", scope: !78, file: !78, line: 788, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DISubroutineType(types: !138)
!138 = !{!83, !81, !81}
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !140, line: 146)
!140 = !DISubprogram(name: "exit", scope: !78, file: !78, line: 543, type: !141, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !81}
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !144, line: 147)
!144 = !DISubprogram(name: "free", scope: !78, file: !78, line: 483, type: !145, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !123}
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !148, line: 148)
!148 = !DISubprogram(name: "getenv", scope: !78, file: !78, line: 564, type: !149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !108}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !153, line: 149)
!153 = !DISubprogram(name: "labs", scope: !78, file: !78, line: 775, type: !154, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!154 = !DISubroutineType(types: !155)
!155 = !{!90, !90}
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !157, line: 150)
!157 = !DISubprogram(name: "ldiv", scope: !78, file: !78, line: 790, type: !158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DISubroutineType(types: !159)
!159 = !{!86, !90, !90}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !161, line: 151)
!161 = !DISubprogram(name: "malloc", scope: !78, file: !78, line: 466, type: !162, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DISubroutineType(types: !163)
!163 = !{!123, !124}
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !165, line: 153)
!165 = !DISubprogram(name: "mblen", scope: !78, file: !78, line: 862, type: !166, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DISubroutineType(types: !167)
!167 = !{!81, !108, !124}
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !169, line: 154)
!169 = !DISubprogram(name: "mbstowcs", scope: !78, file: !78, line: 873, type: !170, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!170 = !DISubroutineType(types: !171)
!171 = !{!124, !172, !175, !124}
!172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !177, line: 155)
!177 = !DISubprogram(name: "mbtowc", scope: !78, file: !78, line: 865, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DISubroutineType(types: !179)
!179 = !{!81, !172, !175, !124}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !181, line: 157)
!181 = !DISubprogram(name: "qsort", scope: !78, file: !78, line: 764, type: !182, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !123, !124, !124, !127}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !185, line: 160)
!185 = !DISubprogram(name: "quick_exit", scope: !78, file: !78, line: 549, type: !141, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !187, line: 163)
!187 = !DISubprogram(name: "rand", scope: !78, file: !78, line: 374, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{!81}
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !191, line: 164)
!191 = !DISubprogram(name: "realloc", scope: !78, file: !78, line: 480, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{!123, !123, !124}
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !195, line: 165)
!195 = !DISubprogram(name: "srand", scope: !78, file: !78, line: 376, type: !196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !10}
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !199, line: 166)
!199 = !DISubprogram(name: "strtod", scope: !78, file: !78, line: 164, type: !200, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!200 = !DISubroutineType(types: !201)
!201 = !{!107, !175, !202}
!202 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !205, line: 167)
!205 = !DISubprogram(name: "strtol", scope: !78, file: !78, line: 183, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!90, !175, !202, !81}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !209, line: 168)
!209 = !DISubprogram(name: "strtoul", scope: !78, file: !78, line: 187, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DISubroutineType(types: !211)
!211 = !{!126, !175, !202, !81}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !213, line: 169)
!213 = !DISubprogram(name: "system", scope: !78, file: !78, line: 716, type: !113, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !215, line: 171)
!215 = !DISubprogram(name: "wcstombs", scope: !78, file: !78, line: 876, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DISubroutineType(types: !217)
!217 = !{!124, !218, !219, !124}
!218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !223, line: 172)
!223 = !DISubprogram(name: "wctomb", scope: !78, file: !78, line: 869, type: !224, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DISubroutineType(types: !225)
!225 = !{!81, !151, !174}
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !228, line: 200)
!227 = !DINamespace(name: "__gnu_cxx", scope: null, file: !75, line: 278)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !78, line: 121, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 117, size: 128, elements: !230, identifier: "_ZTS7lldiv_t")
!230 = !{!231, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !229, file: !78, line: 119, baseType: !232, size: 64)
!232 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !229, file: !78, line: 120, baseType: !232, size: 64, offset: 64)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !235, line: 206)
!235 = !DISubprogram(name: "_Exit", scope: !78, file: !78, line: 557, type: !141, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !237, line: 210)
!237 = !DISubprogram(name: "llabs", scope: !78, file: !78, line: 779, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!232, !232}
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !241, line: 216)
!241 = !DISubprogram(name: "lldiv", scope: !78, file: !78, line: 796, type: !242, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DISubroutineType(types: !243)
!243 = !{!228, !232, !232}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !245, line: 227)
!245 = !DISubprogram(name: "atoll", scope: !78, file: !78, line: 157, type: !246, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DISubroutineType(types: !247)
!247 = !{!232, !108}
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !249, line: 228)
!249 = !DISubprogram(name: "strtoll", scope: !78, file: !78, line: 209, type: !250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DISubroutineType(types: !251)
!251 = !{!232, !175, !202, !81}
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !253, line: 229)
!253 = !DISubprogram(name: "strtoull", scope: !78, file: !78, line: 214, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !175, !202, !81}
!256 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !258, line: 231)
!258 = !DISubprogram(name: "strtof", scope: !78, file: !78, line: 172, type: !259, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !175, !202}
!261 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !263, line: 232)
!263 = !DISubprogram(name: "strtold", scope: !78, file: !78, line: 175, type: !264, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !175, !202}
!266 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !228, line: 240)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !235, line: 242)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !237, line: 244)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !271, line: 245)
!271 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !227, file: !272, line: 213, type: !242, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/cstdlib", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !241, line: 246)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !245, line: 248)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !258, line: 249)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !249, line: 250)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !253, line: 251)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !263, line: 252)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !280, line: 57)
!280 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !282, file: !281, line: 79, size: 64, elements: !283, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!281 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits/exception_ptr.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!282 = !DINamespace(name: "__exception_ptr", scope: !74, file: !281, line: 52)
!283 = !{!284, !285, !289, !292, !293, !298, !299, !303, !308, !312, !316, !319, !320, !323, !327}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !280, file: !281, line: 81, baseType: !123, size: 64)
!285 = !DISubprogram(name: "exception_ptr", scope: !280, file: !281, line: 83, type: !286, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288, !123}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!289 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !280, file: !281, line: 85, type: !290, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !288}
!292 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !280, file: !281, line: 86, type: !290, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !280, file: !281, line: 88, type: !294, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{!123, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!298 = !DISubprogram(name: "exception_ptr", scope: !280, file: !281, line: 96, type: !290, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!299 = !DISubprogram(name: "exception_ptr", scope: !280, file: !281, line: 98, type: !300, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !288, !302}
!302 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !297, size: 64)
!303 = !DISubprogram(name: "exception_ptr", scope: !280, file: !281, line: 101, type: !304, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !288, !306}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !74, file: !75, line: 258, baseType: !307)
!307 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!308 = !DISubprogram(name: "exception_ptr", scope: !280, file: !281, line: 105, type: !309, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !288, !311}
!311 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !280, size: 64)
!312 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !280, file: !281, line: 118, type: !313, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !288, !302}
!315 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !280, size: 64)
!316 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !280, file: !281, line: 122, type: !317, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!317 = !DISubroutineType(types: !318)
!318 = !{!315, !288, !311}
!319 = !DISubprogram(name: "~exception_ptr", scope: !280, file: !281, line: 129, type: !290, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!320 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !280, file: !281, line: 132, type: !321, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !288, !315}
!323 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !280, file: !281, line: 144, type: !324, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !296}
!326 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!327 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !280, file: !281, line: 153, type: !328, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !296}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !74, file: !333, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!333 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/typeinfo", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !282, entity: !335, line: 73)
!335 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !74, file: !281, line: 69, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !280}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !339, line: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !340, line: 106, baseType: !341)
!340 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !340, line: 94, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 82, size: 64, elements: !343, identifier: "_ZTS11__mbstate_t")
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !342, file: !340, line: 84, baseType: !81, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !342, file: !340, line: 93, baseType: !346, size: 32, offset: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !340, line: 85, size: 32, elements: !347, identifier: "_ZTSN11__mbstate_tUt_E")
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !346, file: !340, line: 88, baseType: !10, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !346, file: !340, line: 92, baseType: !350, size: 32)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 32, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 4)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !354, line: 141)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !125, line: 132, baseType: !10)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !356, line: 143)
!356 = !DISubprogram(name: "btowc", scope: !340, file: !340, line: 356, type: !357, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!357 = !DISubroutineType(types: !358)
!358 = !{!354, !81}
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !360, line: 144)
!360 = !DISubprogram(name: "fgetwc", scope: !340, file: !340, line: 748, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!361 = !DISubroutineType(types: !362)
!362 = !{!354, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !365, line: 64, baseType: !366)
!365 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !365, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !368, line: 145)
!368 = !DISubprogram(name: "fgetws", scope: !340, file: !340, line: 777, type: !369, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DISubroutineType(types: !370)
!370 = !{!173, !172, !81, !371}
!371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !363)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !373, line: 146)
!373 = !DISubprogram(name: "fputwc", scope: !340, file: !340, line: 762, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{!354, !174, !363}
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !377, line: 147)
!377 = !DISubprogram(name: "fputws", scope: !340, file: !340, line: 784, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!378 = !DISubroutineType(types: !379)
!379 = !{!81, !219, !371}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !381, line: 148)
!381 = !DISubprogram(name: "fwide", scope: !340, file: !340, line: 590, type: !382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DISubroutineType(types: !383)
!383 = !{!81, !363, !81}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !385, line: 149)
!385 = !DISubprogram(name: "fwprintf", scope: !340, file: !340, line: 597, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!81, !371, !219, null}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !389, line: 150)
!389 = !DISubprogram(name: "fwscanf", scope: !340, file: !340, line: 638, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !391, line: 151)
!391 = !DISubprogram(name: "getwc", scope: !340, file: !340, line: 749, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !393, line: 152)
!393 = !DISubprogram(name: "getwchar", scope: !340, file: !340, line: 755, type: !394, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubroutineType(types: !395)
!395 = !{!354}
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !397, line: 153)
!397 = !DISubprogram(name: "mbrlen", scope: !340, file: !340, line: 379, type: !398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{!124, !175, !124, !400}
!400 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !403, line: 154)
!403 = !DISubprogram(name: "mbrtowc", scope: !340, file: !340, line: 368, type: !404, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!404 = !DISubroutineType(types: !405)
!405 = !{!124, !172, !175, !124, !400}
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !407, line: 155)
!407 = !DISubprogram(name: "mbsinit", scope: !340, file: !340, line: 364, type: !408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DISubroutineType(types: !409)
!409 = !{!81, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !413, line: 156)
!413 = !DISubprogram(name: "mbsrtowcs", scope: !340, file: !340, line: 411, type: !414, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!414 = !DISubroutineType(types: !415)
!415 = !{!124, !172, !416, !124, !400}
!416 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !419, line: 157)
!419 = !DISubprogram(name: "putwc", scope: !340, file: !340, line: 763, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !421, line: 158)
!421 = !DISubprogram(name: "putwchar", scope: !340, file: !340, line: 769, type: !422, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!422 = !DISubroutineType(types: !423)
!423 = !{!354, !174}
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !425, line: 160)
!425 = !DISubprogram(name: "swprintf", scope: !340, file: !340, line: 607, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!81, !172, !124, !219, null}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !429, line: 162)
!429 = !DISubprogram(name: "swscanf", scope: !340, file: !340, line: 648, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!81, !219, !219, null}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !433, line: 163)
!433 = !DISubprogram(name: "ungetwc", scope: !340, file: !340, line: 792, type: !434, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{!354, !354, !363}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !437, line: 164)
!437 = !DISubprogram(name: "vfwprintf", scope: !340, file: !340, line: 615, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{!81, !371, !219, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !442, identifier: "_ZTS13__va_list_tag")
!442 = !{!443, !444, !445, !446}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !441, file: !2, baseType: !10, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !441, file: !2, baseType: !10, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !441, file: !2, baseType: !123, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !441, file: !2, baseType: !123, size: 64, offset: 128)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !448, line: 166)
!448 = !DISubprogram(name: "vfwscanf", scope: !340, file: !340, line: 692, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !450, line: 169)
!450 = !DISubprogram(name: "vswprintf", scope: !340, file: !340, line: 628, type: !451, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!451 = !DISubroutineType(types: !452)
!452 = !{!81, !172, !124, !219, !440}
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !454, line: 172)
!454 = !DISubprogram(name: "vswscanf", scope: !340, file: !340, line: 704, type: !455, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!455 = !DISubroutineType(types: !456)
!456 = !{!81, !219, !219, !440}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !458, line: 174)
!458 = !DISubprogram(name: "vwprintf", scope: !340, file: !340, line: 623, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{!81, !219, !440}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !462, line: 176)
!462 = !DISubprogram(name: "vwscanf", scope: !340, file: !340, line: 700, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !464, line: 178)
!464 = !DISubprogram(name: "wcrtomb", scope: !340, file: !340, line: 373, type: !465, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!465 = !DISubroutineType(types: !466)
!466 = !{!124, !218, !174, !400}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !468, line: 179)
!468 = !DISubprogram(name: "wcscat", scope: !340, file: !340, line: 157, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DISubroutineType(types: !470)
!470 = !{!173, !172, !219}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !472, line: 180)
!472 = !DISubprogram(name: "wcscmp", scope: !340, file: !340, line: 166, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !474)
!474 = !{!81, !220, !220}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !476, line: 181)
!476 = !DISubprogram(name: "wcscoll", scope: !340, file: !340, line: 195, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !478, line: 182)
!478 = !DISubprogram(name: "wcscpy", scope: !340, file: !340, line: 147, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !480, line: 183)
!480 = !DISubprogram(name: "wcscspn", scope: !340, file: !340, line: 255, type: !481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DISubroutineType(types: !482)
!482 = !{!124, !220, !220}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !484, line: 184)
!484 = !DISubprogram(name: "wcsftime", scope: !340, file: !340, line: 858, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!124, !172, !124, !219, !487}
!487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !340, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !492, line: 185)
!492 = !DISubprogram(name: "wcslen", scope: !340, file: !340, line: 290, type: !493, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!493 = !DISubroutineType(types: !494)
!494 = !{!124, !220}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !496, line: 186)
!496 = !DISubprogram(name: "wcsncat", scope: !340, file: !340, line: 161, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DISubroutineType(types: !498)
!498 = !{!173, !172, !219, !124}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !500, line: 187)
!500 = !DISubprogram(name: "wcsncmp", scope: !340, file: !340, line: 169, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DISubroutineType(types: !502)
!502 = !{!81, !220, !220, !124}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !504, line: 188)
!504 = !DISubprogram(name: "wcsncpy", scope: !340, file: !340, line: 152, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !506, line: 189)
!506 = !DISubprogram(name: "wcsrtombs", scope: !340, file: !340, line: 417, type: !507, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!507 = !DISubroutineType(types: !508)
!508 = !{!124, !218, !509, !124, !400}
!509 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !512, line: 190)
!512 = !DISubprogram(name: "wcsspn", scope: !340, file: !340, line: 259, type: !481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !514, line: 191)
!514 = !DISubprogram(name: "wcstod", scope: !340, file: !340, line: 453, type: !515, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!515 = !DISubroutineType(types: !516)
!516 = !{!107, !219, !517}
!517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !520, line: 193)
!520 = !DISubprogram(name: "wcstof", scope: !340, file: !340, line: 460, type: !521, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!521 = !DISubroutineType(types: !522)
!522 = !{!261, !219, !517}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !524, line: 195)
!524 = !DISubprogram(name: "wcstok", scope: !340, file: !340, line: 285, type: !525, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DISubroutineType(types: !526)
!526 = !{!173, !172, !219, !517}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !528, line: 196)
!528 = !DISubprogram(name: "wcstol", scope: !340, file: !340, line: 471, type: !529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{!90, !219, !517, !81}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !532, line: 197)
!532 = !DISubprogram(name: "wcstoul", scope: !340, file: !340, line: 476, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!126, !219, !517, !81}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !536, line: 198)
!536 = !DISubprogram(name: "wcsxfrm", scope: !340, file: !340, line: 199, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!124, !172, !219, !124}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !540, line: 199)
!540 = !DISubprogram(name: "wctob", scope: !340, file: !340, line: 360, type: !541, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!81, !354}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !544, line: 200)
!544 = !DISubprogram(name: "wmemcmp", scope: !340, file: !340, line: 328, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !546, line: 201)
!546 = !DISubprogram(name: "wmemcpy", scope: !340, file: !340, line: 332, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !548, line: 202)
!548 = !DISubprogram(name: "wmemmove", scope: !340, file: !340, line: 337, type: !549, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DISubroutineType(types: !550)
!550 = !{!173, !173, !220, !124}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !552, line: 203)
!552 = !DISubprogram(name: "wmemset", scope: !340, file: !340, line: 341, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{!173, !173, !174, !124}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !556, line: 204)
!556 = !DISubprogram(name: "wprintf", scope: !340, file: !340, line: 604, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{!81, !219, null}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !560, line: 205)
!560 = !DISubprogram(name: "wscanf", scope: !340, file: !340, line: 645, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !562, line: 206)
!562 = !DISubprogram(name: "wcschr", scope: !340, file: !340, line: 230, type: !563, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!563 = !DISubroutineType(types: !564)
!564 = !{!173, !220, !174}
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !566, line: 207)
!566 = !DISubprogram(name: "wcspbrk", scope: !340, file: !340, line: 269, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!173, !220, !220}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !570, line: 208)
!570 = !DISubprogram(name: "wcsrchr", scope: !340, file: !340, line: 240, type: !563, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !572, line: 209)
!572 = !DISubprogram(name: "wcsstr", scope: !340, file: !340, line: 280, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !574, line: 210)
!574 = !DISubprogram(name: "wmemchr", scope: !340, file: !340, line: 323, type: !575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DISubroutineType(types: !576)
!576 = !{!173, !220, !174, !124}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !578, line: 251)
!578 = !DISubprogram(name: "wcstold", scope: !340, file: !340, line: 462, type: !579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!266, !219, !517}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !582, line: 260)
!582 = !DISubprogram(name: "wcstoll", scope: !340, file: !340, line: 486, type: !583, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{!232, !219, !517, !81}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !586, line: 261)
!586 = !DISubprogram(name: "wcstoull", scope: !340, file: !340, line: 493, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!256, !219, !517, !81}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !578, line: 267)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !582, line: 268)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !586, line: 269)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !520, line: 283)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !448, line: 286)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !454, line: 289)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !462, line: 292)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !578, line: 296)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !582, line: 297)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !586, line: 298)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !600, line: 47)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !601, line: 194, baseType: !602)
!601 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!602 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !604, line: 48)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !601, line: 195, baseType: !605)
!605 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !607, line: 49)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !601, line: 196, baseType: !81)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !609, line: 50)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !601, line: 197, baseType: !90)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !611, line: 52)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !600)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !613, line: 53)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !604)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !615, line: 54)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !607)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !617, line: 55)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !609)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !619, line: 57)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !600)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !621, line: 58)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !604)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !623, line: 59)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !607)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !625, line: 60)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !609)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !627, line: 62)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !90)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !629, line: 63)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !609)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !61, line: 65)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !27, line: 66)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !8, line: 67)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !634, line: 68)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !126)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !636, line: 70)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !61)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !638, line: 71)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !27)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !640, line: 72)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !642, line: 73)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !634)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !644, line: 75)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !61)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !646, line: 76)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !27)
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !648, line: 77)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !650, line: 78)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !634)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !652, line: 80)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !126)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !654, line: 81)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !634)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !656, line: 44)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !74, file: !75, line: 254, baseType: !126)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !658, line: 45)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !74, file: !75, line: 255, baseType: !90)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !660, line: 53)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !661, line: 53, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!661 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !663, line: 54)
!663 = !DISubprogram(name: "setlocale", scope: !661, file: !661, line: 124, type: !664, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!664 = !DISubroutineType(types: !665)
!665 = !{!151, !81, !108}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !667, line: 55)
!667 = !DISubprogram(name: "localeconv", scope: !661, file: !661, line: 127, type: !668, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!668 = !DISubroutineType(types: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !672, line: 64)
!672 = !DISubprogram(name: "isalnum", scope: !673, file: !673, line: 110, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!673 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !675, line: 65)
!675 = !DISubprogram(name: "isalpha", scope: !673, file: !673, line: 111, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !677, line: 66)
!677 = !DISubprogram(name: "iscntrl", scope: !673, file: !673, line: 112, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !679, line: 67)
!679 = !DISubprogram(name: "isdigit", scope: !673, file: !673, line: 113, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !681, line: 68)
!681 = !DISubprogram(name: "isgraph", scope: !673, file: !673, line: 115, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !683, line: 69)
!683 = !DISubprogram(name: "islower", scope: !673, file: !673, line: 114, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !685, line: 70)
!685 = !DISubprogram(name: "isprint", scope: !673, file: !673, line: 116, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !687, line: 71)
!687 = !DISubprogram(name: "ispunct", scope: !673, file: !673, line: 117, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !689, line: 72)
!689 = !DISubprogram(name: "isspace", scope: !673, file: !673, line: 118, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !691, line: 73)
!691 = !DISubprogram(name: "isupper", scope: !673, file: !673, line: 119, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !693, line: 74)
!693 = !DISubprogram(name: "isxdigit", scope: !673, file: !673, line: 120, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !695, line: 75)
!695 = !DISubprogram(name: "tolower", scope: !673, file: !673, line: 124, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !697, line: 76)
!697 = !DISubprogram(name: "toupper", scope: !673, file: !673, line: 127, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !699, line: 87)
!699 = !DISubprogram(name: "isblank", scope: !673, file: !673, line: 136, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !701, line: 98)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !365, line: 48, baseType: !366)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !703, line: 99)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !365, line: 110, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !705, line: 25, baseType: !706)
!705 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !708, line: 101)
!708 = !DISubprogram(name: "clearerr", scope: !365, file: !365, line: 826, type: !709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !713, line: 102)
!713 = !DISubprogram(name: "fclose", scope: !365, file: !365, line: 237, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!714 = !DISubroutineType(types: !715)
!715 = !{!81, !711}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !717, line: 103)
!717 = !DISubprogram(name: "feof", scope: !365, file: !365, line: 828, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !719, line: 104)
!719 = !DISubprogram(name: "ferror", scope: !365, file: !365, line: 830, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !721, line: 105)
!721 = !DISubprogram(name: "fflush", scope: !365, file: !365, line: 242, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !723, line: 106)
!723 = !DISubprogram(name: "fgetc", scope: !365, file: !365, line: 531, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !725, line: 107)
!725 = !DISubprogram(name: "fgetpos", scope: !365, file: !365, line: 798, type: !726, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!726 = !DISubroutineType(types: !727)
!727 = !{!81, !728, !729}
!728 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !711)
!729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !732, line: 108)
!732 = !DISubprogram(name: "fgets", scope: !365, file: !365, line: 622, type: !733, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!733 = !DISubroutineType(types: !734)
!734 = !{!151, !218, !81, !728}
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !736, line: 109)
!736 = !DISubprogram(name: "fopen", scope: !365, file: !365, line: 272, type: !737, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!737 = !DISubroutineType(types: !738)
!738 = !{!711, !175, !175}
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !740, line: 110)
!740 = !DISubprogram(name: "fprintf", scope: !365, file: !365, line: 356, type: !741, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!741 = !DISubroutineType(types: !742)
!742 = !{!81, !728, !175, null}
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !744, line: 111)
!744 = !DISubprogram(name: "fputc", scope: !365, file: !365, line: 573, type: !745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!745 = !DISubroutineType(types: !746)
!746 = !{!81, !81, !711}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !748, line: 112)
!748 = !DISubprogram(name: "fputs", scope: !365, file: !365, line: 689, type: !749, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!749 = !DISubroutineType(types: !750)
!750 = !{!81, !175, !728}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !752, line: 113)
!752 = !DISubprogram(name: "fread", scope: !365, file: !365, line: 709, type: !753, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!753 = !DISubroutineType(types: !754)
!754 = !{!124, !755, !124, !124, !728}
!755 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !757, line: 114)
!757 = !DISubprogram(name: "freopen", scope: !365, file: !365, line: 278, type: !758, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!758 = !DISubroutineType(types: !759)
!759 = !{!711, !175, !175, !728}
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !761, line: 115)
!761 = !DISubprogram(name: "fscanf", scope: !365, file: !365, line: 425, type: !741, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !763, line: 116)
!763 = !DISubprogram(name: "fseek", scope: !365, file: !365, line: 749, type: !764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!764 = !DISubroutineType(types: !765)
!765 = !{!81, !711, !90, !81}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !767, line: 117)
!767 = !DISubprogram(name: "fsetpos", scope: !365, file: !365, line: 803, type: !768, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!768 = !DISubroutineType(types: !769)
!769 = !{!81, !711, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !773, line: 118)
!773 = !DISubprogram(name: "ftell", scope: !365, file: !365, line: 754, type: !774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!774 = !DISubroutineType(types: !775)
!775 = !{!90, !711}
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !777, line: 119)
!777 = !DISubprogram(name: "fwrite", scope: !365, file: !365, line: 715, type: !778, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!778 = !DISubroutineType(types: !779)
!779 = !{!124, !780, !124, !124, !728}
!780 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !782, line: 120)
!782 = !DISubprogram(name: "getc", scope: !365, file: !365, line: 532, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !784, line: 121)
!784 = !DISubprogram(name: "getchar", scope: !365, file: !365, line: 538, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !786, line: 124)
!786 = !DISubprogram(name: "gets", scope: !365, file: !365, line: 638, type: !787, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!787 = !DISubroutineType(types: !788)
!788 = !{!151, !151}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !790, line: 126)
!790 = !DISubprogram(name: "perror", scope: !365, file: !365, line: 846, type: !791, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !108}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !794, line: 127)
!794 = !DISubprogram(name: "printf", scope: !365, file: !365, line: 362, type: !795, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!795 = !DISubroutineType(types: !796)
!796 = !{!81, !175, null}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !798, line: 128)
!798 = !DISubprogram(name: "putc", scope: !365, file: !365, line: 574, type: !745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !800, line: 129)
!800 = !DISubprogram(name: "putchar", scope: !365, file: !365, line: 580, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !802, line: 130)
!802 = !DISubprogram(name: "puts", scope: !365, file: !365, line: 695, type: !113, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !804, line: 131)
!804 = !DISubprogram(name: "remove", scope: !365, file: !365, line: 178, type: !113, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !806, line: 132)
!806 = !DISubprogram(name: "rename", scope: !365, file: !365, line: 180, type: !807, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!807 = !DISubroutineType(types: !808)
!808 = !{!81, !108, !108}
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !810, line: 133)
!810 = !DISubprogram(name: "rewind", scope: !365, file: !365, line: 759, type: !709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !812, line: 134)
!812 = !DISubprogram(name: "scanf", scope: !365, file: !365, line: 431, type: !795, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !814, line: 135)
!814 = !DISubprogram(name: "setbuf", scope: !365, file: !365, line: 332, type: !815, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !728, !218}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !818, line: 136)
!818 = !DISubprogram(name: "setvbuf", scope: !365, file: !365, line: 336, type: !819, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!819 = !DISubroutineType(types: !820)
!820 = !{!81, !728, !218, !81, !124}
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !822, line: 137)
!822 = !DISubprogram(name: "sprintf", scope: !365, file: !365, line: 364, type: !823, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!823 = !DISubroutineType(types: !824)
!824 = !{!81, !218, !175, null}
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !826, line: 138)
!826 = !DISubprogram(name: "sscanf", scope: !365, file: !365, line: 433, type: !827, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!827 = !DISubroutineType(types: !828)
!828 = !{!81, !175, !175, null}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !830, line: 139)
!830 = !DISubprogram(name: "tmpfile", scope: !365, file: !365, line: 195, type: !831, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!831 = !DISubroutineType(types: !832)
!832 = !{!711}
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !834, line: 141)
!834 = !DISubprogram(name: "tmpnam", scope: !365, file: !365, line: 209, type: !787, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !836, line: 143)
!836 = !DISubprogram(name: "ungetc", scope: !365, file: !365, line: 702, type: !745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !838, line: 144)
!838 = !DISubprogram(name: "vfprintf", scope: !365, file: !365, line: 371, type: !839, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!839 = !DISubroutineType(types: !840)
!840 = !{!81, !728, !175, !440}
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !842, line: 145)
!842 = !DISubprogram(name: "vprintf", scope: !365, file: !365, line: 377, type: !843, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!843 = !DISubroutineType(types: !844)
!844 = !{!81, !175, !440}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !846, line: 146)
!846 = !DISubprogram(name: "vsprintf", scope: !365, file: !365, line: 379, type: !847, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!847 = !DISubroutineType(types: !848)
!848 = !{!81, !218, !175, !440}
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !850, line: 175)
!850 = !DISubprogram(name: "snprintf", scope: !365, file: !365, line: 386, type: !851, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!851 = !DISubroutineType(types: !852)
!852 = !{!81, !218, !124, !175, null}
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !854, line: 176)
!854 = !DISubprogram(name: "vfscanf", scope: !365, file: !365, line: 471, type: !839, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !856, line: 177)
!856 = !DISubprogram(name: "vscanf", scope: !365, file: !365, line: 479, type: !843, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !858, line: 178)
!858 = !DISubprogram(name: "vsnprintf", scope: !365, file: !365, line: 390, type: !859, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!859 = !DISubroutineType(types: !860)
!860 = !{!81, !218, !124, !175, !440}
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !862, line: 179)
!862 = !DISubprogram(name: "vsscanf", scope: !365, file: !365, line: 483, type: !863, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!863 = !DISubroutineType(types: !864)
!864 = !{!81, !175, !175, !440}
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !850, line: 185)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !854, line: 186)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !856, line: 187)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !858, line: 188)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !862, line: 189)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !871, line: 58)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !872, line: 94, baseType: !873)
!872 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !872, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !875, line: 59)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !872, line: 68, baseType: !28)
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !877, line: 62)
!877 = !DISubprogram(name: "feclearexcept", scope: !878, file: !878, line: 64, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!878 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !880, line: 63)
!880 = !DISubprogram(name: "fegetexceptflag", scope: !878, file: !878, line: 68, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!881 = !DISubroutineType(types: !882)
!882 = !{!81, !883, !81}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !885, line: 64)
!885 = !DISubprogram(name: "feraiseexcept", scope: !878, file: !878, line: 71, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !887, line: 65)
!887 = !DISubprogram(name: "fesetexceptflag", scope: !878, file: !878, line: 75, type: !888, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!888 = !DISubroutineType(types: !889)
!889 = !{!81, !890, !81}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !893, line: 66)
!893 = !DISubprogram(name: "fetestexcept", scope: !878, file: !878, line: 79, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !895, line: 68)
!895 = !DISubprogram(name: "fegetround", scope: !878, file: !878, line: 85, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !897, line: 69)
!897 = !DISubprogram(name: "fesetround", scope: !878, file: !878, line: 88, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !899, line: 71)
!899 = !DISubprogram(name: "fegetenv", scope: !878, file: !878, line: 95, type: !900, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DISubroutineType(types: !901)
!901 = !{!81, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !904, line: 72)
!904 = !DISubprogram(name: "feholdexcept", scope: !878, file: !878, line: 100, type: !900, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!905 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !906, line: 73)
!906 = !DISubprogram(name: "fesetenv", scope: !878, file: !878, line: 104, type: !907, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!907 = !DISubroutineType(types: !908)
!908 = !{!81, !909}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !912, line: 74)
!912 = !DISubprogram(name: "feupdateenv", scope: !878, file: !878, line: 109, type: !907, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !871, line: 61)
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !875, line: 62)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !877, line: 65)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !880, line: 66)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !885, line: 67)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !887, line: 68)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !893, line: 69)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !895, line: 71)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !897, line: 72)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !899, line: 74)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !904, line: 75)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !906, line: 76)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !912, line: 77)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !927, line: 83)
!927 = !DISubprogram(name: "acos", scope: !928, file: !928, line: 54, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!929 = !DISubroutineType(types: !930)
!930 = !{!107, !107}
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !932, line: 102)
!932 = !DISubprogram(name: "asin", scope: !928, file: !928, line: 56, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !934, line: 121)
!934 = !DISubprogram(name: "atan", scope: !928, file: !928, line: 58, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !936, line: 140)
!936 = !DISubprogram(name: "atan2", scope: !928, file: !928, line: 60, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!937 = !DISubroutineType(types: !938)
!938 = !{!107, !107, !107}
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !940, line: 161)
!940 = !DISubprogram(name: "ceil", scope: !928, file: !928, line: 178, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !942, line: 180)
!942 = !DISubprogram(name: "cos", scope: !928, file: !928, line: 63, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !944, line: 199)
!944 = !DISubprogram(name: "cosh", scope: !928, file: !928, line: 72, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !946, line: 218)
!946 = !DISubprogram(name: "exp", scope: !928, file: !928, line: 100, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !948, line: 237)
!948 = !DISubprogram(name: "fabs", scope: !928, file: !928, line: 181, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !950, line: 256)
!950 = !DISubprogram(name: "floor", scope: !928, file: !928, line: 184, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !952, line: 275)
!952 = !DISubprogram(name: "fmod", scope: !928, file: !928, line: 187, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !954, line: 296)
!954 = !DISubprogram(name: "frexp", scope: !928, file: !928, line: 103, type: !955, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!955 = !DISubroutineType(types: !956)
!956 = !{!107, !107, !957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !959, line: 315)
!959 = !DISubprogram(name: "ldexp", scope: !928, file: !928, line: 106, type: !960, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!960 = !DISubroutineType(types: !961)
!961 = !{!107, !107, !81}
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !963, line: 334)
!963 = !DISubprogram(name: "log", scope: !928, file: !928, line: 109, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!964 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !965, line: 353)
!965 = !DISubprogram(name: "log10", scope: !928, file: !928, line: 112, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !967, line: 372)
!967 = !DISubprogram(name: "modf", scope: !928, file: !928, line: 115, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!968 = !DISubroutineType(types: !969)
!969 = !{!107, !107, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !972, line: 384)
!972 = !DISubprogram(name: "pow", scope: !928, file: !928, line: 153, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !974, line: 421)
!974 = !DISubprogram(name: "sin", scope: !928, file: !928, line: 65, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !976, line: 440)
!976 = !DISubprogram(name: "sinh", scope: !928, file: !928, line: 74, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !978, line: 459)
!978 = !DISubprogram(name: "sqrt", scope: !928, file: !928, line: 156, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !980, line: 478)
!980 = !DISubprogram(name: "tan", scope: !928, file: !928, line: 67, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !982, line: 497)
!982 = !DISubprogram(name: "tanh", scope: !928, file: !928, line: 76, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !984, line: 1065)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !985, line: 29, baseType: !107)
!985 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathdef.h", directory: "/home/aditi/mcsema-2.0.0-ve/remill-2.0.0/remill-build/remill/Arch/X86/Runtime")
!986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !987, line: 1066)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !985, line: 28, baseType: !261)
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !989, line: 1069)
!989 = !DISubprogram(name: "acosh", scope: !928, file: !928, line: 88, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !991, line: 1070)
!991 = !DISubprogram(name: "acoshf", scope: !928, file: !928, line: 88, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!992 = !DISubroutineType(types: !993)
!993 = !{!261, !261}
!994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !995, line: 1071)
!995 = !DISubprogram(name: "acoshl", scope: !928, file: !928, line: 88, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!996 = !DISubroutineType(types: !997)
!997 = !{!266, !266}
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !999, line: 1073)
!999 = !DISubprogram(name: "asinh", scope: !928, file: !928, line: 90, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1001, line: 1074)
!1001 = !DISubprogram(name: "asinhf", scope: !928, file: !928, line: 90, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1003, line: 1075)
!1003 = !DISubprogram(name: "asinhl", scope: !928, file: !928, line: 90, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1005, line: 1077)
!1005 = !DISubprogram(name: "atanh", scope: !928, file: !928, line: 92, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1007, line: 1078)
!1007 = !DISubprogram(name: "atanhf", scope: !928, file: !928, line: 92, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1009, line: 1079)
!1009 = !DISubprogram(name: "atanhl", scope: !928, file: !928, line: 92, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1011, line: 1081)
!1011 = !DISubprogram(name: "cbrt", scope: !928, file: !928, line: 169, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1013, line: 1082)
!1013 = !DISubprogram(name: "cbrtf", scope: !928, file: !928, line: 169, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1015, line: 1083)
!1015 = !DISubprogram(name: "cbrtl", scope: !928, file: !928, line: 169, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1017, line: 1085)
!1017 = !DISubprogram(name: "copysign", scope: !928, file: !928, line: 221, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1019, line: 1086)
!1019 = !DISubprogram(name: "copysignf", scope: !928, file: !928, line: 221, type: !1020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!261, !261, !261}
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1023, line: 1087)
!1023 = !DISubprogram(name: "copysignl", scope: !928, file: !928, line: 221, type: !1024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!266, !266, !266}
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1027, line: 1089)
!1027 = !DISubprogram(name: "erf", scope: !928, file: !928, line: 259, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1029, line: 1090)
!1029 = !DISubprogram(name: "erff", scope: !928, file: !928, line: 259, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1031, line: 1091)
!1031 = !DISubprogram(name: "erfl", scope: !928, file: !928, line: 259, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1033, line: 1093)
!1033 = !DISubprogram(name: "erfc", scope: !928, file: !928, line: 260, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1035, line: 1094)
!1035 = !DISubprogram(name: "erfcf", scope: !928, file: !928, line: 260, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1037, line: 1095)
!1037 = !DISubprogram(name: "erfcl", scope: !928, file: !928, line: 260, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1039, line: 1097)
!1039 = !DISubprogram(name: "exp2", scope: !928, file: !928, line: 141, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1041, line: 1098)
!1041 = !DISubprogram(name: "exp2f", scope: !928, file: !928, line: 141, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1043, line: 1099)
!1043 = !DISubprogram(name: "exp2l", scope: !928, file: !928, line: 141, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1045, line: 1101)
!1045 = !DISubprogram(name: "expm1", scope: !928, file: !928, line: 128, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1047, line: 1102)
!1047 = !DISubprogram(name: "expm1f", scope: !928, file: !928, line: 128, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1049, line: 1103)
!1049 = !DISubprogram(name: "expm1l", scope: !928, file: !928, line: 128, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1050 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1051, line: 1105)
!1051 = !DISubprogram(name: "fdim", scope: !928, file: !928, line: 347, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1053, line: 1106)
!1053 = !DISubprogram(name: "fdimf", scope: !928, file: !928, line: 347, type: !1020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1054 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1055, line: 1107)
!1055 = !DISubprogram(name: "fdiml", scope: !928, file: !928, line: 347, type: !1024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1057, line: 1109)
!1057 = !DISubprogram(name: "fma", scope: !928, file: !928, line: 366, type: !1058, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!107, !107, !107, !107}
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1061, line: 1110)
!1061 = !DISubprogram(name: "fmaf", scope: !928, file: !928, line: 366, type: !1062, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!261, !261, !261, !261}
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1065, line: 1111)
!1065 = !DISubprogram(name: "fmal", scope: !928, file: !928, line: 366, type: !1066, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!266, !266, !266, !266}
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1069, line: 1113)
!1069 = !DISubprogram(name: "fmax", scope: !928, file: !928, line: 350, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1071, line: 1114)
!1071 = !DISubprogram(name: "fmaxf", scope: !928, file: !928, line: 350, type: !1020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1073, line: 1115)
!1073 = !DISubprogram(name: "fmaxl", scope: !928, file: !928, line: 350, type: !1024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1075, line: 1117)
!1075 = !DISubprogram(name: "fmin", scope: !928, file: !928, line: 353, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1077, line: 1118)
!1077 = !DISubprogram(name: "fminf", scope: !928, file: !928, line: 353, type: !1020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1079, line: 1119)
!1079 = !DISubprogram(name: "fminl", scope: !928, file: !928, line: 353, type: !1024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1081, line: 1121)
!1081 = !DISubprogram(name: "hypot", scope: !928, file: !928, line: 162, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1083, line: 1122)
!1083 = !DISubprogram(name: "hypotf", scope: !928, file: !928, line: 162, type: !1020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1085, line: 1123)
!1085 = !DISubprogram(name: "hypotl", scope: !928, file: !928, line: 162, type: !1024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1086 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1087, line: 1125)
!1087 = !DISubprogram(name: "ilogb", scope: !928, file: !928, line: 306, type: !1088, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!81, !107}
!1090 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1091, line: 1126)
!1091 = !DISubprogram(name: "ilogbf", scope: !928, file: !928, line: 306, type: !1092, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!81, !261}
!1094 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1095, line: 1127)
!1095 = !DISubprogram(name: "ilogbl", scope: !928, file: !928, line: 306, type: !1096, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!81, !266}
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1099, line: 1129)
!1099 = !DISubprogram(name: "lgamma", scope: !928, file: !928, line: 261, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1101, line: 1130)
!1101 = !DISubprogram(name: "lgammaf", scope: !928, file: !928, line: 261, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1103, line: 1131)
!1103 = !DISubprogram(name: "lgammal", scope: !928, file: !928, line: 261, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1105, line: 1134)
!1105 = !DISubprogram(name: "llrint", scope: !928, file: !928, line: 337, type: !1106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!232, !107}
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1109, line: 1135)
!1109 = !DISubprogram(name: "llrintf", scope: !928, file: !928, line: 337, type: !1110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!232, !261}
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1113, line: 1136)
!1113 = !DISubprogram(name: "llrintl", scope: !928, file: !928, line: 337, type: !1114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!232, !266}
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1117, line: 1138)
!1117 = !DISubprogram(name: "llround", scope: !928, file: !928, line: 343, type: !1106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1119, line: 1139)
!1119 = !DISubprogram(name: "llroundf", scope: !928, file: !928, line: 343, type: !1110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1121, line: 1140)
!1121 = !DISubprogram(name: "llroundl", scope: !928, file: !928, line: 343, type: !1114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1123, line: 1143)
!1123 = !DISubprogram(name: "log1p", scope: !928, file: !928, line: 131, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1125, line: 1144)
!1125 = !DISubprogram(name: "log1pf", scope: !928, file: !928, line: 131, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1127, line: 1145)
!1127 = !DISubprogram(name: "log1pl", scope: !928, file: !928, line: 131, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1129, line: 1147)
!1129 = !DISubprogram(name: "log2", scope: !928, file: !928, line: 144, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1131, line: 1148)
!1131 = !DISubprogram(name: "log2f", scope: !928, file: !928, line: 144, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1133, line: 1149)
!1133 = !DISubprogram(name: "log2l", scope: !928, file: !928, line: 144, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1135, line: 1151)
!1135 = !DISubprogram(name: "logb", scope: !928, file: !928, line: 134, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1137, line: 1152)
!1137 = !DISubprogram(name: "logbf", scope: !928, file: !928, line: 134, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1139, line: 1153)
!1139 = !DISubprogram(name: "logbl", scope: !928, file: !928, line: 134, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1141, line: 1155)
!1141 = !DISubprogram(name: "lrint", scope: !928, file: !928, line: 335, type: !1142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!90, !107}
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1145, line: 1156)
!1145 = !DISubprogram(name: "lrintf", scope: !928, file: !928, line: 335, type: !1146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!90, !261}
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1149, line: 1157)
!1149 = !DISubprogram(name: "lrintl", scope: !928, file: !928, line: 335, type: !1150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!90, !266}
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1153, line: 1159)
!1153 = !DISubprogram(name: "lround", scope: !928, file: !928, line: 341, type: !1142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1155, line: 1160)
!1155 = !DISubprogram(name: "lroundf", scope: !928, file: !928, line: 341, type: !1146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1157, line: 1161)
!1157 = !DISubprogram(name: "lroundl", scope: !928, file: !928, line: 341, type: !1150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1159, line: 1163)
!1159 = !DISubprogram(name: "nan", scope: !928, file: !928, line: 228, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1161, line: 1164)
!1161 = !DISubprogram(name: "nanf", scope: !928, file: !928, line: 228, type: !1162, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!261, !108}
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1165, line: 1165)
!1165 = !DISubprogram(name: "nanl", scope: !928, file: !928, line: 228, type: !1166, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!266, !108}
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1169, line: 1167)
!1169 = !DISubprogram(name: "nearbyint", scope: !928, file: !928, line: 315, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1171, line: 1168)
!1171 = !DISubprogram(name: "nearbyintf", scope: !928, file: !928, line: 315, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1173, line: 1169)
!1173 = !DISubprogram(name: "nearbyintl", scope: !928, file: !928, line: 315, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1175, line: 1171)
!1175 = !DISubprogram(name: "nextafter", scope: !928, file: !928, line: 292, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1177, line: 1172)
!1177 = !DISubprogram(name: "nextafterf", scope: !928, file: !928, line: 292, type: !1020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1179, line: 1173)
!1179 = !DISubprogram(name: "nextafterl", scope: !928, file: !928, line: 292, type: !1024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1181, line: 1175)
!1181 = !DISubprogram(name: "nexttoward", scope: !928, file: !928, line: 294, type: !1182, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!107, !107, !266}
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1185, line: 1176)
!1185 = !DISubprogram(name: "nexttowardf", scope: !928, file: !928, line: 294, type: !1186, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!261, !261, !266}
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1189, line: 1177)
!1189 = !DISubprogram(name: "nexttowardl", scope: !928, file: !928, line: 294, type: !1024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1191, line: 1179)
!1191 = !DISubprogram(name: "remainder", scope: !928, file: !928, line: 298, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1193, line: 1180)
!1193 = !DISubprogram(name: "remainderf", scope: !928, file: !928, line: 298, type: !1020, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1195, line: 1181)
!1195 = !DISubprogram(name: "remainderl", scope: !928, file: !928, line: 298, type: !1024, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1197, line: 1183)
!1197 = !DISubprogram(name: "remquo", scope: !928, file: !928, line: 328, type: !1198, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!107, !107, !107, !957}
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1201, line: 1184)
!1201 = !DISubprogram(name: "remquof", scope: !928, file: !928, line: 328, type: !1202, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!261, !261, !261, !957}
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1205, line: 1185)
!1205 = !DISubprogram(name: "remquol", scope: !928, file: !928, line: 328, type: !1206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!266, !266, !266, !957}
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1209, line: 1187)
!1209 = !DISubprogram(name: "rint", scope: !928, file: !928, line: 289, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1211, line: 1188)
!1211 = !DISubprogram(name: "rintf", scope: !928, file: !928, line: 289, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1213, line: 1189)
!1213 = !DISubprogram(name: "rintl", scope: !928, file: !928, line: 289, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1215, line: 1191)
!1215 = !DISubprogram(name: "round", scope: !928, file: !928, line: 319, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1217, line: 1192)
!1217 = !DISubprogram(name: "roundf", scope: !928, file: !928, line: 319, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1219, line: 1193)
!1219 = !DISubprogram(name: "roundl", scope: !928, file: !928, line: 319, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1221, line: 1195)
!1221 = !DISubprogram(name: "scalbln", scope: !928, file: !928, line: 311, type: !1222, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!107, !107, !90}
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1225, line: 1196)
!1225 = !DISubprogram(name: "scalblnf", scope: !928, file: !928, line: 311, type: !1226, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!261, !261, !90}
!1228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1229, line: 1197)
!1229 = !DISubprogram(name: "scalblnl", scope: !928, file: !928, line: 311, type: !1230, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!266, !266, !90}
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1233, line: 1199)
!1233 = !DISubprogram(name: "scalbn", scope: !928, file: !928, line: 302, type: !960, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1235, line: 1200)
!1235 = !DISubprogram(name: "scalbnf", scope: !928, file: !928, line: 302, type: !1236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!261, !261, !81}
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1239, line: 1201)
!1239 = !DISubprogram(name: "scalbnl", scope: !928, file: !928, line: 302, type: !1240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!266, !266, !81}
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1243, line: 1203)
!1243 = !DISubprogram(name: "tgamma", scope: !928, file: !928, line: 268, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1245, line: 1204)
!1245 = !DISubprogram(name: "tgammaf", scope: !928, file: !928, line: 268, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1247, line: 1205)
!1247 = !DISubprogram(name: "tgammal", scope: !928, file: !928, line: 268, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1249, line: 1207)
!1249 = !DISubprogram(name: "trunc", scope: !928, file: !928, line: 323, type: !929, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1251, line: 1208)
!1251 = !DISubprogram(name: "truncf", scope: !928, file: !928, line: 323, type: !992, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1253, line: 1209)
!1253 = !DISubprogram(name: "truncl", scope: !928, file: !928, line: 323, type: !996, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1254 = !{i32 2, !"Dwarf Version", i32 4}
!1255 = !{i32 2, !"Debug Info Version", i32 3}
!1256 = !{!1257, !1257, i64 0}
!1257 = !{!"long", !1258, i64 0}
!1258 = !{!"omnipotent char", !1259, i64 0}
!1259 = !{!"Simple C++ TBAA"}
!1260 = !{!1261, !1258, i64 2065}
!1261 = !{!"_ZTS5State", !1258, i64 16, !1262, i64 2064, !1258, i64 2080, !1263, i64 2088, !1265, i64 2112, !1267, i64 2208, !1268, i64 2480, !1269, i64 2608, !1270, i64 2736, !1258, i64 2760, !1258, i64 2768}
!1262 = !{!"_ZTS10ArithFlags", !1258, i64 0, !1258, i64 1, !1258, i64 2, !1258, i64 3, !1258, i64 4, !1258, i64 5, !1258, i64 6, !1258, i64 7, !1258, i64 8, !1258, i64 9, !1258, i64 10, !1258, i64 11, !1258, i64 12, !1258, i64 13, !1258, i64 14, !1258, i64 15}
!1263 = !{!"_ZTS8Segments", !1264, i64 0, !1258, i64 2, !1264, i64 4, !1258, i64 6, !1264, i64 8, !1258, i64 10, !1264, i64 12, !1258, i64 14, !1264, i64 16, !1258, i64 18, !1264, i64 20, !1258, i64 22}
!1264 = !{!"short", !1258, i64 0}
!1265 = !{!"_ZTS12AddressSpace", !1257, i64 0, !1266, i64 8, !1257, i64 16, !1266, i64 24, !1257, i64 32, !1266, i64 40, !1257, i64 48, !1266, i64 56, !1257, i64 64, !1266, i64 72, !1257, i64 80, !1266, i64 88}
!1266 = !{!"_ZTS3Reg", !1258, i64 0}
!1267 = !{!"_ZTS3GPR", !1257, i64 0, !1266, i64 8, !1257, i64 16, !1266, i64 24, !1257, i64 32, !1266, i64 40, !1257, i64 48, !1266, i64 56, !1257, i64 64, !1266, i64 72, !1257, i64 80, !1266, i64 88, !1257, i64 96, !1266, i64 104, !1257, i64 112, !1266, i64 120, !1257, i64 128, !1266, i64 136, !1257, i64 144, !1266, i64 152, !1257, i64 160, !1266, i64 168, !1257, i64 176, !1266, i64 184, !1257, i64 192, !1266, i64 200, !1257, i64 208, !1266, i64 216, !1257, i64 224, !1266, i64 232, !1257, i64 240, !1266, i64 248, !1257, i64 256, !1266, i64 264}
!1268 = !{!"_ZTS8X87Stack", !1258, i64 0}
!1269 = !{!"_ZTS3MMX", !1258, i64 0}
!1270 = !{!"_ZTS14FPUStatusFlags", !1258, i64 0, !1258, i64 1, !1258, i64 2, !1258, i64 3, !1258, i64 4, !1258, i64 5, !1258, i64 6, !1258, i64 7, !1258, i64 8, !1258, i64 9, !1258, i64 10, !1258, i64 11, !1258, i64 12, !1258, i64 13, !1258, i64 14, !1258, i64 15, !1258, i64 16, !1258, i64 17, !1258, i64 18, !1258, i64 19, !1258, i64 20}
!1271 = !{!1261, !1258, i64 2067}
!1272 = !{!1261, !1258, i64 2069}
!1273 = !{!1261, !1258, i64 2071}
!1274 = !{!1261, !1258, i64 2073}
!1275 = !{!1261, !1258, i64 2077}
!1276 = !{!1258, !1258, i64 0}