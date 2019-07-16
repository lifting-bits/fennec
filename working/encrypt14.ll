; ModuleID = 'encrypt14.bc'
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
@seg_401450__rodata =  constant %seg_401450__rodata_type <{ [4 x i8] c"\01\00\02\00", [17 x i8] c"0123456789012345\00", [35 x i8] c"16807282475249162265007398494365\00/\00", [45 x i8] c"0b039286d997a33c9e463b296e4dc7be4c666390cc85\00", [185 x i8] c"Um9sbGluJyBpbiBteSA1LjAKV2l0aCBteSByYWctdG9wIGRvd24gc28gbXkgaGFpciBjYW4gYmxvdwpUaGUgZ2lybGllcyBvbiBzdGFuZGJ5IHdhdmluZyBqdXN0IHRvIHNheSBoaQpEaWQgeW91IHN0b3A/IE5vLCBJIGp1c3QgZHJvdmUgYnkK\00", [3 x i8] c"%s\00", [2 x i8] c"\0A\00", [3 x i8] c"%d\00", [21 x i8] c"*length == decodeLen\00", [35 x i8] c"/home/aditi/ToB-new/base64decode.c\00", [44 x i8] c"int Base64Decode(char *, char **, size_t *)\00" }>
@seg_601ff8__got =  global %seg_601ff8__got_type <{ i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@0 =  constant void ()* @__mcsema_attach_call
@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@1 =  constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400e00_main
@2 =  constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400d00_encrypt
@3 =  constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_401120_Base64Encode
@4 =  constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_401210_calcDecodeLength
@5 =  constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400df0_generate_iv
@6 =  constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_401444__term_proc
@7 =  constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400ce0_handleErrors
@8 =  constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400a38__init_proc
@9 =  constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4012b0_Base64Decode

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
define  %struct.Memory* @sub_400e00_main(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
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
  %16 = load i64, i64* %14, align 8
  %17 = load i64, i64* %13, align 8, !tbaa !1256
  %18 = add i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  store i64 %16, i64* %19
  store i64 %18, i64* %14, align 8, !tbaa !1256
  %20 = add i64 %17, -296
  %21 = icmp ult i64 %18, 288
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1, !tbaa !1260
  %24 = trunc i64 %20 to i32
  %25 = and i32 %24, 255
  %26 = tail call i32 @llvm.ctpop.i32(i32 %25) #8
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1, !tbaa !1271
  %31 = xor i64 %18, %20
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
  %42 = lshr i64 %18, 63
  %43 = xor i64 %39, %42
  %44 = add nuw nsw i64 %43, %42
  %45 = icmp eq i64 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1, !tbaa !1275
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 286), i64* %8, align 8, !tbaa !1256
  %48 = add i64 %17, -12
  %49 = inttoptr i64 %48 to i32*
  store i32 0, i32* %49
  %50 = add i64 %17, -16
  %51 = load i32, i32* %7, align 4
  %52 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %52
  %53 = add i64 %17, -24
  %54 = load i64, i64* %11, align 8
  %55 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %55
  %56 = add i64 %17, -32
  %57 = inttoptr i64 %56 to i64*
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 21), i64* %57
  %58 = add i64 %17, -200
  %59 = inttoptr i64 %58 to i64*
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 286), i64* %59
  %60 = add i64 %pc, -16
  %61 = add i64 %pc, 55
  %62 = add i64 %17, -304
  %63 = inttoptr i64 %62 to i64*
  store i64 %61, i64* %63
  store i64 %62, i64* %13, align 8, !tbaa !1256
  store i64 %60, i64* %0, align 8, !tbaa !1256
  %64 = call %struct.Memory* @sub_4006b0_replacement(%struct.State* %state2, i64 %60, %struct.Memory* %memory1)
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, -32
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %0, align 8
  %69 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %69
  %70 = add i64 %65, -40
  %71 = inttoptr i64 %70 to i64*
  store i64 16, i64* %71
  %72 = add i64 %65, -48
  %73 = inttoptr i64 %72 to i64*
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 54), i64* %73
  %74 = add i64 %65, -56
  %75 = inttoptr i64 %74 to i64*
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 56), i64* %75
  %76 = add i64 %65, -64
  %77 = inttoptr i64 %76 to i64*
  store i64 22, i64* %77
  %78 = add i64 %65, -72
  %79 = inttoptr i64 %78 to i64*
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 101), i64* %79
  store i64 and (i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 101), i64 4294967295), i64* %12, align 8, !tbaa !1256
  %80 = add i64 %65, -80
  store i64 %80, i64* %11, align 8, !tbaa !1256
  %81 = add i64 %65, -88
  store i64 %81, i64* %10, align 8, !tbaa !1256
  %82 = add i64 %68, 1145
  %83 = add i64 %68, 62
  %84 = load i64, i64* %13, align 8, !tbaa !1256
  %85 = add i64 %84, -8
  %86 = inttoptr i64 %85 to i64*
  store i64 %83, i64* %86
  store i64 %85, i64* %13, align 8, !tbaa !1256
  store i64 %82, i64* %0, align 8, !tbaa !1256
  %87 = tail call %struct.Memory* @sub_4012b0_Base64Decode(%struct.State* nonnull %state2, i64 %82, %struct.Memory* %64)
  %88 = load i64, i64* %14, align 8
  %89 = add i64 %88, -16
  %90 = load i64, i64* %0, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91
  %93 = add i64 %92, 8
  %94 = inttoptr i64 %93 to i64*
  %95 = load i64, i64* %94
  %96 = add i64 %88, -96
  %97 = inttoptr i64 %96 to i64*
  store i64 %95, i64* %97
  %98 = add i64 %88, -104
  store i64 %98, i64* %11, align 8, !tbaa !1256
  %99 = add i64 %88, -112
  %100 = add i64 %88, -200
  %101 = inttoptr i64 %100 to i64*
  store i64 %99, i64* %101
  store i64 %95, i64* %12, align 8, !tbaa !1256
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102
  store i64 %103, i64* %10, align 8, !tbaa !1256
  %104 = add i64 %88, -204
  %105 = load i32, i32* %5, align 4
  %106 = inttoptr i64 %104 to i32*
  store i32 %105, i32* %106
  %107 = add i64 %90, 1083
  %108 = add i64 %90, 48
  %109 = load i64, i64* %13, align 8, !tbaa !1256
  %110 = add i64 %109, -8
  %111 = inttoptr i64 %110 to i64*
  store i64 %108, i64* %111
  store i64 %110, i64* %13, align 8, !tbaa !1256
  store i64 %107, i64* %0, align 8, !tbaa !1256
  %112 = tail call %struct.Memory* @sub_4012b0_Base64Decode(%struct.State* nonnull %state2, i64 %107, %struct.Memory* %87)
  %113 = load i64, i64* %14, align 8
  %114 = add i64 %113, -64
  %115 = load i64, i64* %0, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116
  %118 = add i64 %113, -112
  %119 = inttoptr i64 %118 to i64*
  %120 = load i64, i64* %119
  %121 = add i64 %117, %120
  %122 = add i64 %113, -88
  %123 = inttoptr i64 %122 to i64*
  %124 = load i64, i64* %123
  %125 = load i64, i64* %13, align 8
  %126 = add i64 %113, -120
  %127 = inttoptr i64 %126 to i64*
  store i64 %125, i64* %127
  %128 = add i64 %124, 16
  %129 = add i64 %128, %121
  %130 = and i64 %129, -16
  %131 = sub i64 %125, %130
  %132 = icmp ult i64 %125, %130
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %23, align 1, !tbaa !1260
  %134 = trunc i64 %131 to i32
  %135 = and i32 %134, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135) #8
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %30, align 1, !tbaa !1271
  %140 = xor i64 %129, %125
  %141 = xor i64 %140, %131
  %142 = lshr i64 %141, 4
  %143 = trunc i64 %142 to i8
  %144 = and i8 %143, 1
  store i8 %144, i8* %35, align 1, !tbaa !1272
  %145 = icmp eq i64 %131, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %38, align 1, !tbaa !1273
  %147 = lshr i64 %131, 63
  %148 = trunc i64 %147 to i8
  store i8 %148, i8* %41, align 1, !tbaa !1274
  %149 = lshr i64 %125, 63
  %150 = lshr i64 %129, 63
  %151 = xor i64 %150, %149
  %152 = xor i64 %147, %149
  %153 = add nuw nsw i64 %152, %151
  %154 = icmp eq i64 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %47, align 1, !tbaa !1275
  %156 = load i64, i64* %14, align 8
  %157 = add i64 %156, -56
  %158 = inttoptr i64 %157 to i64*
  %159 = load i64, i64* %158
  %160 = add i64 %156, -64
  %161 = inttoptr i64 %160 to i64*
  %162 = load i64, i64* %161
  %163 = add i64 %156, -216
  %164 = inttoptr i64 %163 to i64*
  store i64 %162, i64* %164
  store i64 %131, i64* %12, align 8, !tbaa !1256
  %165 = add i64 %156, -224
  %166 = inttoptr i64 %165 to i64*
  store i64 %131, i64* %166
  store i64 %159, i64* %11, align 8, !tbaa !1256
  %167 = inttoptr i64 %163 to i64*
  %168 = load i64, i64* %167
  store i64 %168, i64* %10, align 8, !tbaa !1256
  %169 = add i64 %156, -228
  %170 = load i32, i32* %5, align 4
  %171 = inttoptr i64 %169 to i32*
  store i32 %170, i32* %171
  %172 = add i64 %115, -709
  %173 = add i64 %115, 86
  %174 = add i64 %131, -8
  %175 = inttoptr i64 %174 to i64*
  store i64 %173, i64* %175
  store i64 %174, i64* %13, align 8, !tbaa !1256
  store i64 %172, i64* %0, align 8, !tbaa !1256
  %176 = tail call fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State* nonnull %state2, %struct.Memory* %112) #8
  %177 = load i64, i64* %14, align 8
  %178 = add i64 %177, -64
  %179 = load i64, i64* %0, align 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180
  %182 = add i64 %177, -224
  %183 = inttoptr i64 %182 to i64*
  %184 = load i64, i64* %183
  %185 = add i64 %181, %184
  %186 = icmp ult i64 %185, %184
  %187 = icmp ult i64 %185, %181
  %188 = or i1 %186, %187
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %23, align 1, !tbaa !1260
  %190 = trunc i64 %185 to i32
  %191 = and i32 %190, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191) #8
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %30, align 1, !tbaa !1271
  %196 = xor i64 %181, %184
  %197 = xor i64 %196, %185
  %198 = lshr i64 %197, 4
  %199 = trunc i64 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %35, align 1, !tbaa !1272
  %201 = icmp eq i64 %185, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %38, align 1, !tbaa !1273
  %203 = lshr i64 %185, 63
  %204 = trunc i64 %203 to i8
  store i8 %204, i8* %41, align 1, !tbaa !1274
  %205 = lshr i64 %184, 63
  %206 = lshr i64 %181, 63
  %207 = xor i64 %203, %205
  %208 = xor i64 %203, %206
  %209 = add nuw nsw i64 %207, %208
  %210 = icmp eq i64 %209, 2
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %47, align 1, !tbaa !1275
  %212 = add i64 %177, -104
  %213 = inttoptr i64 %212 to i64*
  %214 = load i64, i64* %213
  %215 = add i64 %177, -112
  %216 = inttoptr i64 %215 to i64*
  %217 = load i64, i64* %216
  %218 = add i64 %177, -240
  %219 = inttoptr i64 %218 to i64*
  store i64 %217, i64* %219
  store i64 %185, i64* %12, align 8, !tbaa !1256
  store i64 %214, i64* %11, align 8, !tbaa !1256
  %220 = inttoptr i64 %218 to i64*
  %221 = load i64, i64* %220
  store i64 %221, i64* %10, align 8, !tbaa !1256
  %222 = add i64 %179, -795
  %223 = add i64 %179, 47
  %224 = load i64, i64* %13, align 8, !tbaa !1256
  %225 = add i64 %224, -8
  %226 = inttoptr i64 %225 to i64*
  store i64 %223, i64* %226
  store i64 %225, i64* %13, align 8, !tbaa !1256
  store i64 %222, i64* %0, align 8, !tbaa !1256
  %227 = tail call fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State* nonnull %state2, %struct.Memory* %176) #8
  %228 = load i64, i64* %14, align 8
  %229 = add i64 %228, -64
  %230 = load i64, i64* %0, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231
  %233 = add i64 %228, -224
  %234 = inttoptr i64 %233 to i64*
  %235 = load i64, i64* %234
  %236 = add i64 %232, %235
  %237 = add i64 %228, -112
  %238 = inttoptr i64 %237 to i64*
  %239 = load i64, i64* %238
  %240 = add i64 %236, %239
  %241 = icmp ult i64 %240, %236
  %242 = icmp ult i64 %240, %239
  %243 = or i1 %241, %242
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %23, align 1, !tbaa !1260
  %245 = add i64 %228, -80
  %246 = inttoptr i64 %245 to i64*
  %247 = load i64, i64* %246
  %248 = add i64 %228, -88
  %249 = inttoptr i64 %248 to i64*
  %250 = load i64, i64* %249
  %251 = add i64 %250, 1
  %252 = trunc i64 %251 to i32
  %253 = and i32 %252, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253) #8
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %30, align 1, !tbaa !1271
  %258 = xor i64 %251, %250
  %259 = lshr i64 %258, 4
  %260 = trunc i64 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %35, align 1, !tbaa !1272
  %262 = icmp eq i64 %251, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %38, align 1, !tbaa !1273
  %264 = lshr i64 %251, 63
  %265 = trunc i64 %264 to i8
  store i8 %265, i8* %41, align 1, !tbaa !1274
  %266 = lshr i64 %250, 63
  %267 = xor i64 %264, %266
  %268 = add nuw nsw i64 %267, %264
  %269 = icmp eq i64 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %47, align 1, !tbaa !1275
  %271 = load i64, i64* %14, align 8
  %272 = add i64 %271, -248
  %273 = inttoptr i64 %272 to i64*
  store i64 %251, i64* %273
  store i64 %240, i64* %12, align 8, !tbaa !1256
  store i64 %247, i64* %11, align 8, !tbaa !1256
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274
  store i64 %275, i64* %10, align 8, !tbaa !1256
  %276 = add i64 %230, -842
  %277 = add i64 %230, 57
  %278 = load i64, i64* %13, align 8, !tbaa !1256
  %279 = add i64 %278, -8
  %280 = inttoptr i64 %279 to i64*
  store i64 %277, i64* %280
  store i64 %279, i64* %13, align 8, !tbaa !1256
  store i64 %276, i64* %0, align 8, !tbaa !1256
  %281 = tail call fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State* nonnull %state2, %struct.Memory* %227) #8
  %282 = load i64, i64* %14, align 8
  %283 = add i64 %282, -224
  %284 = load i64, i64* %0, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285
  %287 = add i64 %282, -128
  %288 = inttoptr i64 %287 to i64*
  store i64 %286, i64* %288
  %289 = add i64 %282, -64
  %290 = inttoptr i64 %289 to i64*
  %291 = load i64, i64* %290
  %292 = add i64 %282, -112
  %293 = inttoptr i64 %292 to i64*
  %294 = load i64, i64* %293
  %295 = add i64 %291, %294
  %296 = add i64 %282, -88
  %297 = inttoptr i64 %296 to i64*
  %298 = load i64, i64* %297
  %299 = add i64 %298, 1
  %300 = add i64 %299, %295
  %301 = add i64 %282, -136
  %302 = inttoptr i64 %301 to i64*
  store i64 %300, i64* %302
  %303 = add i64 %298, 16
  %304 = add i64 %303, %295
  %305 = and i64 %304, -16
  %306 = load i64, i64* %13, align 8
  %307 = sub i64 %306, %305
  %308 = icmp ult i64 %306, %305
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %23, align 1, !tbaa !1260
  %310 = trunc i64 %307 to i32
  %311 = and i32 %310, 255
  %312 = tail call i32 @llvm.ctpop.i32(i32 %311) #8
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  store i8 %315, i8* %30, align 1, !tbaa !1271
  %316 = xor i64 %304, %306
  %317 = xor i64 %316, %307
  %318 = lshr i64 %317, 4
  %319 = trunc i64 %318 to i8
  %320 = and i8 %319, 1
  store i8 %320, i8* %35, align 1, !tbaa !1272
  %321 = icmp eq i64 %307, 0
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %38, align 1, !tbaa !1273
  %323 = lshr i64 %307, 63
  %324 = trunc i64 %323 to i8
  store i8 %324, i8* %41, align 1, !tbaa !1274
  %325 = lshr i64 %306, 63
  %326 = lshr i64 %304, 63
  %327 = xor i64 %326, %325
  %328 = xor i64 %323, %325
  %329 = add nuw nsw i64 %328, %327
  %330 = icmp eq i64 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %47, align 1, !tbaa !1275
  %332 = load i64, i64* %14, align 8
  %333 = add i64 %332, -128
  %334 = inttoptr i64 %333 to i64*
  %335 = load i64, i64* %334
  store i64 %335, i64* %12, align 8, !tbaa !1256
  %336 = add i64 %332, -136
  %337 = inttoptr i64 %336 to i32*
  %338 = load i32, i32* %337
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %8, align 8, !tbaa !1256
  %340 = add i64 %332, -24
  %341 = inttoptr i64 %340 to i64*
  %342 = load i64, i64* %341
  store i64 %342, i64* %10, align 8, !tbaa !1256
  %343 = add i64 %332, -32
  %344 = inttoptr i64 %343 to i64*
  %345 = load i64, i64* %344
  store i64 %345, i64* %9, align 8, !tbaa !1256
  %346 = add i64 %332, -256
  %347 = inttoptr i64 %346 to i64*
  store i64 %307, i64* %347
  store i64 %339, i64* %11, align 8, !tbaa !1256
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348
  store i64 %349, i64* %15, align 8, !tbaa !1256
  %350 = add i64 %284, -611
  %351 = add i64 %284, 95
  %352 = add i64 %307, -8
  %353 = inttoptr i64 %352 to i64*
  store i64 %351, i64* %353
  store i64 %352, i64* %13, align 8, !tbaa !1256
  store i64 %350, i64* %0, align 8, !tbaa !1256
  %354 = tail call %struct.Memory* @sub_400d00_encrypt(%struct.State* nonnull %state2, i64 %350, %struct.Memory* %281)
  %355 = load i64, i64* %14, align 8
  %356 = add i64 %355, -140
  %357 = load i32, i32* %5, align 4
  %358 = load i64, i64* %0, align 8
  %359 = inttoptr i64 %356 to i32*
  store i32 %357, i32* %359
  %360 = add i64 %355, -256
  %361 = inttoptr i64 %360 to i64*
  %362 = load i64, i64* %361
  store i64 %362, i64* %9, align 8, !tbaa !1256
  %363 = add i64 %355, -160
  %364 = inttoptr i64 %363 to i64*
  store i64 %362, i64* %364
  %365 = inttoptr i64 %356 to i32*
  %366 = load i32, i32* %365
  %367 = sext i32 %366 to i64
  store i64 %367, i64* %11, align 8, !tbaa !1256
  %368 = add i64 %355, -152
  store i64 %368, i64* %10, align 8, !tbaa !1256
  store i64 %362, i64* %12, align 8, !tbaa !1256
  %369 = add i64 %358, 350
  %370 = add i64 %358, 42
  %371 = load i64, i64* %13, align 8, !tbaa !1256
  %372 = add i64 %371, -8
  %373 = inttoptr i64 %372 to i64*
  store i64 %370, i64* %373
  store i64 %372, i64* %13, align 8, !tbaa !1256
  store i64 %369, i64* %0, align 8, !tbaa !1256
  %374 = tail call %struct.Memory* @sub_401120_Base64Encode(%struct.State* nonnull %state2, i64 %369, %struct.Memory* %354)
  %375 = load i64, i64* %14, align 8
  %376 = add i64 %375, -32
  %377 = load i64, i64* %0, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378
  store i64 %379, i64* %9, align 8, !tbaa !1256
  %380 = add i64 %375, -176
  %381 = inttoptr i64 %380 to i64*
  store i64 %379, i64* %381
  %382 = add i64 %375, -40
  %383 = inttoptr i64 %382 to i64*
  %384 = load i64, i64* %383
  store i64 %384, i64* %11, align 8, !tbaa !1256
  %385 = add i64 %375, -168
  store i64 %385, i64* %10, align 8, !tbaa !1256
  store i64 %379, i64* %12, align 8, !tbaa !1256
  %386 = add i64 %375, -260
  %387 = load i32, i32* %5, align 4
  %388 = inttoptr i64 %386 to i32*
  store i32 %387, i32* %388
  %389 = add i64 %377, 308
  %390 = add i64 %377, 36
  %391 = load i64, i64* %13, align 8, !tbaa !1256
  %392 = add i64 %391, -8
  %393 = inttoptr i64 %392 to i64*
  store i64 %390, i64* %393
  store i64 %392, i64* %13, align 8, !tbaa !1256
  store i64 %389, i64* %0, align 8, !tbaa !1256
  %394 = tail call %struct.Memory* @sub_401120_Base64Encode(%struct.State* nonnull %state2, i64 %389, %struct.Memory* %374)
  %395 = load i64, i64* %14, align 8
  %396 = add i64 %395, -152
  %397 = load i64, i64* %0, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398
  store i64 %399, i64* %12, align 8, !tbaa !1256
  %400 = add i64 %395, -264
  %401 = load i32, i32* %5, align 4
  %402 = inttoptr i64 %400 to i32*
  store i32 %401, i32* %402
  %403 = add i64 %397, -1248
  %404 = add i64 %397, 18
  %405 = load i64, i64* %13, align 8, !tbaa !1256
  %406 = add i64 %405, -8
  %407 = inttoptr i64 %406 to i64*
  store i64 %404, i64* %407
  store i64 %406, i64* %13, align 8, !tbaa !1256
  store i64 %403, i64* %0, align 8, !tbaa !1256
  %408 = tail call fastcc %struct.Memory* @ext_400b30_strlen(%struct.State* nonnull %state2, %struct.Memory* %394) #8
  %409 = load i64, i64* %14, align 8
  %410 = add i64 %409, -184
  %411 = load i64, i64* %8, align 8
  %412 = load i64, i64* %0, align 8
  %413 = inttoptr i64 %410 to i64*
  store i64 %411, i64* %413
  %414 = add i64 %409, -40
  %415 = inttoptr i64 %414 to i64*
  store i64 24, i64* %415
  %416 = inttoptr i64 %410 to i64*
  %417 = load i64, i64* %416
  %418 = add i64 %417, 41
  %419 = and i64 %418, -16
  store i64 %419, i64* %8, align 8, !tbaa !1256
  %420 = load i64, i64* %13, align 8
  %421 = sub i64 %420, %419
  store i64 %421, i64* %9, align 8, !tbaa !1256
  %422 = icmp ult i64 %420, %419
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %23, align 1, !tbaa !1260
  %424 = trunc i64 %421 to i32
  %425 = and i32 %424, 255
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425) #8
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %30, align 1, !tbaa !1271
  %430 = xor i64 %418, %420
  %431 = xor i64 %430, %421
  %432 = lshr i64 %431, 4
  %433 = trunc i64 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %35, align 1, !tbaa !1272
  %435 = icmp eq i64 %421, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %38, align 1, !tbaa !1273
  %437 = lshr i64 %421, 63
  %438 = trunc i64 %437 to i8
  store i8 %438, i8* %41, align 1, !tbaa !1274
  %439 = lshr i64 %420, 63
  %440 = lshr i64 %418, 63
  %441 = xor i64 %440, %439
  %442 = xor i64 %437, %439
  %443 = add nuw nsw i64 %442, %441
  %444 = icmp eq i64 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %47, align 1, !tbaa !1275
  %446 = load i64, i64* %14, align 8
  %447 = add i64 %446, -168
  %448 = inttoptr i64 %447 to i64*
  %449 = load i64, i64* %448
  store i64 %449, i64* %11, align 8, !tbaa !1256
  %450 = add i64 %446, -40
  %451 = inttoptr i64 %450 to i64*
  %452 = load i64, i64* %451
  store i64 %452, i64* %10, align 8, !tbaa !1256
  store i64 %421, i64* %12, align 8, !tbaa !1256
  %453 = add i64 %446, -272
  %454 = inttoptr i64 %453 to i64*
  store i64 %421, i64* %454
  %455 = add i64 %412, -1090
  %456 = add i64 %412, 65
  %457 = add i64 %421, -8
  %458 = inttoptr i64 %457 to i64*
  store i64 %456, i64* %458
  store i64 %457, i64* %13, align 8, !tbaa !1256
  store i64 %455, i64* %0, align 8, !tbaa !1256
  %459 = tail call fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State* nonnull %state2, %struct.Memory* %408) #8
  %460 = load i64, i64* %14, align 8
  %461 = add i64 %460, -40
  %462 = load i64, i64* %0, align 8
  %463 = inttoptr i64 %461 to i64*
  %464 = load i64, i64* %463
  %465 = add i64 %460, -48
  %466 = inttoptr i64 %465 to i64*
  %467 = load i64, i64* %466
  %468 = inttoptr i64 %467 to i8*
  %469 = load i8, i8* %468
  store i8 %469, i8* %4, align 1, !tbaa !1276
  %470 = add i64 %460, -272
  %471 = inttoptr i64 %470 to i64*
  %472 = load i64, i64* %471
  %473 = add i64 %464, %472
  %474 = inttoptr i64 %473 to i8*
  store i8 %469, i8* %474
  %475 = inttoptr i64 %461 to i64*
  %476 = load i64, i64* %475
  %477 = add i64 %476, %472
  %478 = add i64 %477, 1
  store i64 %478, i64* %9, align 8, !tbaa !1256
  %479 = add i64 %460, -152
  %480 = inttoptr i64 %479 to i64*
  %481 = load i64, i64* %480
  store i64 %481, i64* %11, align 8, !tbaa !1256
  %482 = add i64 %460, -184
  %483 = inttoptr i64 %482 to i64*
  %484 = load i64, i64* %483
  %485 = add i64 %484, 1
  store i64 %485, i64* %8, align 8, !tbaa !1256
  %486 = icmp eq i64 %484, -1
  %487 = icmp eq i64 %485, 0
  %488 = or i1 %486, %487
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %23, align 1, !tbaa !1260
  %490 = trunc i64 %485 to i32
  %491 = and i32 %490, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491) #8
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %30, align 1, !tbaa !1271
  %496 = xor i64 %485, %484
  %497 = lshr i64 %496, 4
  %498 = trunc i64 %497 to i8
  %499 = and i8 %498, 1
  store i8 %499, i8* %35, align 1, !tbaa !1272
  %500 = zext i1 %487 to i8
  store i8 %500, i8* %38, align 1, !tbaa !1273
  %501 = lshr i64 %485, 63
  %502 = trunc i64 %501 to i8
  store i8 %502, i8* %41, align 1, !tbaa !1274
  %503 = lshr i64 %484, 63
  %504 = xor i64 %501, %503
  %505 = add nuw nsw i64 %504, %501
  %506 = icmp eq i64 %505, 2
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %47, align 1, !tbaa !1275
  store i64 %478, i64* %12, align 8, !tbaa !1256
  store i64 %485, i64* %10, align 8, !tbaa !1256
  %508 = add i64 %462, -1155
  %509 = add i64 %462, 59
  %510 = load i64, i64* %13, align 8, !tbaa !1256
  %511 = add i64 %510, -8
  %512 = inttoptr i64 %511 to i64*
  store i64 %509, i64* %512
  store i64 %511, i64* %13, align 8, !tbaa !1256
  store i64 %508, i64* %0, align 8, !tbaa !1256
  %513 = tail call fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State* nonnull %state2, %struct.Memory* %459) #8
  %514 = load i64, i64* %14, align 8
  %515 = add i64 %514, -192
  %516 = load i64, i64* %0, align 8
  %517 = inttoptr i64 %515 to i64*
  %518 = load i64, i64* %517
  store i64 %518, i64* %12, align 8, !tbaa !1256
  %519 = add i64 %514, -272
  %520 = inttoptr i64 %519 to i64*
  %521 = load i64, i64* %520
  store i64 %521, i64* %11, align 8, !tbaa !1256
  store i8 0, i8* %2, align 1, !tbaa !1276
  %522 = add i64 %516, -1582
  %523 = add i64 %516, 21
  %524 = load i64, i64* %13, align 8, !tbaa !1256
  %525 = add i64 %524, -8
  %526 = inttoptr i64 %525 to i64*
  store i64 %523, i64* %526
  store i64 %525, i64* %13, align 8, !tbaa !1256
  store i64 %522, i64* %0, align 8, !tbaa !1256
  %527 = tail call fastcc %struct.Memory* @ext_400a70_printf(%struct.State* nonnull %state2, %struct.Memory* %513) #8
  %528 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 289), i64* %12, align 8, !tbaa !1256
  %529 = load i64, i64* %14, align 8
  %530 = add i64 %529, -276
  %531 = load i32, i32* %5, align 4
  %532 = inttoptr i64 %530 to i32*
  store i32 %531, i32* %532
  store i8 0, i8* %2, align 1, !tbaa !1276
  %533 = add i64 %528, -1603
  %534 = add i64 %528, 23
  %535 = load i64, i64* %13, align 8, !tbaa !1256
  %536 = add i64 %535, -8
  %537 = inttoptr i64 %536 to i64*
  store i64 %534, i64* %537
  store i64 %536, i64* %13, align 8, !tbaa !1256
  store i64 %533, i64* %0, align 8, !tbaa !1256
  %538 = tail call fastcc %struct.Memory* @ext_400a70_printf(%struct.State* nonnull %state2, %struct.Memory* %527) #8
  %539 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 291), i64* %12, align 8, !tbaa !1256
  %540 = load i64, i64* %14, align 8
  %541 = add i64 %540, -140
  %542 = inttoptr i64 %541 to i32*
  %543 = load i32, i32* %542
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %11, align 8, !tbaa !1256
  %545 = add i64 %540, -280
  %546 = load i32, i32* %5, align 4
  %547 = inttoptr i64 %545 to i32*
  store i32 %546, i32* %547
  store i8 0, i8* %2, align 1, !tbaa !1276
  %548 = add i64 %539, -1626
  %549 = add i64 %539, 29
  %550 = load i64, i64* %13, align 8, !tbaa !1256
  %551 = add i64 %550, -8
  %552 = inttoptr i64 %551 to i64*
  store i64 %549, i64* %552
  store i64 %551, i64* %13, align 8, !tbaa !1256
  store i64 %548, i64* %0, align 8, !tbaa !1256
  %553 = tail call fastcc %struct.Memory* @ext_400a70_printf(%struct.State* nonnull %state2, %struct.Memory* %538) #8
  %554 = load i64, i64* %0, align 8
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 289), i64* %12, align 8, !tbaa !1256
  %555 = load i64, i64* %14, align 8
  %556 = add i64 %555, -284
  %557 = load i32, i32* %5, align 4
  %558 = inttoptr i64 %556 to i32*
  store i32 %557, i32* %558
  store i8 0, i8* %2, align 1, !tbaa !1276
  %559 = add i64 %554, -1655
  %560 = add i64 %554, 23
  %561 = load i64, i64* %13, align 8, !tbaa !1256
  %562 = add i64 %561, -8
  %563 = inttoptr i64 %562 to i64*
  store i64 %560, i64* %563
  store i64 %562, i64* %13, align 8, !tbaa !1256
  store i64 %559, i64* %0, align 8, !tbaa !1256
  %564 = tail call fastcc %struct.Memory* @ext_400a70_printf(%struct.State* nonnull %state2, %struct.Memory* %553) #8
  %565 = load i64, i64* %14, align 8
  %566 = add i64 %565, -4
  %567 = inttoptr i64 %566 to i32*
  store i32 0, i32* %567
  %568 = add i64 %565, -120
  %569 = inttoptr i64 %568 to i64*
  %570 = load i64, i64* %569
  store i64 %570, i64* %9, align 8, !tbaa !1256
  %571 = inttoptr i64 %566 to i32*
  %572 = load i32, i32* %571
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %11, align 8, !tbaa !1256
  %574 = add i64 %565, -288
  %575 = load i32, i32* %5, align 4
  %576 = inttoptr i64 %574 to i32*
  store i32 %575, i32* %576
  store i64 %573, i64* %8, align 8, !tbaa !1256
  %577 = add i64 %565, 8
  %578 = inttoptr i64 %565 to i64*
  %579 = load i64, i64* %578
  store i64 %579, i64* %14, align 8, !tbaa !1256
  %580 = inttoptr i64 %577 to i64*
  %581 = load i64, i64* %580
  store i64 %581, i64* %0, align 8, !tbaa !1256
  %582 = add i64 %565, 16
  store i64 %582, i64* %13, align 8, !tbaa !1256
  ret %struct.Memory* %564
}

