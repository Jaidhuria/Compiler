; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Sum        : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Even Sum   : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Odd Sum    : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Max        : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Min        : %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Product    : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Matrix Sum : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1000 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %3, align 4
  br label %19

19:                                               ; preds = %22, %0
  %20 = load i32, ptr %3, align 4
  %21 = icmp slt i32 %20, 1000
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %24, 5
  %26 = load i32, ptr %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1000 x i32], ptr %2, i64 0, i64 %27
  store i32 %25, ptr %28, align 4
  %29 = load i32, ptr %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %3, align 4
  br label %19, !llvm.loop !5

31:                                               ; preds = %19
  store i32 0, ptr %4, align 4
  store i32 0, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %32 = getelementptr inbounds [1000 x i32], ptr %2, i64 0, i64 0
  %33 = load i32, ptr %32, align 16
  store i32 %33, ptr %7, align 4
  %34 = getelementptr inbounds [1000 x i32], ptr %2, i64 0, i64 0
  %35 = load i32, ptr %34, align 16
  store i32 %35, ptr %8, align 4
  store i32 0, ptr %3, align 4
  br label %36

36:                                               ; preds = %80, %31
  %37 = load i32, ptr %3, align 4
  %38 = icmp slt i32 %37, 1000
  br i1 %38, label %39, label %95

39:                                               ; preds = %36
  %40 = load i32, ptr %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1000 x i32], ptr %2, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %9, align 4
  store i32 200, ptr %10, align 4
  %44 = load i32, ptr %9, align 4
  %45 = mul nsw i32 %44, 999
  store i32 %45, ptr %11, align 4
  %46 = load i32, ptr %9, align 4
  %47 = mul nsw i32 %46, 4
  store i32 %47, ptr %12, align 4
  %48 = load i32, ptr %9, align 4
  %49 = mul nsw i32 %48, 4
  store i32 %49, ptr %13, align 4
  %50 = load i32, ptr %9, align 4
  %51 = load i32, ptr %4, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, ptr %4, align 4
  %53 = load i32, ptr %9, align 4
  %54 = srem i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %39
  %57 = load i32, ptr %9, align 4
  %58 = load i32, ptr %10, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, ptr %5, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, ptr %5, align 4
  br label %68

62:                                               ; preds = %39
  %63 = load i32, ptr %9, align 4
  %64 = load i32, ptr %10, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, ptr %6, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, ptr %6, align 4
  br label %68

68:                                               ; preds = %62, %56
  %69 = load i32, ptr %9, align 4
  %70 = load i32, ptr %7, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, ptr %9, align 4
  store i32 %73, ptr %7, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i32, ptr %9, align 4
  %76 = load i32, ptr %8, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, ptr %9, align 4
  store i32 %79, ptr %8, align 4
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i32, ptr %3, align 4
  %82 = mul nsw i32 %81, 8
  %83 = load i32, ptr %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1000 x i32], ptr %2, i64 0, i64 %84
  store i32 %82, ptr %85, align 4
  %86 = load i32, ptr %4, align 4
  %87 = add nsw i32 %86, 5000
  store i32 %87, ptr %4, align 4
  %88 = load i32, ptr %9, align 4
  %89 = load i32, ptr %9, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, ptr %9, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, ptr %14, align 4
  %93 = load i32, ptr %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, ptr %3, align 4
  br label %36, !llvm.loop !7

95:                                               ; preds = %36
  store i32 0, ptr %3, align 4
  store i32 1, ptr %15, align 4
  br label %96

96:                                               ; preds = %99, %95
  %97 = load i32, ptr %3, align 4
  %98 = icmp slt i32 %97, 20
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, ptr %15, align 4
  %101 = mul nsw i32 %100, 2
  store i32 %101, ptr %15, align 4
  %102 = load i32, ptr %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %3, align 4
  br label %96, !llvm.loop !8

104:                                              ; preds = %96
  store i32 0, ptr %16, align 4
  store i32 0, ptr %17, align 4
  br label %105

105:                                              ; preds = %120, %104
  %106 = load i32, ptr %17, align 4
  %107 = icmp slt i32 %106, 50
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  store i32 0, ptr %18, align 4
  br label %109

109:                                              ; preds = %112, %108
  %110 = load i32, ptr %18, align 4
  %111 = icmp slt i32 %110, 50
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i32, ptr %17, align 4
  %114 = load i32, ptr %18, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, ptr %16, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, ptr %16, align 4
  %118 = load i32, ptr %18, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %18, align 4
  br label %109, !llvm.loop !9

120:                                              ; preds = %109
  %121 = load i32, ptr %17, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %17, align 4
  br label %105, !llvm.loop !10

123:                                              ; preds = %105
  %124 = load i32, ptr %4, align 4
  %125 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %124)
  %126 = load i32, ptr %5, align 4
  %127 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %126)
  %128 = load i32, ptr %6, align 4
  %129 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %128)
  %130 = load i32, ptr %7, align 4
  %131 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %130)
  %132 = load i32, ptr %8, align 4
  %133 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %132)
  %134 = load i32, ptr %15, align 4
  %135 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %134)
  %136 = load i32, ptr %16, align 4
  %137 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %136)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
