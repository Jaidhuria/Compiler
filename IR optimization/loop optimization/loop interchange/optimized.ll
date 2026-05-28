; ModuleID = 'interchange.ll'
source_filename = "interchange.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = dso_local global [64 x [64 x i32]] zeroinitializer, align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z3foov() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %11 ], [ 0, %0 ]
  %exitcond6 = icmp ne i64 %indvars.iv3, 64
  br i1 %exitcond6, label %3, label %2

2:                                                ; preds = %1
  br label %12

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %9, %3
  %indvars.iv = phi i64 [ %indvars.iv.next, %9 ], [ 0, %3 ]
  %exitcond = icmp ne i64 %indvars.iv, 64
  br i1 %exitcond, label %6, label %5

5:                                                ; preds = %4
  br label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds [64 x [64 x i32]], ptr @A, i64 0, i64 %indvars.iv
  %8 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %indvars.iv3
  store i32 0, ptr %8, align 4, !tbaa !4
  br label %9

9:                                                ; preds = %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %4, !llvm.loop !8

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %1, !llvm.loop !11

12:                                               ; preds = %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

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