; Function Attrs: noinline nounwind
define  %struct.Memory* @sub_401210_calcDecodeLength(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_401210:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %5, align 8, !tbaa !1256
  %9 = add i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64 %7, i64* %10
  store i64 %9, i64* %6, align 8, !tbaa !1256
  %11 = add i64 %8, -40
  %12 = icmp ult i64 %9, 32
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1, !tbaa !1260
  %15 = trunc i64 %11 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #8
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !1271
  %22 = xor i64 %9, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1, !tbaa !1272
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1, !tbaa !1273
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1, !tbaa !1274
  %33 = lshr i64 %9, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1, !tbaa !1275
  %39 = add i64 %8, -16
  %40 = load i64, i64* %4, align 8
  %41 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %41
  %42 = inttoptr i64 %39 to i64*
  %43 = load i64, i64* %42
  store i64 %43, i64* %4, align 8, !tbaa !1256
  %44 = add i64 %pc, -1760
  %45 = add i64 %pc, 21
  %46 = add i64 %8, -48
  %47 = inttoptr i64 %46 to i64*
  store i64 %45, i64* %47
  store i64 %46, i64* %5, align 8, !tbaa !1256
  store i64 %44, i64* %0, align 8, !tbaa !1256
  %48 = tail call fastcc %struct.Memory* @ext_400b30_strlen(%struct.State* nonnull %state2, %struct.Memory* %memory1) #8
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* %0, align 8
  %53 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %53
  %54 = add i64 %49, -24
  %55 = inttoptr i64 %54 to i64*
  store i64 0, i64* %55
  %56 = inttoptr i64 %50 to i64*
  %57 = load i64, i64* %56
  %58 = add i64 %57, -1
  store i64 %58, i64* %1, align 8, !tbaa !1256
  %59 = add i64 %49, -8
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60
  store i64 %61, i64* %4, align 8, !tbaa !1256
  %62 = add i64 %58, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8, i8* %63
  %65 = sext i8 %64 to i64
  %66 = and i64 %65, 4294967295
  store i64 %66, i64* %2, align 8, !tbaa !1256
  %67 = sext i8 %64 to i32
  %68 = add nsw i32 %67, -61
  %69 = icmp ult i8 %64, 61
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1, !tbaa !1260
  %71 = and i32 %68, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #8
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1, !tbaa !1271
  %76 = xor i32 %67, 16
  %77 = xor i32 %76, %68
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %26, align 1, !tbaa !1272
  %81 = icmp eq i32 %68, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %29, align 1, !tbaa !1273
  %83 = lshr i32 %68, 31
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %32, align 1, !tbaa !1274
  %85 = lshr i32 %67, 31
  %86 = xor i32 %83, %85
  %87 = add nuw nsw i32 %86, %85
  %88 = icmp eq i32 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %38, align 1, !tbaa !1275
  %.v = select i1 %81, i64 37, i64 75
  %90 = add i64 %52, %.v
  store i64 %90, i64* %0, align 8, !tbaa !1256
  br i1 %81, label %block_40124a, label %block_401270

block_401296.sink.split:                          ; preds = %block_40124a, %block_401270
  %.sink11 = phi i64 [ %160, %block_40124a ], [ %130, %block_401270 ]
  %.sink9 = phi i64 [ 2, %block_40124a ], [ 1, %block_401270 ]
  %91 = add i64 %.sink11, 8
  store i64 %91, i64* %0, align 8
  %92 = inttoptr i64 %54 to i64*
  store i64 %.sink9, i64* %92
  br label %block_401296

block_401296:                                     ; preds = %block_401270, %block_401296.sink.split
  %.sink = phi %struct.Memory* [ %48, %block_401270 ], [ %48, %block_401296.sink.split ]
  %93 = inttoptr i64 %50 to i64*
  %94 = load i64, i64* %93
  %95 = mul i64 %94, 3
  %96 = lshr i64 %95, 2
  %97 = inttoptr i64 %54 to i64*
  %98 = load i64, i64* %97
  %99 = sub i64 %96, %98
  store i64 %99, i64* %1, align 8, !tbaa !1256
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 32
  %102 = icmp ugt i64 %100, -33
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %14, align 1, !tbaa !1260
  %104 = trunc i64 %101 to i32
  %105 = and i32 %104, 255
  %106 = tail call i32 @llvm.ctpop.i32(i32 %105) #8
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  store i8 %109, i8* %21, align 1, !tbaa !1271
  %110 = xor i64 %101, %100
  %111 = lshr i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  store i8 %113, i8* %26, align 1, !tbaa !1272
  %114 = icmp eq i64 %101, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %29, align 1, !tbaa !1273
  %116 = lshr i64 %101, 63
  %117 = trunc i64 %116 to i8
  store i8 %117, i8* %32, align 1, !tbaa !1274
  %118 = lshr i64 %100, 63
  %119 = xor i64 %116, %118
  %120 = add nuw nsw i64 %119, %116
  %121 = icmp eq i64 %120, 2
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %38, align 1, !tbaa !1275
  %123 = add i64 %100, 40
  %124 = inttoptr i64 %101 to i64*
  %125 = load i64, i64* %124
  store i64 %125, i64* %6, align 8, !tbaa !1256
  %126 = inttoptr i64 %123 to i64*
  %127 = load i64, i64* %126
  store i64 %127, i64* %0, align 8, !tbaa !1256
  %128 = add i64 %100, 48
  store i64 %128, i64* %5, align 8, !tbaa !1256
  ret %struct.Memory* %.sink

block_401270:                                     ; preds = %block_40124a, %block_401210
  %129 = phi i64 [ %90, %block_401210 ], [ %160, %block_40124a ]
  store i64 %58, i64* %1, align 8, !tbaa !1256
  store i64 %61, i64* %2, align 8, !tbaa !1256
  store i64 %66, i64* %3, align 8, !tbaa !1256
  store i8 %70, i8* %14, align 1, !tbaa !1260
  store i8 %75, i8* %21, align 1, !tbaa !1271
  store i8 %80, i8* %26, align 1, !tbaa !1272
  store i8 %82, i8* %29, align 1, !tbaa !1273
  store i8 %84, i8* %32, align 1, !tbaa !1274
  store i8 %89, i8* %38, align 1, !tbaa !1275
  %.v13 = select i1 %81, i64 25, i64 33
  %130 = add i64 %129, %.v13
  store i64 %130, i64* %0, align 8, !tbaa !1256
  br i1 %81, label %block_401296.sink.split, label %block_401296

block_40124a:                                     ; preds = %block_401210
  %131 = add i64 %57, -2
  store i64 %131, i64* %1, align 8, !tbaa !1256
  store i64 %61, i64* %2, align 8, !tbaa !1256
  %132 = add i64 %131, %61
  %133 = inttoptr i64 %132 to i8*
  %134 = load i8, i8* %133
  %135 = sext i8 %134 to i64
  %136 = and i64 %135, 4294967295
  store i64 %136, i64* %3, align 8, !tbaa !1256
  %137 = sext i8 %134 to i32
  %138 = add nsw i32 %137, -61
  %139 = icmp ult i8 %134, 61
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %14, align 1, !tbaa !1260
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141) #8
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %21, align 1, !tbaa !1271
  %146 = xor i32 %137, 16
  %147 = xor i32 %146, %138
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %26, align 1, !tbaa !1272
  %151 = icmp eq i32 %138, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %29, align 1, !tbaa !1273
  %153 = lshr i32 %138, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %32, align 1, !tbaa !1274
  %155 = lshr i32 %137, 31
  %156 = xor i32 %153, %155
  %157 = add nuw nsw i32 %156, %155
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %38, align 1, !tbaa !1275
  %.v14 = select i1 %151, i64 25, i64 38
  %160 = add i64 %90, %.v14
  store i64 %160, i64* %0, align 8, !tbaa !1256
  br i1 %151, label %block_401296.sink.split, label %block_401270
}

