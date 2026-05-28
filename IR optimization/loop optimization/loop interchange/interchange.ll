; ModuleID = 'interchange.cpp'
source_filename = "interchange.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = dso_local global [64 x [64 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z3foov() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(ptr %1) #2
  store i32 0, ptr %1, align 4, !tbaa !4
  br label %4

4:                                                ; preds = %24, %0
  %5 = load i32, ptr %1, align 4, !tbaa !4
  %6 = icmp slt i32 %5, 64
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  store i32 2, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr %1) #2
  br label %27

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(ptr %3) #2
  store i32 0, ptr %3, align 4, !tbaa !4
  br label %9

9:                                                ; preds = %20, %8
  %10 = load i32, ptr %3, align 4, !tbaa !4
  %11 = icmp slt i32 %10, 64
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 5, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr %3) #2
  br label %23

13:                                               ; preds = %9
  %14 = load i32, ptr %3, align 4, !tbaa !4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [64 x [64 x i32]], ptr @A, i64 0, i64 %15
  %17 = load i32, ptr %1, align 4, !tbaa !4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [64 x i32], ptr %16, i64 0, i64 %18
  store i32 0, ptr %19, align 4, !tbaa !4
  br label %20

20:                                               ; preds = %13
  %21 = load i32, ptr %3, align 4, !tbaa !4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %3, align 4, !tbaa !4
  br label %9, !llvm.loop !8

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = load i32, ptr %1, align 4, !tbaa !4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %1, align 4, !tbaa !4
  br label %4, !llvm.loop !11

27:                                               ; preds = %7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 7377bac59b4aea64da09873b44df1430571e93c3)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
