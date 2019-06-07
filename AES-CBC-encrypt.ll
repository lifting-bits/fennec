; ModuleID = 'AES-CBC-encrypt.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.evp_cipher_ctx_st = type { %struct.evp_cipher_st*, %struct.engine_st*, i32, i32, [16 x i8], [16 x i8], [32 x i8], i32, i8*, i32, i64, i8*, i32, i32, [32 x i8] }
%struct.evp_cipher_st = type { i32, i32, i32, i32, i64, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i32)*, i32 (%struct.evp_cipher_ctx_st*, i8*, i8*, i64)*, i32 (%struct.evp_cipher_ctx_st*)*, i32, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, %struct.asn1_type_st*)*, i32 (%struct.evp_cipher_ctx_st*, i32, i32, i8*)*, i8* }
%struct.asn1_type_st = type { i32, %union.anon }
%union.anon = type { i8* }
%struct.engine_st = type opaque

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789012345\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"16807282475249162265007398494365\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"0b039286d997a33c9e463b296e4dc7be4c666390cc85\00", align 1
@.str.4 = private unnamed_addr constant [185 x i8] c"Um9sbGluJyBpbiBteSA1LjAKV2l0aCBteSByYWctdG9wIGRvd24gc28gbXkgaGFpciBjYW4gYmxvdwpUaGUgZ2lybGllcyBvbiBzdGFuZGJ5IHdhdmluZyBqdXN0IHRvIHNheSBoaQpEaWQgeW91IHN0b3A/IE5vLCBJIGp1c3QgZHJvdmUgYnkK\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define void @handleErrors() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @ERR_print_errors_fp(%struct._IO_FILE* %1)
  call void @abort() #6
  unreachable
                                                  ; No predecessors!
  ret void
}

declare void @ERR_print_errors_fp(%struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: nounwind uwtable
define i32 @encrypt(i8* %plaintext, i32 %plaintext_len, i8* %key, i8* %iv, i8* %ciphertext) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %ctx = alloca %struct.evp_cipher_ctx_st*, align 8
  %len = alloca i32, align 4
  %ciphertext_len = alloca i32, align 4
  store i8* %plaintext, i8** %1, align 8
  store i32 %plaintext_len, i32* %2, align 4
  store i8* %key, i8** %3, align 8
  store i8* %iv, i8** %4, align 8
  store i8* %ciphertext, i8** %5, align 8
  %6 = call %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new()
  store %struct.evp_cipher_ctx_st* %6, %struct.evp_cipher_ctx_st** %ctx, align 8
  %7 = icmp ne %struct.evp_cipher_ctx_st* %6, null
  br i1 %7, label %9, label %8

; <label>:8                                       ; preds = %0
  call void @handleErrors()
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8
  %11 = call %struct.evp_cipher_st* @EVP_aes_256_cbc()
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st* %10, %struct.evp_cipher_st* %11, %struct.engine_st* null, i8* %12, i8* %13)
  %15 = icmp ne i32 1, %14
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %9
  call void @handleErrors()
  br label %17

; <label>:17                                      ; preds = %16, %9
  %18 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st* %18, i8* %19, i32* %len, i8* %20, i32 %21)
  %23 = icmp ne i32 1, %22
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %17
  call void @handleErrors()
  br label %25

; <label>:25                                      ; preds = %24, %17
  %26 = load i32, i32* %len, align 4
  store i32 %26, i32* %ciphertext_len, align 4
  %27 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %len, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st* %27, i8* %31, i32* %len)
  %33 = icmp ne i32 1, %32
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %25
  call void @handleErrors()
  br label %35

; <label>:35                                      ; preds = %34, %25
  %36 = load i32, i32* %len, align 4
  %37 = load i32, i32* %ciphertext_len, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %ciphertext_len, align 4
  %39 = load %struct.evp_cipher_ctx_st*, %struct.evp_cipher_ctx_st** %ctx, align 8
  call void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st* %39)
  %40 = load i32, i32* %ciphertext_len, align 4
  ret i32 %40
}

declare %struct.evp_cipher_ctx_st* @EVP_CIPHER_CTX_new() #1

declare i32 @EVP_EncryptInit_ex(%struct.evp_cipher_ctx_st*, %struct.evp_cipher_st*, %struct.engine_st*, i8*, i8*) #1

declare %struct.evp_cipher_st* @EVP_aes_256_cbc() #1

declare i32 @EVP_EncryptUpdate(%struct.evp_cipher_ctx_st*, i8*, i32*, i8*, i32) #1

declare i32 @EVP_EncryptFinal_ex(%struct.evp_cipher_ctx_st*, i8*, i32*) #1

declare void @EVP_CIPHER_CTX_free(%struct.evp_cipher_ctx_st*) #1