; Function Attrs: noinline nounwind
define  %struct.Memory* @sub_4012b0_Base64Decode(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
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
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %8, align 8, !tbaa !1256
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13
  store i64 %12, i64* %9, align 8, !tbaa !1256
  %14 = add i64 %11, -72
  %15 = icmp ult i64 %12, 64
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1, !tbaa !1260
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #8
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !1271
  %25 = xor i64 %12, %14
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
  %36 = lshr i64 %12, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !1275
  %42 = add i64 %11, -16
  %43 = load i64, i64* %7, align 8
  %44 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %44
  %45 = add i64 %11, -24
  %46 = load i64, i64* %6, align 8
  %47 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %47
  %48 = add i64 %11, -32
  %49 = load i64, i64* %5, align 8
  %50 = inttoptr i64 %48 to i64*
  store i64 %49, i64* %50
  %51 = inttoptr i64 %42 to i64*
  %52 = load i64, i64* %51
  store i64 %52, i64* %7, align 8, !tbaa !1256
  %53 = add i64 %pc, -160
  %54 = add i64 %pc, 29
  %55 = add i64 %11, -80
  %56 = inttoptr i64 %55 to i64*
  store i64 %54, i64* %56
  store i64 %55, i64* %8, align 8, !tbaa !1256
  store i64 %53, i64* %0, align 8, !tbaa !1256
  %57 = tail call %struct.Memory* @sub_401210_calcDecodeLength(%struct.State* nonnull %state2, i64 %53, %struct.Memory* %memory1)
  %58 = load i32, i32* %2, align 4
  %59 = load i64, i64* %0, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, -44
  %62 = inttoptr i64 %61 to i32*
  store i32 %58, i32* %62
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63
  %65 = add i32 %64, 1
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %4, align 8, !tbaa !1256
  %67 = icmp eq i32 %64, -1
  %68 = icmp eq i32 %65, 0
  %69 = or i1 %67, %68
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %17, align 1, !tbaa !1260
  %71 = and i32 %65, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #8
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %24, align 1, !tbaa !1271
  %76 = xor i32 %65, %64
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %29, align 1, !tbaa !1272
  %80 = zext i1 %68 to i8
  store i8 %80, i8* %32, align 1, !tbaa !1273
  %81 = lshr i32 %65, 31
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %35, align 1, !tbaa !1274
  %83 = lshr i32 %64, 31
  %84 = xor i32 %81, %83
  %85 = add nuw nsw i32 %84, %81
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %41, align 1, !tbaa !1275
  %88 = sext i32 %65 to i64
  store i64 %88, i64* %7, align 8, !tbaa !1256
  %89 = add i64 %59, -2077
  %90 = add i64 %59, 19
  %91 = load i64, i64* %8, align 8, !tbaa !1256
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %90, i64* %93
  store i64 %92, i64* %8, align 8, !tbaa !1256
  store i64 %89, i64* %0, align 8, !tbaa !1256
  %94 = tail call fastcc %struct.Memory* @ext_6021f0_malloc(%struct.State* nonnull %state2, %struct.Memory* %57) #8
  %95 = load i64, i64* %0, align 8
  store i64 4294967295, i64* %6, align 8, !tbaa !1256
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, -16
  %98 = inttoptr i64 %97 to i64*
  %99 = load i64, i64* %98
  %100 = load i64, i64* %3, align 8
  %101 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %101
  %102 = add i64 %96, -44
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32, i32* %103
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %3, align 8, !tbaa !1256
  %106 = inttoptr i64 %97 to i64*
  %107 = load i64, i64* %106
  %108 = inttoptr i64 %107 to i64*
  %109 = load i64, i64* %108
  store i64 %109, i64* %5, align 8, !tbaa !1256
  %110 = add i64 %105, %109
  %111 = inttoptr i64 %110 to i8*
  store i8 0, i8* %111
  %112 = add i64 %96, -8
  %113 = inttoptr i64 %112 to i64*
  %114 = load i64, i64* %113
  store i64 %114, i64* %7, align 8, !tbaa !1256
  %115 = add i64 %95, -1984
  %116 = add i64 %95, 36
  %117 = load i64, i64* %8, align 8, !tbaa !1256
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %116, i64* %119
  store i64 %118, i64* %8, align 8, !tbaa !1256
  store i64 %115, i64* %0, align 8, !tbaa !1256
  %120 = tail call fastcc %struct.Memory* @ext_602228_BIO_new_mem_buf(%struct.State* nonnull %state2, %struct.Memory* %94) #8
  %121 = load i64, i64* %9, align 8
  %122 = add i64 %121, -32
  %123 = load i64, i64* %3, align 8
  %124 = load i64, i64* %0, align 8
  %125 = inttoptr i64 %122 to i64*
  store i64 %123, i64* %125
  %126 = add i64 %124, -2036
  %127 = add i64 %124, 9
  %128 = load i64, i64* %8, align 8, !tbaa !1256
  %129 = add i64 %128, -8
  %130 = inttoptr i64 %129 to i64*
  store i64 %127, i64* %130
  store i64 %129, i64* %8, align 8, !tbaa !1256
  store i64 %126, i64* %0, align 8, !tbaa !1256
  %131 = tail call fastcc %struct.Memory* @ext_602220_BIO_f_base64(%struct.State* nonnull %state2, %struct.Memory* %120) #8
  %132 = load i64, i64* %3, align 8
  %133 = load i64, i64* %0, align 8
  store i64 %132, i64* %7, align 8, !tbaa !1256
  %134 = add i64 %133, -1885
  %135 = add i64 %133, 8
  %136 = load i64, i64* %8, align 8, !tbaa !1256
  %137 = add i64 %136, -8
  %138 = inttoptr i64 %137 to i64*
  store i64 %135, i64* %138
  store i64 %137, i64* %8, align 8, !tbaa !1256
  store i64 %134, i64* %0, align 8, !tbaa !1256
  %139 = tail call fastcc %struct.Memory* @ext_602270_BIO_new(%struct.State* nonnull %state2, %struct.Memory* %131) #8
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %140, -40
  %142 = load i64, i64* %3, align 8
  %143 = load i64, i64* %0, align 8
  %144 = inttoptr i64 %141 to i64*
  store i64 %142, i64* %144
  %145 = inttoptr i64 %141 to i64*
  %146 = load i64, i64* %145
  store i64 %146, i64* %7, align 8, !tbaa !1256
  %147 = add i64 %140, -32
  %148 = inttoptr i64 %147 to i64*
  %149 = load i64, i64* %148
  store i64 %149, i64* %6, align 8, !tbaa !1256
  %150 = add i64 %143, -2069
  %151 = add i64 %143, 17
  %152 = load i64, i64* %8, align 8, !tbaa !1256
  %153 = add i64 %152, -8
  %154 = inttoptr i64 %153 to i64*
  store i64 %151, i64* %154
  store i64 %153, i64* %8, align 8, !tbaa !1256
  store i64 %150, i64* %0, align 8, !tbaa !1256
  %155 = tail call fastcc %struct.Memory* @ext_400b00_BIO_push(%struct.State* nonnull %state2, %struct.Memory* %139) #8
  %156 = load i64, i64* %0, align 8
  store i64 256, i64* %6, align 8, !tbaa !1256
  %157 = load i64, i64* %9, align 8
  %158 = add i64 %157, -32
  %159 = load i64, i64* %3, align 8
  %160 = inttoptr i64 %158 to i64*
  store i64 %159, i64* %160
  %161 = inttoptr i64 %158 to i64*
  %162 = load i64, i64* %161
  store i64 %162, i64* %7, align 8, !tbaa !1256
  %163 = add i64 %156, -2134
  %164 = add i64 %156, 18
  %165 = load i64, i64* %8, align 8, !tbaa !1256
  %166 = add i64 %165, -8
  %167 = inttoptr i64 %166 to i64*
  store i64 %164, i64* %167
  store i64 %166, i64* %8, align 8, !tbaa !1256
  store i64 %163, i64* %0, align 8, !tbaa !1256
  %168 = tail call fastcc %struct.Memory* @ext_400ad0_BIO_set_flags(%struct.State* nonnull %state2, %struct.Memory* %155) #8
  %169 = load i64, i64* %9, align 8
  %170 = add i64 %169, -32
  %171 = load i64, i64* %0, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172
  %174 = add i64 %169, -16
  %175 = inttoptr i64 %174 to i64*
  %176 = load i64, i64* %175
  %177 = inttoptr i64 %176 to i64*
  %178 = load i64, i64* %177
  store i64 %178, i64* %6, align 8, !tbaa !1256
  %179 = add i64 %169, -8
  %180 = inttoptr i64 %179 to i64*
  %181 = load i64, i64* %180
  store i64 %181, i64* %3, align 8, !tbaa !1256
  %182 = add i64 %169, -56
  %183 = inttoptr i64 %182 to i64*
  store i64 %173, i64* %183
  store i64 %181, i64* %7, align 8, !tbaa !1256
  %184 = add i64 %169, -64
  %185 = inttoptr i64 %184 to i64*
  store i64 %178, i64* %185
  %186 = add i64 %171, -2056
  %187 = add i64 %171, 31
  %188 = load i64, i64* %8, align 8, !tbaa !1256
  %189 = add i64 %188, -8
  %190 = inttoptr i64 %189 to i64*
  store i64 %187, i64* %190
  store i64 %189, i64* %8, align 8, !tbaa !1256
  store i64 %186, i64* %0, align 8, !tbaa !1256
  %191 = tail call fastcc %struct.Memory* @ext_400b30_strlen(%struct.State* nonnull %state2, %struct.Memory* %168) #8
  %192 = load i32, i32* %2, align 4
  %193 = zext i32 %192 to i64
  %194 = load i64, i64* %0, align 8
  store i64 %193, i64* %4, align 8, !tbaa !1256
  %195 = load i64, i64* %9, align 8
  %196 = add i64 %195, -56
  %197 = inttoptr i64 %196 to i64*
  %198 = load i64, i64* %197
  store i64 %198, i64* %7, align 8, !tbaa !1256
  %199 = add i64 %195, -64
  %200 = inttoptr i64 %199 to i64*
  %201 = load i64, i64* %200
  store i64 %201, i64* %6, align 8, !tbaa !1256
  store i64 %193, i64* %5, align 8, !tbaa !1256
  %202 = add i64 %194, -1975
  %203 = add i64 %194, 17
  %204 = load i64, i64* %8, align 8, !tbaa !1256
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*
  store i64 %203, i64* %206
  store i64 %205, i64* %8, align 8, !tbaa !1256
  store i64 %202, i64* %0, align 8, !tbaa !1256
  %207 = tail call fastcc %struct.Memory* @ext_602268_BIO_read(%struct.State* nonnull %state2, %struct.Memory* %191) #8
  %208 = load i32, i32* %2, align 4
  %209 = load i64, i64* %0, align 8
  %210 = sext i32 %208 to i64
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %211, -24
  %213 = inttoptr i64 %212 to i64*
  %214 = load i64, i64* %213
  %215 = inttoptr i64 %214 to i64*
  store i64 %210, i64* %215
  %216 = inttoptr i64 %212 to i64*
  %217 = load i64, i64* %216
  %218 = inttoptr i64 %217 to i64*
  %219 = load i64, i64* %218
  store i64 %219, i64* %6, align 8, !tbaa !1256
  %220 = add i64 %211, -44
  %221 = inttoptr i64 %220 to i32*
  %222 = load i32, i32* %221
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %7, align 8, !tbaa !1256
  %224 = sub i64 %219, %223
  %225 = icmp ult i64 %219, %223
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %17, align 1, !tbaa !1260
  %227 = trunc i64 %224 to i32
  %228 = and i32 %227, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228) #8
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %24, align 1, !tbaa !1271
  %233 = xor i64 %219, %223
  %234 = xor i64 %233, %224
  %235 = lshr i64 %234, 4
  %236 = trunc i64 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %29, align 1, !tbaa !1272
  %238 = icmp eq i64 %224, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %32, align 1, !tbaa !1273
  %240 = lshr i64 %224, 63
  %241 = trunc i64 %240 to i8
  store i8 %241, i8* %35, align 1, !tbaa !1274
  %242 = lshr i64 %219, 63
  %243 = lshr i64 %223, 63
  %244 = xor i64 %242, %243
  %245 = xor i64 %240, %242
  %246 = add nuw nsw i64 %245, %244
  %247 = icmp eq i64 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %41, align 1, !tbaa !1275
  %.v = select i1 %238, i64 30, i64 35
  %249 = add i64 %209, %.v
  store i64 %249, i64* %0, align 8, !tbaa !1256
  br i1 %238, label %block_401386, label %block_40138b

