; ModuleID = 'replaceIV.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%seg_600ff8__got_type = type <{ i64 }>
%_edata_type = type <{ [8 x i8] }>
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

@seg_600ff8__got = internal global %seg_600ff8__got_type <{ i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@_edata = dllexport local_unnamed_addr global %_edata_type zeroinitializer
@0 = internal constant void ()* @__mcsema_attach_call
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400690_main
@2 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400734__term_proc
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_400650_replacement
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @sub_4004e8__init_proc

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #1

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @RAND_bytes(i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400690_main(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_400690:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i8*
  %3 = bitcast %union.Flags* %1 to i32*
  %4 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 5, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %7, align 8, !tbaa !1256
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %9, i64* %12
  store i64 %11, i64* %8, align 8, !tbaa !1256
  %13 = add i64 %10, -24
  %14 = icmp ult i64 %11, 16
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !1260
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #6
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !1271
  %24 = xor i64 %11, 16
  %25 = xor i64 %24, %13
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1, !tbaa !1272
  %30 = icmp eq i64 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1, !tbaa !1273
  %33 = lshr i64 %13, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1, !tbaa !1274
  %36 = lshr i64 %11, 63
  %37 = xor i64 %33, %36
  %38 = add nuw nsw i64 %37, %36
  %39 = icmp eq i64 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1, !tbaa !1275
  %42 = add i64 %10, -12
  %43 = inttoptr i64 %42 to i32*
  store i32 0, i32* %43
  %44 = add i64 %pc, -64
  %45 = add i64 %pc, 20
  %46 = add i64 %10, -32
  %47 = inttoptr i64 %46 to i64*
  store i64 %45, i64* %47
  store i64 %46, i64* %7, align 8, !tbaa !1256
  store i64 %44, i64* %0, align 8, !tbaa !1256
  %48 = tail call %struct.Memory* @sub_400650_replacement(%struct.State* nonnull %state2, i64 %44, %struct.Memory* %memory1)
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %0, align 8
  store i64 %49, i64* %6, align 8, !tbaa !1256
  store i8 0, i8* %2, align 1, !tbaa !1276
  %51 = add i64 %50, -388
  %52 = add i64 %50, 10
  %53 = load i64, i64* %7, align 8, !tbaa !1256
  %54 = add i64 %53, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %52, i64* %55
  store i64 %54, i64* %7, align 8, !tbaa !1256
  store i64 %51, i64* %0, align 8, !tbaa !1256
  %56 = tail call fastcc %struct.Memory* @ext_601070_printf(%struct.State* nonnull %state2, %struct.Memory* %48) #6
  store i64 0, i64* %5, align 8, !tbaa !1256
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, -8
  %59 = load i32, i32* %3, align 4
  %60 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %60
  store i64 0, i64* %4, align 8, !tbaa !1256
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 16
  %63 = icmp ugt i64 %61, -17
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %16, align 1, !tbaa !1260
  %65 = trunc i64 %62 to i32
  %66 = and i32 %65, 255
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66) #6
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  store i8 %70, i8* %23, align 1, !tbaa !1271
  %71 = xor i64 %61, 16
  %72 = xor i64 %71, %62
  %73 = lshr i64 %72, 4
  %74 = trunc i64 %73 to i8
  %75 = and i8 %74, 1
  store i8 %75, i8* %29, align 1, !tbaa !1272
  %76 = icmp eq i64 %62, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %32, align 1, !tbaa !1273
  %78 = lshr i64 %62, 63
  %79 = trunc i64 %78 to i8
  store i8 %79, i8* %35, align 1, !tbaa !1274
  %80 = lshr i64 %61, 63
  %81 = xor i64 %78, %80
  %82 = add nuw nsw i64 %81, %78
  %83 = icmp eq i64 %82, 2
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %41, align 1, !tbaa !1275
  %85 = add i64 %61, 24
  %86 = inttoptr i64 %62 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %8, align 8, !tbaa !1256
  %88 = inttoptr i64 %85 to i64*
  %89 = load i64, i64* %88
  store i64 %89, i64* %0, align 8, !tbaa !1256
  %90 = add i64 %61, 32
  store i64 %90, i64* %7, align 8, !tbaa !1256
  ret %struct.Memory* %56
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_4004e8__init_proc(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_4004e8:
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
  %11 = load i64, i64* getelementptr inbounds (%seg_600ff8__got_type, %seg_600ff8__got_type* @seg_600ff8__got, i32 0, i32 0)
  store i64 %11, i64* %1, align 8, !tbaa !1256
  store i8 0, i8* %5, align 1, !tbaa !1260
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #6
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
  br i1 %18, label %block_4004fd, label %block_4004f8

block_4004f8:                                     ; preds = %block_4004e8
  %23 = add i64 %22, 104
  %24 = add i64 %22, 5
  %25 = add i64 %3, -16
  %26 = inttoptr i64 %25 to i64*
  store i64 %24, i64* %26
  store i64 %25, i64* %2, align 8, !tbaa !1256
  store i64 %23, i64* %0, align 8, !tbaa !1256
  %27 = tail call fastcc %struct.Memory* @sub_400560___gmon_start__(%struct.State* nonnull %state2, i64 %23, %struct.Memory* %memory1)
  %.pre = load i64, i64* %2, align 8
  br label %block_4004fd

block_4004fd:                                     ; preds = %block_4004f8, %block_4004e8
  %28 = phi i64 [ %4, %block_4004e8 ], [ %.pre, %block_4004f8 ]
  %MEMORY.0 = phi %struct.Memory* [ %memory1, %block_4004e8 ], [ %27, %block_4004f8 ]
  %29 = add i64 %28, 8
  %30 = icmp ugt i64 %28, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %5, align 1, !tbaa !1260
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #6
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
define internal %struct.Memory* @sub_400650_replacement(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) #3 {
block_400650:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 1, i32 0
  %2 = bitcast %union.Flags* %1 to i32*
  %3 = getelementptr inbounds %union.Flags, %union.Flags* %1, i64 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 9, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 11, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 15, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %6, align 8, !tbaa !1256
  %10 = add i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64 %8, i64* %11
  store i64 %10, i64* %7, align 8, !tbaa !1256
  %12 = add i64 %9, -24
  %13 = icmp ult i64 %10, 16
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !1260
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17) #6
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !1271
  %23 = xor i64 %10, 16
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !1272
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !1273
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !1274
  %35 = lshr i64 %10, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !1275
  store i64 64, i64* %3, align 8, !tbaa !1256
  store i64 64, i64* %5, align 8, !tbaa !1256
  %41 = add i64 %pc, -288
  %42 = add i64 %pc, 20
  %43 = add i64 %9, -32
  %44 = inttoptr i64 %43 to i64*
  store i64 %42, i64* %44
  store i64 %43, i64* %6, align 8, !tbaa !1256
  store i64 %41, i64* %0, align 8, !tbaa !1256
  %45 = tail call fastcc %struct.Memory* @ext_601058_malloc(%struct.State* nonnull %state2, %struct.Memory* %memory1) #6
  %46 = load i64, i64* %0, align 8
  store i64 16, i64* %4, align 8, !tbaa !1256
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, -8
  %49 = load i64, i64* %3, align 8
  %50 = inttoptr i64 %48 to i64*
  store i64 %49, i64* %50
  %51 = inttoptr i64 %48 to i64*
  %52 = load i64, i64* %51
  store i64 %52, i64* %5, align 8, !tbaa !1256
  %53 = add i64 %46, -276
  %54 = add i64 %46, 18
  %55 = load i64, i64* %6, align 8, !tbaa !1256
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %54, i64* %57
  store i64 %56, i64* %6, align 8, !tbaa !1256
  store i64 %53, i64* %0, align 8, !tbaa !1256
  %58 = tail call fastcc %struct.Memory* @ext_601088_RAND_bytes(%struct.State* nonnull %state2, %struct.Memory* %45) #6
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, -8
  %61 = inttoptr i64 %60 to i64*
  %62 = load i64, i64* %61
  store i64 %62, i64* %5, align 8, !tbaa !1256
  %63 = add i64 %59, -12
  %64 = load i32, i32* %2, align 4
  %65 = inttoptr i64 %63 to i32*
  store i32 %64, i32* %65
  store i64 %62, i64* %3, align 8, !tbaa !1256
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 16
  %68 = icmp ugt i64 %66, -17
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %15, align 1, !tbaa !1260
  %70 = trunc i64 %67 to i32
  %71 = and i32 %70, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71) #6
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %22, align 1, !tbaa !1271
  %76 = xor i64 %66, 16
  %77 = xor i64 %76, %67
  %78 = lshr i64 %77, 4
  %79 = trunc i64 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %28, align 1, !tbaa !1272
  %81 = icmp eq i64 %67, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %31, align 1, !tbaa !1273
  %83 = lshr i64 %67, 63
  %84 = trunc i64 %83 to i8
  store i8 %84, i8* %34, align 1, !tbaa !1274
  %85 = lshr i64 %66, 63
  %86 = xor i64 %83, %85
  %87 = add nuw nsw i64 %86, %83
  %88 = icmp eq i64 %87, 2
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %40, align 1, !tbaa !1275
  %90 = add i64 %66, 24
  %91 = inttoptr i64 %67 to i64*
  %92 = load i64, i64* %91
  store i64 %92, i64* %7, align 8, !tbaa !1256
  %93 = inttoptr i64 %90 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %0, align 8, !tbaa !1256
  %95 = add i64 %66, 32
  store i64 %95, i64* %6, align 8, !tbaa !1256
  ret %struct.Memory* %58
}