; Function Attrs: nounwind uwtable
define i8* @generate_iv() #0 {
  ret i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %key = alloca i8*, align 8
  %iv = alloca i8*, align 8
  %iv_len = alloca i64, align 8
  %delimiter = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %prefix_len = alloca i64, align 8
  %to_append = alloca i8*, align 8
  %to_append_decoded = alloca i8*, align 8
  %to_append_len = alloca i64, align 8
  %text_base64 = alloca i8*, align 8
  %text = alloca i8*, align 8
  %text_len = alloca i64, align 8
  %4 = alloca i8*, align 8
  %plaintext = alloca i8*, align 8
  %p_len = alloca i64, align 8
  %ciphertext_len = alloca i32, align 4
  %ciphertext_base64 = alloca i8*, align 8
  %c = alloca i8*, align 8
  %iv_base64 = alloca i8*, align 8
  %i = alloca i8*, align 8
  %lengthtoadd = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i8** %key, align 8
  %5 = call i8* @generate_iv()
  store i8* %5, i8** %iv, align 8
  store i64 16, i64* %iv_len, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %delimiter, align 8
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i8** %prefix, align 8
  store i64 22, i64* %prefix_len, align 8
  store i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.4, i32 0, i32 0), i8** %to_append, align 8
  %6 = load i8*, i8** %to_append, align 8
  %7 = call i32 @Base64Decode(i8* %6, i8** %to_append_decoded, i64* %to_append_len)
  %8 = load i8**, i8*** %3, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 1
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %text_base64, align 8
  %11 = load i8*, i8** %text_base64, align 8
  %12 = call i32 @Base64Decode(i8* %11, i8** %text, i64* %text_len)
  %13 = load i64, i64* %prefix_len, align 8
  %14 = load i64, i64* %text_len, align 8
  %15 = add i64 %13, %14
  %16 = load i64, i64* %to_append_len, align 8
  %17 = add i64 %15, %16
  %18 = add i64 %17, 1
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %4, align 8
  %20 = alloca i8, i64 %18, align 16
  %21 = load i8*, i8** %prefix, align 8
  %22 = load i64, i64* %prefix_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 %22, i32 1, i1 false)
  %23 = load i64, i64* %prefix_len, align 8
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8*, i8** %text, align 8
  %26 = load i64, i64* %text_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 %26, i32 1, i1 false)
  %27 = load i64, i64* %prefix_len, align 8
  %28 = getelementptr inbounds i8, i8* %20, i64 %27
  %29 = load i64, i64* %text_len, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8*, i8** %to_append_decoded, align 8
  %32 = load i64, i64* %to_append_len, align 8
  %33 = add i64 %32, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 %33, i32 1, i1 false)
  store i8* %20, i8** %plaintext, align 8
  %34 = load i64, i64* %prefix_len, align 8
  %35 = load i64, i64* %text_len, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* %to_append_len, align 8
  %38 = add i64 %36, %37
  %39 = add i64 %38, 1
  store i64 %39, i64* %p_len, align 8
  %40 = load i64, i64* %p_len, align 8
  %41 = alloca i8, i64 %40, align 16
  %42 = load i8*, i8** %plaintext, align 8
  %43 = load i64, i64* %p_len, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i8*, i8** %key, align 8
  %46 = load i8*, i8** %iv, align 8
  %47 = call i32 @encrypt(i8* %42, i32 %44, i8* %45, i8* %46, i8* %41)
  store i32 %47, i32* %ciphertext_len, align 4
  store i8* %41, i8** %c, align 8
  %48 = load i8*, i8** %c, align 8
  %49 = load i32, i32* %ciphertext_len, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 @Base64Encode(i8* %48, i64 %50, i8** %ciphertext_base64)
  %52 = load i8*, i8** %iv, align 8
  store i8* %52, i8** %i, align 8
  %53 = load i8*, i8** %i, align 8
  %54 = load i64, i64* %iv_len, align 8
  %55 = call i32 @Base64Encode(i8* %53, i64 %54, i8** %iv_base64)
  %56 = load i8*, i8** %ciphertext_base64, align 8
  %57 = call i64 @strlen(i8* %56) #7
  store i64 %57, i64* %lengthtoadd, align 8
  store i64 24, i64* %iv_len, align 8
  %58 = load i64, i64* %lengthtoadd, align 8
  %59 = load i64, i64* %iv_len, align 8
  %60 = add i64 %58, %59
  %61 = add i64 %60, 2
  %62 = alloca i8, i64 %61, align 16
  %63 = load i8*, i8** %iv_base64, align 8
  %64 = load i64, i64* %iv_len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %64, i32 1, i1 false)
  %65 = load i64, i64* %iv_len, align 8
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8*, i8** %delimiter, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 1, i32 1, i1 false)
  %68 = load i64, i64* %iv_len, align 8
  %69 = getelementptr inbounds i8, i8* %62, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8*, i8** %ciphertext_base64, align 8
  %72 = load i64, i64* %lengthtoadd, align 8
  %73 = add i64 %72, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 %73, i32 1, i1 false)
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* %62)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %76 = load i32, i32* %ciphertext_len, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %76)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  %79 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %1, align 4
  ret i32 %80
}

declare i32 @Base64Decode(i8*, i8**, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i32 @Base64Encode(i8*, i64, i8**) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}