block_401386:                                     ; preds = %block_4012b0
  %250 = add i64 %211, -32
  %251 = inttoptr i64 %250 to i64*
  %252 = load i64, i64* %251
  store i64 %252, i64* %7, align 8, !tbaa !1256
  %253 = add i64 %249, -2198
  %254 = add i64 %249, 54
  %255 = load i64, i64* %8, align 8, !tbaa !1256
  %256 = add i64 %255, -8
  %257 = inttoptr i64 %256 to i64*
  store i64 %254, i64* %257
  store i64 %256, i64* %8, align 8, !tbaa !1256
  store i64 %253, i64* %0, align 8, !tbaa !1256
  %258 = tail call fastcc %struct.Memory* @ext_400af0_BIO_free_all(%struct.State* nonnull %state2, %struct.Memory* %207) #8
  store i64 0, i64* %3, align 8, !tbaa !1256
  %259 = load i64, i64* %8, align 8
  %260 = add i64 %259, 64
  %261 = icmp ugt i64 %259, -65
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %17, align 1, !tbaa !1260
  %263 = trunc i64 %260 to i32
  %264 = and i32 %263, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264) #8
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %24, align 1, !tbaa !1271
  %269 = xor i64 %260, %259
  %270 = lshr i64 %269, 4
  %271 = trunc i64 %270 to i8
  %272 = and i8 %271, 1
  store i8 %272, i8* %29, align 1, !tbaa !1272
  %273 = icmp eq i64 %260, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %32, align 1, !tbaa !1273
  %275 = lshr i64 %260, 63
  %276 = trunc i64 %275 to i8
  store i8 %276, i8* %35, align 1, !tbaa !1274
  %277 = lshr i64 %259, 63
  %278 = xor i64 %275, %277
  %279 = add nuw nsw i64 %278, %275
  %280 = icmp eq i64 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %41, align 1, !tbaa !1275
  %282 = add i64 %259, 72
  %283 = inttoptr i64 %260 to i64*
  %284 = load i64, i64* %283
  store i64 %284, i64* %9, align 8, !tbaa !1256
  %285 = inttoptr i64 %282 to i64*
  %286 = load i64, i64* %285
  store i64 %286, i64* %0, align 8, !tbaa !1256
  %287 = add i64 %259, 80
  store i64 %287, i64* %8, align 8, !tbaa !1256
  ret %struct.Memory* %258

