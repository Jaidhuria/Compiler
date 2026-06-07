; ModuleID = 'tiled.c'
source_filename = "tiled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@A = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@B = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matmul_tiled() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %8

8:                                                ; preds = %91, %0
  %9 = load i32, ptr %1, align 4
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %11, label %94

11:                                               ; preds = %8
  store i32 0, ptr %2, align 4
  br label %12

12:                                               ; preds = %87, %11
  %13 = load i32, ptr %2, align 4
  %14 = icmp slt i32 %13, 1024
  br i1 %14, label %15, label %90

15:                                               ; preds = %12
  store i32 0, ptr %3, align 4
  br label %16

16:                                               ; preds = %83, %15
  %17 = load i32, ptr %3, align 4
  %18 = icmp slt i32 %17, 1024
  br i1 %18, label %19, label %86

19:                                               ; preds = %16
  %20 = load i32, ptr %1, align 4
  store i32 %20, ptr %4, align 4
  br label %21

21:                                               ; preds = %79, %19
  %22 = load i32, ptr %4, align 4
  %23 = load i32, ptr %1, align 4
  %24 = add nsw i32 %23, 32
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %21
  %27 = load i32, ptr %2, align 4
  store i32 %27, ptr %5, align 4
  br label %28

28:                                               ; preds = %75, %26
  %29 = load i32, ptr %5, align 4
  %30 = load i32, ptr %2, align 4
  %31 = add nsw i32 %30, 32
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %28
  %34 = load i32, ptr %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1024 x [1024 x float]], ptr @C, i64 0, i64 %35
  %37 = load i32, ptr %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [1024 x float], ptr %36, i64 0, i64 %38
  %40 = load float, ptr %39, align 4
  store float %40, ptr %6, align 4
  %41 = load i32, ptr %3, align 4
  store i32 %41, ptr %7, align 4
  br label %42

42:                                               ; preds = %64, %33
  %43 = load i32, ptr %7, align 4
  %44 = load i32, ptr %3, align 4
  %45 = add nsw i32 %44, 32
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load i32, ptr %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1024 x [1024 x float]], ptr @A, i64 0, i64 %49
  %51 = load i32, ptr %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1024 x float], ptr %50, i64 0, i64 %52
  %54 = load float, ptr %53, align 4
  %55 = load i32, ptr %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1024 x [1024 x float]], ptr @B, i64 0, i64 %56
  %58 = load i32, ptr %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1024 x float], ptr %57, i64 0, i64 %59
  %61 = load float, ptr %60, align 4
  %62 = load float, ptr %6, align 4
  %63 = call float @llvm.fmuladd.f32(float %54, float %61, float %62)
  store float %63, ptr %6, align 4
  br label %64

64:                                               ; preds = %47
  %65 = load i32, ptr %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %7, align 4
  br label %42, !llvm.loop !5

67:                                               ; preds = %42
  %68 = load float, ptr %6, align 4
  %69 = load i32, ptr %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [1024 x [1024 x float]], ptr @C, i64 0, i64 %70
  %72 = load i32, ptr %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [1024 x float], ptr %71, i64 0, i64 %73
  store float %68, ptr %74, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i32, ptr %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %5, align 4
  br label %28, !llvm.loop !7

78:                                               ; preds = %28
  br label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %4, align 4
  br label %21, !llvm.loop !8

82:                                               ; preds = %21
  br label %83

83:                                               ; preds = %82
  %84 = load i32, ptr %3, align 4
  %85 = add nsw i32 %84, 32
  store i32 %85, ptr %3, align 4
  br label %16, !llvm.loop !9

86:                                               ; preds = %16
  br label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %2, align 4
  %89 = add nsw i32 %88, 32
  store i32 %89, ptr %2, align 4
  br label %12, !llvm.loop !10

90:                                               ; preds = %12
  br label %91

91:                                               ; preds = %90
  %92 = load i32, ptr %1, align 4
  %93 = add nsw i32 %92, 32
  store i32 %93, ptr %1, align 4
  br label %8, !llvm.loop !11

94:                                               ; preds = %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %2, align 4
  br label %4

4:                                                ; preds = %34, %0
  %5 = load i32, ptr %2, align 4
  %6 = icmp slt i32 %5, 1024
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  store i32 0, ptr %3, align 4
  br label %8

8:                                                ; preds = %30, %7
  %9 = load i32, ptr %3, align 4
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i32, ptr %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1024 x [1024 x float]], ptr @A, i64 0, i64 %13
  %15 = load i32, ptr %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1024 x float], ptr %14, i64 0, i64 %16
  store float 1.000000e+00, ptr %17, align 4
  %18 = load i32, ptr %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1024 x [1024 x float]], ptr @B, i64 0, i64 %19
  %21 = load i32, ptr %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1024 x float], ptr %20, i64 0, i64 %22
  store float 1.000000e+00, ptr %23, align 4
  %24 = load i32, ptr %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1024 x [1024 x float]], ptr @C, i64 0, i64 %25
  %27 = load i32, ptr %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1024 x float], ptr %26, i64 0, i64 %28
  store float 0.000000e+00, ptr %29, align 4
  br label %30

30:                                               ; preds = %11
  %31 = load i32, ptr %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %3, align 4
  br label %8, !llvm.loop !12

33:                                               ; preds = %8
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %2, align 4
  br label %4, !llvm.loop !13

37:                                               ; preds = %4
  call void @matmul_tiled()
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 7377bac59b4aea64da09873b44df1430571e93c3)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
