; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@A = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@B = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matmul() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  br label %8

8:                                                ; preds = %106, %0
  %9 = load i32, ptr %1, align 4
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %11, label %109

11:                                               ; preds = %8
  store i32 0, ptr %2, align 4
  br label %12

12:                                               ; preds = %102, %11
  %13 = load i32, ptr %2, align 4
  %14 = icmp slt i32 %13, 1024
  br i1 %14, label %15, label %105

15:                                               ; preds = %12
  store i32 0, ptr %3, align 4
  br label %16

16:                                               ; preds = %98, %15
  %17 = load i32, ptr %3, align 4
  %18 = icmp slt i32 %17, 1024
  br i1 %18, label %19, label %101

19:                                               ; preds = %16
  %20 = load i32, ptr %1, align 4
  store i32 %20, ptr %4, align 4
  br label %21

21:                                               ; preds = %94, %19
  %22 = load i32, ptr %4, align 4
  %23 = load i32, ptr %1, align 4
  %24 = add nsw i32 %23, 32
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, ptr %4, align 4
  %28 = icmp slt i32 %27, 1024
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i1 [ false, %21 ], [ %28, %26 ]
  br i1 %30, label %31, label %97

31:                                               ; preds = %29
  %32 = load i32, ptr %2, align 4
  store i32 %32, ptr %5, align 4
  br label %33

33:                                               ; preds = %90, %31
  %34 = load i32, ptr %5, align 4
  %35 = load i32, ptr %2, align 4
  %36 = add nsw i32 %35, 32
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, ptr %5, align 4
  %40 = icmp slt i32 %39, 1024
  br label %41

41:                                               ; preds = %38, %33
  %42 = phi i1 [ false, %33 ], [ %40, %38 ]
  br i1 %42, label %43, label %93

43:                                               ; preds = %41
  %44 = load i32, ptr %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1024 x [1024 x float]], ptr @C, i64 0, i64 %45
  %47 = load i32, ptr %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1024 x float], ptr %46, i64 0, i64 %48
  %50 = load float, ptr %49, align 4
  store float %50, ptr %6, align 4
  %51 = load i32, ptr %3, align 4
  store i32 %51, ptr %7, align 4
  br label %52

52:                                               ; preds = %79, %43
  %53 = load i32, ptr %7, align 4
  %54 = load i32, ptr %3, align 4
  %55 = add nsw i32 %54, 32
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, ptr %7, align 4
  %59 = icmp slt i32 %58, 1024
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i1 [ false, %52 ], [ %59, %57 ]
  br i1 %61, label %62, label %82

62:                                               ; preds = %60
  %63 = load i32, ptr %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [1024 x [1024 x float]], ptr @A, i64 0, i64 %64
  %66 = load i32, ptr %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1024 x float], ptr %65, i64 0, i64 %67
  %69 = load float, ptr %68, align 4
  %70 = load i32, ptr %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [1024 x [1024 x float]], ptr @B, i64 0, i64 %71
  %73 = load i32, ptr %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1024 x float], ptr %72, i64 0, i64 %74
  %76 = load float, ptr %75, align 4
  %77 = load float, ptr %6, align 4
  %78 = call float @llvm.fmuladd.f32(float %69, float %76, float %77)
  store float %78, ptr %6, align 4
  br label %79

79:                                               ; preds = %62
  %80 = load i32, ptr %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %7, align 4
  br label %52, !llvm.loop !5

82:                                               ; preds = %60
  %83 = load float, ptr %6, align 4
  %84 = load i32, ptr %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [1024 x [1024 x float]], ptr @C, i64 0, i64 %85
  %87 = load i32, ptr %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [1024 x float], ptr %86, i64 0, i64 %88
  store float %83, ptr %89, align 4
  br label %90

90:                                               ; preds = %82
  %91 = load i32, ptr %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %5, align 4
  br label %33, !llvm.loop !7

93:                                               ; preds = %41
  br label %94

94:                                               ; preds = %93
  %95 = load i32, ptr %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %4, align 4
  br label %21, !llvm.loop !8

97:                                               ; preds = %29
  br label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %3, align 4
  %100 = add nsw i32 %99, 32
  store i32 %100, ptr %3, align 4
  br label %16, !llvm.loop !9

101:                                              ; preds = %16
  br label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %2, align 4
  %104 = add nsw i32 %103, 32
  store i32 %104, ptr %2, align 4
  br label %12, !llvm.loop !10

105:                                              ; preds = %12
  br label %106

106:                                              ; preds = %105
  %107 = load i32, ptr %1, align 4
  %108 = add nsw i32 %107, 32
  store i32 %108, ptr %1, align 4
  br label %8, !llvm.loop !11

109:                                              ; preds = %8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @matmul()
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str)
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