block_40138b:                                     ; preds = %block_4012b0
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 294), i64* %7, align 8, !tbaa !1256
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 315), i64* %6, align 8, !tbaa !1256
  store i64 36, i64* %5, align 8, !tbaa !1256
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 350), i64* %4, align 8, !tbaa !1256
  %288 = add i64 %249, -2299
  %289 = add i64 %249, 40
  %290 = load i64, i64* %8, align 8, !tbaa !1256
  %291 = add i64 %290, -8
  %292 = inttoptr i64 %291 to i64*
  store i64 %289, i64* %292
  store i64 %291, i64* %8, align 8, !tbaa !1256
  store i64 %288, i64* %0, align 8, !tbaa !1256
  %293 = tail call fastcc %struct.Memory* @ext_6021e0___assert_fail(%struct.State* nonnull %state2, %struct.Memory* %207) #8
  %294 = load i64, i64* %0, align 8
  %295 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %294, %struct.Memory* %293)
  ret %struct.Memory* %295
}

; Function Attrs: noinline nounwind
define  %struct.Memory* @sub_400a38__init_proc(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400a38:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = add i64 %3, -8
  store i64 %4, i64* %2, align 8, !tbaa !1256
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %9 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  %11 = load i64, i64* getelementptr inbounds (%seg_601ff8__got_type, %seg_601ff8__got_type* @seg_601ff8__got, i32 0, i32 0)
  store i64 %11, i64* %1, align 8, !tbaa !1256
  store i8 0, i8* %5, align 1, !tbaa !1260
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #8
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %6, align 1, !tbaa !1271
  %18 = icmp eq i64 %11, 0
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %8, align 1, !tbaa !1273
  %20 = lshr i64 %11, 63
  %21 = trunc i64 %20 to i8
  store i8 %21, i8* %9, align 1, !tbaa !1274
  store i8 0, i8* %10, align 1, !tbaa !1275
  store i8 0, i8* %7, align 1, !tbaa !1272
  %.v = select i1 %18, i64 21, i64 16
  %22 = add i64 %.v, %pc
  store i64 %22, i64* %0, align 8, !tbaa !1256
  br i1 %18, label %block_400a4d, label %block_400a48

block_400a48:                                     ; preds = %block_400a38
  %23 = add i64 %22, 424
  %24 = add i64 %22, 5
  %25 = add i64 %3, -16
  %26 = inttoptr i64 %25 to i64*
  store i64 %24, i64* %26
  store i64 %25, i64* %2, align 8, !tbaa !1256
  store i64 %23, i64* %0, align 8, !tbaa !1256
  %27 = tail call fastcc %struct.Memory* @sub_400bf0___gmon_start__(%struct.State* nonnull %state2, i64 %23, %struct.Memory* %memory1)
  %.pre = load i64, i64* %2, align 8
  br label %block_400a4d

block_400a4d:                                     ; preds = %block_400a48, %block_400a38
  %28 = phi i64 [ %4, %block_400a38 ], [ %.pre, %block_400a48 ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_400a38 ], [ %27, %block_400a48 ]
  %29 = add i64 %28, 8
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !1260
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #8
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %6, align 1, !tbaa !1271
  %38 = xor i64 %29, %28
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %7, align 1, !tbaa !1272
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %8, align 1, !tbaa !1273
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %9, align 1, !tbaa !1274
  %46 = lshr i64 %28, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %10, align 1, !tbaa !1275
  %51 = inttoptr i64 %29 to i64*
  %52 = load i64, i64* %51
  store i64 %52, i64* %0, align 8, !tbaa !1256
  %53 = add i64 %28, 16
  store i64 %53, i64* %2, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline nounwind
define  %struct.Memory* @sub_400ce0_handleErrors(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400ce0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* %2, align 8, !tbaa !1256
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %4, i64* %7
  store i64 %6, i64* %3, align 8, !tbaa !1256
  %8 = load i64, i64* @stderr
  store i64 %8, i64* %1, align 8, !tbaa !1256
  %9 = add i64 %pc, -368
  %10 = add i64 %pc, 17
  %11 = add i64 %5, -16
  %12 = inttoptr i64 %11 to i64*
  store i64 %10, i64* %12
  store i64 %11, i64* %2, align 8, !tbaa !1256
  store i64 %9, i64* %0, align 8, !tbaa !1256
  %13 = tail call fastcc %struct.Memory* @ext_400b70_ERR_print_errors_fp(%struct.State* nonnull %state2, %struct.Memory* %memory1) #8
  %14 = load i64, i64* %0, align 8
  %15 = add i64 %14, -625
  %16 = add i64 %14, 5
  %17 = load i64, i64* %2, align 8, !tbaa !1256
  %18 = add i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  store i64 %16, i64* %19
  store i64 %18, i64* %2, align 8, !tbaa !1256
  store i64 %15, i64* %0, align 8, !tbaa !1256
  %20 = tail call fastcc %struct.Memory* @ext_6021d8_abort(%struct.State* nonnull %state2, %struct.Memory* %13) #8
  %21 = load i64, i64* %0, align 8
  %22 = add i64 %21, 10
  store i64 %22, i64* %0, align 8
  %23 = tail call %struct.Memory* @sub_400d00_encrypt(%struct.State* nonnull %state2, i64 %22, %struct.Memory* %20)
  ret %struct.Memory* %23
}

; Function Attrs: noinline nounwind
define  %struct.Memory* @sub_400df0_generate_iv(%struct.State* nocapture dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
block_400df0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0, i32 0
  %2 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* %2, align 8, !tbaa !1256
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %4, i64* %7
  store i64 add (i64 ptrtoint (%seg_401450__rodata_type* @seg_401450__rodata to i64), i64 4), i64* %1, align 8, !tbaa !1256
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8
  store i64 %9, i64* %3, align 8, !tbaa !1256
  %10 = inttoptr i64 %5 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %0, align 8, !tbaa !1256
  %12 = add i64 %5, 8
  store i64 %12, i64* %2, align 8, !tbaa !1256
  ret %struct.Memory* %memory1
}

; Function Attrs: noinline nounwind
define  %struct.Memory* @sub_401444__term_proc(%struct.State* nocapture dereferenceable(3280) %state2, i64 %pc, %struct.Memory* returned %memory1) #4 {
block_401444:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = add i64 %2, -8
  %4 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  %6 = xor i64 %3, %2
  %7 = lshr i64 %6, 4
  %8 = trunc i64 %7 to i8
  %9 = and i8 %8, 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  %11 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  %12 = lshr i64 %3, 63
  %13 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  %14 = lshr i64 %2, 63
  %15 = xor i64 %12, %14
  %16 = add nuw nsw i64 %15, %14
  %17 = icmp eq i64 %16, 2
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  %20 = icmp ult i64 %2, 8
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %4, align 1, !tbaa !1260
  %22 = trunc i64 %2 to i32
  %23 = and i32 %22, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #8
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  store i8 %27, i8* %5, align 1, !tbaa !1271
  store i8 %9, i8* %10, align 1, !tbaa !1272
  %28 = icmp eq i64 %2, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %11, align 1, !tbaa !1273
  %30 = trunc i64 %14 to i8
  store i8 %30, i8* %13, align 1, !tbaa !1274
  store i8 %18, i8* %19, align 1, !tbaa !1275
  %31 = inttoptr i64 %2 to i64*
  %32 = load i64, i64* %31
  store i64 %32, i64* %0, align 8, !tbaa !1256
  %33 = add i64 %2, 8
  store i64 %33, i64* %1, align 8, !tbaa !1256
  ret %struct.Memory* %memory1
}