; Function Attrs: noinline nounwind
define internal %struct.Memory* @sub_400734__term_proc(%struct.State* nocapture dereferenceable(3280) %state2, i64 %pc, %struct.Memory* returned %memory1) #3 {
block_400734:
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
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #6
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
define internal fastcc %struct.Memory* @sub_400560___gmon_start__(%struct.State* dereferenceable(3280) %state2, i64 %pc, %struct.Memory* %memory1) unnamed_addr #3 {
block_400560:
  %0 = getelementptr inbounds %struct.State, %struct.State* %state2, i64 0, i32 6, i32 33, i32 0, i32 0
  %1 = load i64, i64* getelementptr inbounds (%seg_600ff8__got_type, %seg_600ff8__got_type* @seg_600ff8__got, i32 0, i32 0)
  store i64 %1, i64* %0, align 8, !tbaa !1256
  %2 = tail call %struct.Memory* @__remill_jump(%struct.State* nonnull %state2, i64 %1, %struct.Memory* %memory1)
  ret %struct.Memory* %2
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #2

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601070_printf(%struct.State*, %struct.Memory*) unnamed_addr #4 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @main() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400690;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @1, void ()** nonnull @0) #6
  ret void
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601058_malloc(%struct.State*, %struct.Memory*) unnamed_addr #4 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: noinline nounwind
define internal fastcc %struct.Memory* @ext_601088_RAND_bytes(%struct.State*, %struct.Memory*) unnamed_addr #4 {
  %3 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @RAND_bytes to i64), %struct.Memory* %1)
  ret %struct.Memory* %3
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.term_proc() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400734;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @2, void ()** nonnull @0) #6
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @replacement() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x400650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @3, void ()** nonnull @0) #6
  ret void
}

; Function Attrs: naked nobuiltin noinline nounwind
define dllexport void @.init_proc() local_unnamed_addr #5 {
  tail call void asm sideeffect "pushq $0;pushq $$0x4004e8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** nonnull @4, void ()** nonnull @0) #6
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline }
attributes #3 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind }
attributes #5 = { naked nobuiltin noinline nounwind }
attributes #6 = { nounwind }

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