; Function Attrs: noinline nounwind
define  %struct.Memory* @sub_401120_Base64Encode(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
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
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %8, align 8, !tbaa !1256
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14
  store i64 %13, i64* %9, align 8, !tbaa !1256
  %15 = add i64 %12, -104
  %16 = icmp ult i64 %13, 96
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !1260
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20) #8
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !1271
  %26 = xor i64 %13, %15
  %27 = lshr i64 %26, 4
  %28 = trunc i64 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1, !tbaa !1272
  %31 = icmp eq i64 %15, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1, !tbaa !1273
  %34 = lshr i64 %15, 63
  %35 = trunc i64 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1, !tbaa !1274
  %37 = lshr i64 %13, 63
  %38 = xor i64 %34, %37
  %39 = add nuw nsw i64 %38, %37
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1, !tbaa !1275
  %43 = add i64 %12, -16
  %44 = load i64, i64* %7, align 8
  %45 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %45
  %46 = add i64 %12, -24
  %47 = load i64, i64* %6, align 8
  %48 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %48
  %49 = add i64 %12, -32
  %50 = load i64, i64* %5, align 8
  %51 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %51
  %52 = add i64 %pc, -1552
  %53 = add i64 %pc, 25
  %54 = add i64 %12, -112
  %55 = inttoptr i64 %54 to i64*
  store i64 %53, i64* %55
  store i64 %54, i64* %8, align 8, !tbaa !1256
  store i64 %52, i64* %0, align 8, !tbaa !1256
  %56 = tail call fastcc %struct.Memory* @ext_602220_BIO_f_base64(%struct.State* nonnull %state2, %struct.Memory* %memory1) #8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* %0, align 8
  store i64 %57, i64* %7, align 8, !tbaa !1256
  %59 = add i64 %58, -1417
  %60 = add i64 %58, 8
  %61 = load i64, i64* %8, align 8, !tbaa !1256
  %62 = add i64 %61, -8
  %63 = inttoptr i64 %62 to i64*
  store i64 %60, i64* %63
  store i64 %62, i64* %8, align 8, !tbaa !1256
  store i64 %59, i64* %0, align 8, !tbaa !1256
  %64 = tail call fastcc %struct.Memory* @ext_602270_BIO_new(%struct.State* nonnull %state2, %struct.Memory* %56) #8
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, -40
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* %0, align 8
  %69 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %69
  %70 = add i64 %68, -1633
  %71 = add i64 %68, 9
  %72 = load i64, i64* %8, align 8, !tbaa !1256
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %71, i64* %74
  store i64 %73, i64* %8, align 8, !tbaa !1256
  store i64 %70, i64* %0, align 8, !tbaa !1256
  %75 = tail call fastcc %struct.Memory* @ext_400ae0_BIO_s_mem(%struct.State* nonnull %state2, %struct.Memory* %64) #8
  %76 = load i64, i64* %3, align 8
  %77 = load i64, i64* %0, align 8
  store i64 %76, i64* %7, align 8, !tbaa !1256
  %78 = add i64 %77, -1434
  %79 = add i64 %77, 8
  %80 = load i64, i64* %8, align 8, !tbaa !1256
  %81 = add i64 %80, -8
  %82 = inttoptr i64 %81 to i64*
  store i64 %79, i64* %82
  store i64 %81, i64* %8, align 8, !tbaa !1256
  store i64 %78, i64* %0, align 8, !tbaa !1256
  %83 = tail call fastcc %struct.Memory* @ext_602270_BIO_new(%struct.State* nonnull %state2, %struct.Memory* %75) #8
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, -32
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* %0, align 8
  %88 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %88
  %89 = add i64 %84, -40
  %90 = inttoptr i64 %89 to i64*
  %91 = load i64, i64* %90
  store i64 %91, i64* %7, align 8, !tbaa !1256
  %92 = inttoptr i64 %85 to i64*
  %93 = load i64, i64* %92
  store i64 %93, i64* %6, align 8, !tbaa !1256
  %94 = add i64 %87, -1618
  %95 = add i64 %87, 17
  %96 = load i64, i64* %8, align 8, !tbaa !1256
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %95, i64* %98
  store i64 %97, i64* %8, align 8, !tbaa !1256
  store i64 %94, i64* %0, align 8, !tbaa !1256
  %99 = tail call fastcc %struct.Memory* @ext_400b00_BIO_push(%struct.State* nonnull %state2, %struct.Memory* %83) #8
  %100 = load i64, i64* %0, align 8
  store i64 256, i64* %6, align 8, !tbaa !1256
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, -32
  %103 = load i64, i64* %3, align 8
  %104 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %104
  %105 = inttoptr i64 %102 to i64*
  %106 = load i64, i64* %105
  store i64 %106, i64* %7, align 8, !tbaa !1256
  %107 = add i64 %100, -1683
  %108 = add i64 %100, 18
  %109 = load i64, i64* %8, align 8, !tbaa !1256
  %110 = add i64 %109, -8
  %111 = inttoptr i64 %110 to i64*
  store i64 %108, i64* %111
  store i64 %110, i64* %8, align 8, !tbaa !1256
  store i64 %107, i64* %0, align 8, !tbaa !1256
  %112 = tail call fastcc %struct.Memory* @ext_400ad0_BIO_set_flags(%struct.State* nonnull %state2, %struct.Memory* %99) #8
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, -32
  %115 = load i64, i64* %0, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116
  store i64 %117, i64* %7, align 8, !tbaa !1256
  %118 = add i64 %113, -8
  %119 = inttoptr i64 %118 to i64*
  %120 = load i64, i64* %119
  store i64 %120, i64* %6, align 8, !tbaa !1256
  %121 = add i64 %113, -16
  %122 = inttoptr i64 %121 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %3, align 8, !tbaa !1256
  %124 = and i64 %123, 4294967295
  store i64 %124, i64* %4, align 8, !tbaa !1256
  store i64 %124, i64* %5, align 8, !tbaa !1256
  %125 = add i64 %115, -1573
  %126 = add i64 %115, 21
  %127 = load i64, i64* %8, align 8, !tbaa !1256
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*
  store i64 %126, i64* %129
  store i64 %128, i64* %8, align 8, !tbaa !1256
  store i64 %125, i64* %0, align 8, !tbaa !1256
  %130 = tail call fastcc %struct.Memory* @ext_602240_BIO_write(%struct.State* nonnull %state2, %struct.Memory* %112) #8
  %131 = load i64, i64* %0, align 8
  store i64 11, i64* %6, align 8, !tbaa !1256
  store i8 0, i8* %18, align 1, !tbaa !1260
  store i8 1, i8* %25, align 1, !tbaa !1271
  store i8 1, i8* %33, align 1, !tbaa !1273
  store i8 0, i8* %36, align 1, !tbaa !1274
  store i8 0, i8* %42, align 1, !tbaa !1275
  store i8 0, i8* %30, align 1, !tbaa !1272
  %132 = load i64, i64* %9, align 8
  %133 = add i64 %132, -32
  %134 = inttoptr i64 %133 to i64*
  %135 = load i64, i64* %134
  store i64 %135, i64* %10, align 8, !tbaa !1256
  %136 = add i64 %132, -56
  %137 = inttoptr i64 %136 to i64*
  store i64 0, i64* %137
  store i64 %135, i64* %7, align 8, !tbaa !1256
  %138 = inttoptr i64 %136 to i64*
  %139 = load i64, i64* %138
  store i64 %139, i64* %5, align 8, !tbaa !1256
  store i64 %139, i64* %4, align 8, !tbaa !1256
  %140 = add i64 %132, -60
  %141 = load i32, i32* %2, align 4
  %142 = inttoptr i64 %140 to i32*
  store i32 %141, i32* %142
  %143 = add i64 %131, -1546
  %144 = add i64 %131, 36
  %145 = load i64, i64* %8, align 8, !tbaa !1256
  %146 = add i64 %145, -8
  %147 = inttoptr i64 %146 to i64*
  store i64 %144, i64* %147
  store i64 %146, i64* %8, align 8, !tbaa !1256
  store i64 %143, i64* %0, align 8, !tbaa !1256
  %148 = tail call fastcc %struct.Memory* @ext_602258_BIO_ctrl(%struct.State* nonnull %state2, %struct.Memory* %130) #8
  %149 = load i64, i64* %0, align 8
  store i64 115, i64* %6, align 8, !tbaa !1256
  %150 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %150, align 8, !tbaa !1256
  store i8 0, i8* %18, align 1, !tbaa !1260
  store i8 1, i8* %25, align 1, !tbaa !1271
  store i8 1, i8* %33, align 1, !tbaa !1273
  store i8 0, i8* %36, align 1, !tbaa !1274
  store i8 0, i8* %42, align 1, !tbaa !1275
  store i8 0, i8* %30, align 1, !tbaa !1272
  store i64 0, i64* %5, align 8, !tbaa !1256
  %151 = load i64, i64* %9, align 8
  %152 = add i64 %151, -48
  store i64 %152, i64* %4, align 8, !tbaa !1256
  %153 = add i64 %151, -32
  %154 = inttoptr i64 %153 to i64*
  %155 = load i64, i64* %154
  store i64 %155, i64* %7, align 8, !tbaa !1256
  %156 = add i64 %151, -72
  %157 = load i64, i64* %3, align 8
  %158 = inttoptr i64 %156 to i64*
  store i64 %157, i64* %158
  %159 = add i64 %149, -1582
  %160 = add i64 %149, 28
  %161 = load i64, i64* %8, align 8, !tbaa !1256
  %162 = add i64 %161, -8
  %163 = inttoptr i64 %162 to i64*
  store i64 %160, i64* %163
  store i64 %162, i64* %8, align 8, !tbaa !1256
  store i64 %159, i64* %0, align 8, !tbaa !1256
  %164 = tail call fastcc %struct.Memory* @ext_602258_BIO_ctrl(%struct.State* nonnull %state2, %struct.Memory* %148) #8
  %165 = load i64, i64* %0, align 8
  store i64 9, i64* %6, align 8, !tbaa !1256
  store i64 0, i64* %150, align 8, !tbaa !1256
  store i8 0, i8* %18, align 1, !tbaa !1260
  store i8 1, i8* %25, align 1, !tbaa !1271
  store i8 1, i8* %33, align 1, !tbaa !1273
  store i8 0, i8* %36, align 1, !tbaa !1274
  store i8 0, i8* %42, align 1, !tbaa !1275
  store i8 0, i8* %30, align 1, !tbaa !1272
  store i64 0, i64* %4, align 8, !tbaa !1256
  %166 = load i64, i64* %9, align 8
  %167 = add i64 %166, -32
  %168 = inttoptr i64 %167 to i64*
  %169 = load i64, i64* %168
  store i64 %169, i64* %7, align 8, !tbaa !1256
  store i64 0, i64* %5, align 8, !tbaa !1256
  %170 = add i64 %166, -80
  %171 = load i64, i64* %3, align 8
  %172 = inttoptr i64 %170 to i64*
  store i64 %171, i64* %172
  %173 = add i64 %165, -1610
  %174 = add i64 %165, 27
  %175 = load i64, i64* %8, align 8, !tbaa !1256
  %176 = add i64 %175, -8
  %177 = inttoptr i64 %176 to i64*
  store i64 %174, i64* %177
  store i64 %176, i64* %8, align 8, !tbaa !1256
  store i64 %173, i64* %0, align 8, !tbaa !1256
  %178 = tail call fastcc %struct.Memory* @ext_602258_BIO_ctrl(%struct.State* nonnull %state2, %struct.Memory* %164) #8
  %179 = load i64, i64* %9, align 8
  %180 = add i64 %179, -32
  %181 = load i64, i64* %0, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182
  store i64 %183, i64* %7, align 8, !tbaa !1256
  %184 = add i64 %179, -88
  %185 = load i64, i64* %3, align 8
  %186 = inttoptr i64 %184 to i64*
  store i64 %185, i64* %186
  %187 = add i64 %181, -1781
  %188 = add i64 %181, 13
  %189 = load i64, i64* %8, align 8, !tbaa !1256
  %190 = add i64 %189, -8
  %191 = inttoptr i64 %190 to i64*
  store i64 %188, i64* %191
  store i64 %190, i64* %8, align 8, !tbaa !1256
  store i64 %187, i64* %0, align 8, !tbaa !1256
  %192 = tail call fastcc %struct.Memory* @ext_400af0_BIO_free_all(%struct.State* nonnull %state2, %struct.Memory* %178) #8
  store i64 0, i64* %3, align 8, !tbaa !1256
  %193 = load i64, i64* %9, align 8
  %194 = add i64 %193, -48
  %195 = inttoptr i64 %194 to i64*
  %196 = load i64, i64* %195
  %197 = add i64 %196, 8
  %198 = inttoptr i64 %197 to i64*
  %199 = load i64, i64* %198
  store i64 %199, i64* %4, align 8, !tbaa !1256
  %200 = add i64 %193, -24
  %201 = inttoptr i64 %200 to i64*
  %202 = load i64, i64* %201
  store i64 %202, i64* %5, align 8, !tbaa !1256
  %203 = inttoptr i64 %202 to i64*
  store i64 %199, i64* %203
  %204 = load i64, i64* %8, align 8
  %205 = add i64 %204, 96
  %206 = icmp ugt i64 %204, -97
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %18, align 1, !tbaa !1260
  %208 = trunc i64 %205 to i32
  %209 = and i32 %208, 255
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209) #8
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %25, align 1, !tbaa !1271
  %214 = xor i64 %205, %204
  %215 = lshr i64 %214, 4
  %216 = trunc i64 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %30, align 1, !tbaa !1272
  %218 = icmp eq i64 %205, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %33, align 1, !tbaa !1273
  %220 = lshr i64 %205, 63
  %221 = trunc i64 %220 to i8
  store i8 %221, i8* %36, align 1, !tbaa !1274
  %222 = lshr i64 %204, 63
  %223 = xor i64 %220, %222
  %224 = add nuw nsw i64 %223, %220
  %225 = icmp eq i64 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %42, align 1, !tbaa !1275
  %227 = add i64 %204, 104
  %228 = inttoptr i64 %205 to i64*
  %229 = load i64, i64* %228
  store i64 %229, i64* %9, align 8, !tbaa !1256
  %230 = inttoptr i64 %227 to i64*
  %231 = load i64, i64* %230
  store i64 %231, i64* %0, align 8, !tbaa !1256
  %232 = add i64 %204, 112
  store i64 %232, i64* %8, align 8, !tbaa !1256
  ret %struct.Memory* %192
}

; Function Attrs: noinline nounwind
define  %struct.Memory* @sub_400d00_encrypt(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #4 {
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
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* %10, align 8, !tbaa !1256
  %15 = add i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64 %13, i64* %16
  store i64 %15, i64* %11, align 8, !tbaa !1256
  %17 = add i64 %14, -72
  %18 = icmp ult i64 %15, 64
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1, !tbaa !1260
  %21 = trunc i64 %17 to i32
  %22 = and i32 %21, 255
  %23 = tail call i32 @llvm.ctpop.i32(i32 %22) #8
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1, !tbaa !1271
  %28 = xor i64 %15, %17
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
  %39 = lshr i64 %15, 63
  %40 = xor i64 %36, %39
  %41 = add nuw nsw i64 %40, %39
  %42 = icmp eq i64 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1, !tbaa !1275
  %45 = add i64 %14, -16
  %46 = load i64, i64* %9, align 8
  %47 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %47
  %48 = add i64 %14, -20
  %49 = load i32, i32* %4, align 4
  %50 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %50
  %51 = add i64 %14, -32
  %52 = load i64, i64* %7, align 8
  %53 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %53
  %54 = add i64 %14, -40
  %55 = load i64, i64* %6, align 8
  %56 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %56
  %57 = add i64 %14, -48
  %58 = load i64, i64* %12, align 8
  %59 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %59
  %60 = add i64 %pc, -608
  %61 = add i64 %pc, 32
  %62 = add i64 %14, -80
  %63 = inttoptr i64 %62 to i64*
  store i64 %61, i64* %63
  store i64 %62, i64* %10, align 8, !tbaa !1256
  store i64 %60, i64* %0, align 8, !tbaa !1256
  %64 = tail call fastcc %struct.Memory* @ext_6021e8_EVP_CIPHER_CTX_new(%struct.State* nonnull %state2, %struct.Memory* %memory1) #8
  %65 = load i64, i64* %11, align 8
  %66 = add i64 %65, -48
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %0, align 8
  %69 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %69
  store i8 0, i8* %20, align 1, !tbaa !1260
  %70 = trunc i64 %67 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #8
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %27, align 1, !tbaa !1271
  store i8 0, i8* %32, align 1, !tbaa !1272
  %76 = icmp eq i64 %67, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %35, align 1, !tbaa !1273
  %78 = lshr i64 %67, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %38, align 1, !tbaa !1274
  store i8 0, i8* %44, align 1, !tbaa !1275
  %.v5 = select i1 %76, i64 14, i64 19
  %80 = add i64 %68, %.v5
  store i64 %80, i64* %0, align 8, !tbaa !1256
  br i1 %76, label %block_400d2e, label %block_400d33

block_400d99:                                     ; preds = %block_400d6c
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, -52
  store i64 %82, i64* %7, align 8, !tbaa !1256
  %83 = inttoptr i64 %82 to i32*
  %84 = load i32, i32* %83
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %5, align 8, !tbaa !1256
  %86 = add i64 %81, -56
  %87 = inttoptr i64 %86 to i32*
  store i32 %84, i32* %87
  %88 = add i64 %81, -48
  %89 = inttoptr i64 %88 to i64*
  %90 = load i64, i64* %89
  store i64 %90, i64* %9, align 8, !tbaa !1256
  %91 = add i64 %81, -40
  %92 = inttoptr i64 %91 to i64*
  %93 = load i64, i64* %92
  %94 = inttoptr i64 %82 to i32*
  %95 = load i32, i32* %94
  %96 = sext i32 %95 to i64
  %97 = add i64 %93, %96
  store i64 %97, i64* %6, align 8, !tbaa !1256
  %98 = icmp ult i64 %97, %93
  %99 = icmp ult i64 %97, %96
  %100 = or i1 %98, %99
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %20, align 1, !tbaa !1260
  %102 = trunc i64 %97 to i32
  %103 = and i32 %102, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103) #8
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %27, align 1, !tbaa !1271
  %108 = xor i64 %93, %96
  %109 = xor i64 %108, %97
  %110 = lshr i64 %109, 4
  %111 = trunc i64 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %32, align 1, !tbaa !1272
  %113 = icmp eq i64 %97, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %35, align 1, !tbaa !1273
  %115 = lshr i64 %97, 63
  %116 = trunc i64 %115 to i8
  store i8 %116, i8* %38, align 1, !tbaa !1274
  %117 = lshr i64 %93, 63
  %118 = lshr i64 %96, 63
  %119 = xor i64 %115, %117
  %120 = xor i64 %115, %118
  %121 = add nuw nsw i64 %119, %120
  %122 = icmp eq i64 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %44, align 1, !tbaa !1275
  store i64 %97, i64* %8, align 8, !tbaa !1256
  %124 = add i64 %342, -601
  %125 = add i64 %342, 33
  %126 = load i64, i64* %10, align 8, !tbaa !1256
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128
  store i64 %127, i64* %10, align 8, !tbaa !1256
  store i64 %124, i64* %0, align 8, !tbaa !1256
  %129 = tail call fastcc %struct.Memory* @ext_602238_EVP_EncryptFinal_ex(%struct.State* nonnull %state2, %struct.Memory* %319) #8
  %130 = load i64, i64* %0, align 8
  store i64 1, i64* %12, align 8, !tbaa !1256
  %131 = load i32, i32* %2, align 4
  %132 = sub i32 1, %131
  %133 = icmp ugt i32 %131, 1
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %20, align 1, !tbaa !1260
  %135 = and i32 %132, 255
  %136 = tail call i32 @llvm.ctpop.i32(i32 %135) #8
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  store i8 %139, i8* %27, align 1, !tbaa !1271
  %140 = xor i32 %131, %132
  %141 = lshr i32 %140, 4
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  store i8 %143, i8* %32, align 1, !tbaa !1272
  %144 = icmp eq i32 %132, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %35, align 1, !tbaa !1273
  %146 = lshr i32 %132, 31
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %38, align 1, !tbaa !1274
  %148 = lshr i32 %131, 31
  %149 = add nuw nsw i32 %146, %148
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %44, align 1, !tbaa !1275
  %.v4 = select i1 %144, i64 20, i64 15
  %152 = add i64 %130, %.v4
  store i64 %152, i64* %0, align 8, !tbaa !1256
  br i1 %144, label %block_400dce, label %block_400dc9

block_400dce:                                     ; preds = %block_400d99
  %153 = load i64, i64* %11, align 8
  %154 = add i64 %153, -52
  %155 = inttoptr i64 %154 to i32*
  %156 = load i32, i32* %155
  %157 = add i64 %153, -56
  %158 = inttoptr i64 %157 to i32*
  %159 = load i32, i32* %158
  %160 = add i32 %159, %156
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %5, align 8, !tbaa !1256
  %162 = icmp ult i32 %160, %156
  %163 = icmp ult i32 %160, %159
  %164 = or i1 %162, %163
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %20, align 1, !tbaa !1260
  %166 = and i32 %160, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166) #8
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %27, align 1, !tbaa !1271
  %171 = xor i32 %159, %156
  %172 = xor i32 %171, %160
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %32, align 1, !tbaa !1272
  %176 = icmp eq i32 %160, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %35, align 1, !tbaa !1273
  %178 = lshr i32 %160, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %38, align 1, !tbaa !1274
  %180 = lshr i32 %156, 31
  %181 = lshr i32 %159, 31
  %182 = xor i32 %178, %180
  %183 = xor i32 %178, %181
  %184 = add nuw nsw i32 %182, %183
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %44, align 1, !tbaa !1275
  %187 = inttoptr i64 %157 to i32*
  store i32 %160, i32* %187
  %188 = add i64 %153, -48
  %189 = inttoptr i64 %188 to i64*
  %190 = load i64, i64* %189
  store i64 %190, i64* %9, align 8, !tbaa !1256
  %191 = add i64 %152, -526
  %192 = add i64 %152, 18
  %193 = load i64, i64* %10, align 8, !tbaa !1256
  %194 = add i64 %193, -8
  %195 = inttoptr i64 %194 to i64*
  store i64 %192, i64* %195
  store i64 %194, i64* %10, align 8, !tbaa !1256
  store i64 %191, i64* %0, align 8, !tbaa !1256
  %196 = tail call fastcc %struct.Memory* @ext_400bc0_EVP_CIPHER_CTX_free(%struct.State* nonnull %state2, %struct.Memory* %129) #8
  %197 = load i64, i64* %11, align 8
  %198 = add i64 %197, -56
  %199 = inttoptr i64 %198 to i32*
  %200 = load i32, i32* %199
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %5, align 8, !tbaa !1256
  %202 = load i64, i64* %10, align 8
  %203 = add i64 %202, 64
  %204 = icmp ugt i64 %202, -65
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %20, align 1, !tbaa !1260
  %206 = trunc i64 %203 to i32
  %207 = and i32 %206, 255
  %208 = tail call i32 @llvm.ctpop.i32(i32 %207) #8
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  store i8 %211, i8* %27, align 1, !tbaa !1271
  %212 = xor i64 %203, %202
  %213 = lshr i64 %212, 4
  %214 = trunc i64 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %32, align 1, !tbaa !1272
  %216 = icmp eq i64 %203, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %35, align 1, !tbaa !1273
  %218 = lshr i64 %203, 63
  %219 = trunc i64 %218 to i8
  store i8 %219, i8* %38, align 1, !tbaa !1274
  %220 = lshr i64 %202, 63
  %221 = xor i64 %218, %220
  %222 = add nuw nsw i64 %221, %218
  %223 = icmp eq i64 %222, 2
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %44, align 1, !tbaa !1275
  %225 = add i64 %202, 72
  %226 = inttoptr i64 %203 to i64*
  %227 = load i64, i64* %226
  store i64 %227, i64* %11, align 8, !tbaa !1256
  %228 = inttoptr i64 %225 to i64*
  %229 = load i64, i64* %228
  store i64 %229, i64* %0, align 8, !tbaa !1256
  %230 = add i64 %202, 80
  store i64 %230, i64* %10, align 8, !tbaa !1256
  ret %struct.Memory* %196

block_400d94:                                     ; preds = %block_400d6c
  %231 = add i64 %342, -180
  %232 = add i64 %342, 5
  %233 = load i64, i64* %10, align 8, !tbaa !1256
  %234 = add i64 %233, -8
  %235 = inttoptr i64 %234 to i64*
  store i64 %232, i64* %235
  store i64 %234, i64* %10, align 8, !tbaa !1256
  store i64 %231, i64* %0, align 8, !tbaa !1256
  %236 = tail call %struct.Memory* @sub_400ce0_handleErrors(%struct.State* nonnull %state2, i64 %231, %struct.Memory* %319)
  %237 = load i64, i64* %0, align 8
  %238 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %237, %struct.Memory* %236)
  ret %struct.Memory* %238

block_400d33:                                     ; preds = %block_400d00
  %239 = inttoptr i64 %66 to i64*
  %240 = load i64, i64* %239
  store i64 %240, i64* %9, align 8, !tbaa !1256
  %241 = add i64 %65, -64
  %242 = inttoptr i64 %241 to i64*
  store i64 %240, i64* %242
  %243 = add i64 %80, -419
  %244 = add i64 %80, 13
  %245 = load i64, i64* %10, align 8, !tbaa !1256
  %246 = add i64 %245, -8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247
  store i64 %246, i64* %10, align 8, !tbaa !1256
  store i64 %243, i64* %0, align 8, !tbaa !1256
  %248 = tail call fastcc %struct.Memory* @ext_400b90_EVP_aes_256_cbc(%struct.State* nonnull %state2, %struct.Memory* %64) #8
  %249 = load i64, i64* %0, align 8
  store i8 0, i8* %20, align 1, !tbaa !1260
  store i8 1, i8* %27, align 1, !tbaa !1271
  store i8 1, i8* %35, align 1, !tbaa !1273
  store i8 0, i8* %38, align 1, !tbaa !1274
  store i8 0, i8* %44, align 1, !tbaa !1275
  store i8 0, i8* %32, align 1, !tbaa !1272
  store i64 0, i64* %7, align 8, !tbaa !1256
  %250 = load i64, i64* %11, align 8
  %251 = add i64 %250, -24
  %252 = inttoptr i64 %251 to i64*
  %253 = load i64, i64* %252
  store i64 %253, i64* %6, align 8, !tbaa !1256
  %254 = add i64 %250, -32
  %255 = inttoptr i64 %254 to i64*
  %256 = load i64, i64* %255
  store i64 %256, i64* %12, align 8, !tbaa !1256
  %257 = add i64 %250, -64
  %258 = inttoptr i64 %257 to i64*
  %259 = load i64, i64* %258
  store i64 %259, i64* %9, align 8, !tbaa !1256
  %260 = load i64, i64* %5, align 8
  store i64 %260, i64* %8, align 8, !tbaa !1256
  %261 = add i64 %249, -368
  %262 = add i64 %249, 24
  %263 = load i64, i64* %10, align 8, !tbaa !1256
  %264 = add i64 %263, -8
  %265 = inttoptr i64 %264 to i64*
  store i64 %262, i64* %265
  store i64 %264, i64* %10, align 8, !tbaa !1256
  store i64 %261, i64* %0, align 8, !tbaa !1256
  %266 = tail call fastcc %struct.Memory* @ext_400bd0_EVP_EncryptInit_ex(%struct.State* nonnull %state2, %struct.Memory* %248) #8
  %267 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 19, i32 0, i32 0
  %268 = load i64, i64* %0, align 8
  store i64 1, i64* %267, align 8, !tbaa !1256
  %269 = load i32, i32* %2, align 4
  %270 = sub i32 1, %269
  %271 = icmp ugt i32 %269, 1
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %20, align 1, !tbaa !1260
  %273 = and i32 %270, 255
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273) #8
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %27, align 1, !tbaa !1271
  %278 = xor i32 %269, %270
  %279 = lshr i32 %278, 4
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  store i8 %281, i8* %32, align 1, !tbaa !1272
  %282 = icmp eq i32 %270, 0
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %35, align 1, !tbaa !1273
  %284 = lshr i32 %270, 31
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %38, align 1, !tbaa !1274
  %286 = lshr i32 %269, 31
  %287 = add nuw nsw i32 %284, %286
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %44, align 1, !tbaa !1275
  %.v6 = select i1 %282, i64 20, i64 15
  %290 = add i64 %268, %.v6
  store i64 %290, i64* %0, align 8, !tbaa !1256
  br i1 %282, label %block_400d6c, label %block_400d67

block_400d2e:                                     ; preds = %block_400d00
  %291 = add i64 %80, -78
  %292 = add i64 %80, 5
  %293 = load i64, i64* %10, align 8, !tbaa !1256
  %294 = add i64 %293, -8
  %295 = inttoptr i64 %294 to i64*
  store i64 %292, i64* %295
  store i64 %294, i64* %10, align 8, !tbaa !1256
  store i64 %291, i64* %0, align 8, !tbaa !1256
  %296 = tail call %struct.Memory* @sub_400ce0_handleErrors(%struct.State* nonnull %state2, i64 %291, %struct.Memory* %64)
  %297 = load i64, i64* %0, align 8
  %298 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %297, %struct.Memory* %296)
  ret %struct.Memory* %298

block_400d6c:                                     ; preds = %block_400d33
  %299 = load i64, i64* %11, align 8
  %300 = add i64 %299, -52
  store i64 %300, i64* %7, align 8, !tbaa !1256
  %301 = add i64 %299, -48
  %302 = inttoptr i64 %301 to i64*
  %303 = load i64, i64* %302
  store i64 %303, i64* %9, align 8, !tbaa !1256
  %304 = add i64 %299, -40
  %305 = inttoptr i64 %304 to i64*
  %306 = load i64, i64* %305
  store i64 %306, i64* %8, align 8, !tbaa !1256
  %307 = add i64 %299, -8
  %308 = inttoptr i64 %307 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %6, align 8, !tbaa !1256
  %310 = add i64 %299, -12
  %311 = inttoptr i64 %310 to i32*
  %312 = load i32, i32* %311
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %12, align 8, !tbaa !1256
  %314 = add i64 %290, -524
  %315 = add i64 %290, 25
  %316 = load i64, i64* %10, align 8, !tbaa !1256
  %317 = add i64 %316, -8
  %318 = inttoptr i64 %317 to i64*
  store i64 %315, i64* %318
  store i64 %317, i64* %10, align 8, !tbaa !1256
  store i64 %314, i64* %0, align 8, !tbaa !1256
  %319 = tail call fastcc %struct.Memory* @ext_400b60_EVP_EncryptUpdate(%struct.State* nonnull %state2, %struct.Memory* %266) #8
  %320 = load i64, i64* %0, align 8
  store i64 1, i64* %12, align 8, !tbaa !1256
  %321 = load i32, i32* %2, align 4
  %322 = sub i32 1, %321
  %323 = icmp ugt i32 %321, 1
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %20, align 1, !tbaa !1260
  %325 = and i32 %322, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325) #8
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %27, align 1, !tbaa !1271
  %330 = xor i32 %321, %322
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %32, align 1, !tbaa !1272
  %334 = icmp eq i32 %322, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %35, align 1, !tbaa !1273
  %336 = lshr i32 %322, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %38, align 1, !tbaa !1274
  %338 = lshr i32 %321, 31
  %339 = add nuw nsw i32 %336, %338
  %340 = icmp eq i32 %339, 2
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %44, align 1, !tbaa !1275
  %.v = select i1 %334, i64 20, i64 15
  %342 = add i64 %320, %.v
  store i64 %342, i64* %0, align 8, !tbaa !1256
  br i1 %334, label %block_400d99, label %block_400d94

block_400dc9:                                     ; preds = %block_400d99
  %343 = add i64 %152, -233
  %344 = add i64 %152, 5
  %345 = load i64, i64* %10, align 8, !tbaa !1256
  %346 = add i64 %345, -8
  %347 = inttoptr i64 %346 to i64*
  store i64 %344, i64* %347
  store i64 %346, i64* %10, align 8, !tbaa !1256
  store i64 %343, i64* %0, align 8, !tbaa !1256
  %348 = tail call %struct.Memory* @sub_400ce0_handleErrors(%struct.State* nonnull %state2, i64 %343, %struct.Memory* %129)
  %349 = load i64, i64* %0, align 8
  %350 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %349, %struct.Memory* %348)
  ret %struct.Memory* %350

block_400d67:                                     ; preds = %block_400d33
  %351 = add i64 %290, -135
  %352 = add i64 %290, 5
  %353 = load i64, i64* %10, align 8, !tbaa !1256
  %354 = add i64 %353, -8
  %355 = inttoptr i64 %354 to i64*
  store i64 %352, i64* %355
  store i64 %354, i64* %10, align 8, !tbaa !1256
  store i64 %351, i64* %0, align 8, !tbaa !1256
  %356 = tail call %struct.Memory* @sub_400ce0_handleErrors(%struct.State* nonnull %state2, i64 %351, %struct.Memory* %266)
  %357 = load i64, i64* %0, align 8
  %358 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %state2, i64 %357, %struct.Memory* %356)
  ret %struct.Memory* %358
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @sub_400bf0___gmon_start__(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) unnamed_addr #4 {
block_400bf0:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = load i64, i64* getelementptr inbounds (%seg_601ff8__got_type, %seg_601ff8__got_type* @seg_601ff8__got, i32 0, i32 0)
  store i64 %1, i64* %0, align 8, !tbaa !1256
  %2 = tail call %struct.Memory* @__remill_jump(%struct.State* nonnull %state2, i64 %1, %struct.Memory* %memory1)
  ret %struct.Memory* %2
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #3

; Function Attrs: norecurse nounwind readnone
define  void @__mcsema_constructor() #5 {
  ret void
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_6021c8_memcpy(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400b30_strlen(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400a70_printf(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400e00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400af0_BIO_free_all(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @BIO_free_all to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_6021e0___assert_fail(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @__assert_fail to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_6021f0_malloc(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_602228_BIO_new_mem_buf(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @BIO_new_mem_buf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_602220_BIO_f_base64(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @BIO_f_base64 to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_602270_BIO_new(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @BIO_new to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400b00_BIO_push(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @BIO_push to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400ad0_BIO_set_flags(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @BIO_set_flags to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_602268_BIO_read(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @BIO_read to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400b70_ERR_print_errors_fp(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @ERR_print_errors_fp to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_6021d8_abort(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @abort to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400ae0_BIO_s_mem(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @BIO_s_mem to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_602240_BIO_write(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @BIO_write to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_602258_BIO_ctrl(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64)* @BIO_ctrl to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_602238_EVP_EncryptFinal_ex(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @EVP_EncryptFinal_ex to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400bc0_EVP_CIPHER_CTX_free(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @EVP_CIPHER_CTX_free to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400b90_EVP_aes_256_cbc(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @EVP_aes_256_cbc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400bd0_EVP_EncryptInit_ex(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64)* @EVP_EncryptInit_ex to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_400b60_EVP_EncryptUpdate(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64)* @EVP_EncryptUpdate to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define  fastcc %struct.Memory* @ext_6021e8_EVP_CIPHER_CTX_new(%struct.State*, %struct.Memory*) unnamed_addr #6 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @EVP_CIPHER_CTX_new to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @encrypt() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400d00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @2, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Base64Encode() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401120;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @calcDecodeLength() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401210;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @generate_iv() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400df0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @5, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x401444;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @6, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @handleErrors() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400ce0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @7, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400a38;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @8, void ()** nonnull @0) #8
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @Base64Decode() local_unnamed_addr #7 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4012b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @9, void ()** nonnull @0) #8
  ret void
}

declare %struct.Memory* @sub_4006b0_replacement(%struct.State*, i64, %struct.Memory*)

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline }
attributes #4 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readnone }
attributes #6 = { noinline nounwind }
attributes #7 = { naked nobuiltin noinline nounwind }
attributes #8 = { nounwind }

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
