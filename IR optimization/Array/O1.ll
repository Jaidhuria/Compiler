; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Final Result: %d\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @initialize(ptr noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %7

6:                                                ; preds = %7, %2
  ret void

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %13, %7 ]
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %8
  %10 = trunc i64 %8 to i32
  %11 = shl i32 %10, 1
  %12 = add i32 %11, 5
  store i32 %12, ptr %9, align 4, !tbaa !4
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %6, label %7, !llvm.loop !8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @processArray(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %11
  %7 = phi i64 [ 0, %4 ], [ %12, %11 ]
  %8 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !4
  br label %14

10:                                               ; preds = %11, %2
  ret void

11:                                               ; preds = %14
  store i32 %22, ptr %8, align 4, !tbaa !4
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %10, label %6, !llvm.loop !11

14:                                               ; preds = %6, %14
  %15 = phi i32 [ 0, %6 ], [ %23, %14 ]
  %16 = phi i32 [ %9, %6 ], [ %22, %14 ]
  %17 = add nsw i32 %16, %15
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = add nsw i32 %17, -3
  %21 = shl nsw i32 %17, 1
  %22 = select i1 %19, i32 %21, i32 %20
  %23 = add nuw nsw i32 %15, 1
  %24 = icmp eq i32 %23, 50
  br i1 %24, label %11, label %14, !llvm.loop !12
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @calculateSum(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %8

6:                                                ; preds = %21, %2
  %7 = phi i32 [ 0, %2 ], [ %22, %21 ]
  ret i32 %7

8:                                                ; preds = %4, %21
  %9 = phi i64 [ 0, %4 ], [ %23, %21 ]
  %10 = phi i32 [ 0, %4 ], [ %22, %21 ]
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !4
  %13 = add nsw i32 %12, %10
  %14 = icmp sgt i32 %12, 500
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = lshr i32 %12, 1
  %17 = add nsw i32 %13, %16
  br label %21

18:                                               ; preds = %8
  %19 = sdiv i32 %12, -3
  %20 = add i32 %19, %13
  br label %21

21:                                               ; preds = %15, %18
  %22 = phi i32 [ %17, %15 ], [ %20, %18 ]
  %23 = add nuw nsw i64 %9, 1
  %24 = icmp eq i64 %23, %5
  br i1 %24, label %6, label %8, !llvm.loop !13
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dependencyLoop(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = load i32, ptr %0, align 4
  br label %8

7:                                                ; preds = %8, %2
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i32 [ %6, %4 ], [ %13, %8 ]
  %10 = phi i64 [ 1, %4 ], [ %14, %8 ]
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !4
  %13 = add nsw i32 %9, %12
  store i32 %13, ptr %11, align 4, !tbaa !4
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %7, label %8, !llvm.loop !14
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  %1 = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  br label %2

2:                                                ; preds = %2, %0
  %3 = phi i64 [ 0, %0 ], [ %8, %2 ]
  %4 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 1
  %7 = add i32 %6, 5
  store i32 %7, ptr %4, align 4, !tbaa !4
  %8 = add nuw nsw i64 %3, 1
  %9 = icmp eq i64 %8, 1000
  br i1 %9, label %10, label %2, !llvm.loop !8

10:                                               ; preds = %2, %14
  %11 = phi i64 [ %15, %14 ], [ 0, %2 ]
  %12 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !4
  br label %19

14:                                               ; preds = %19
  store i32 %27, ptr %12, align 4, !tbaa !4
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, 1000
  br i1 %16, label %17, label %10, !llvm.loop !11

17:                                               ; preds = %14
  %18 = load i32, ptr %1, align 16
  br label %30

19:                                               ; preds = %19, %10
  %20 = phi i32 [ 0, %10 ], [ %28, %19 ]
  %21 = phi i32 [ %13, %10 ], [ %27, %19 ]
  %22 = add nsw i32 %21, %20
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  %25 = add nsw i32 %22, -3
  %26 = shl nsw i32 %22, 1
  %27 = select i1 %24, i32 %26, i32 %25
  %28 = add nuw nsw i32 %20, 1
  %29 = icmp eq i32 %28, 50
  br i1 %29, label %14, label %19, !llvm.loop !12

30:                                               ; preds = %17, %30
  %31 = phi i32 [ %18, %17 ], [ %35, %30 ]
  %32 = phi i64 [ 1, %17 ], [ %36, %30 ]
  %33 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !4
  %35 = add nsw i32 %31, %34
  store i32 %35, ptr %33, align 4, !tbaa !4
  %36 = add nuw nsw i64 %32, 1
  %37 = icmp eq i64 %36, 1000
  br i1 %37, label %38, label %30, !llvm.loop !14

38:                                               ; preds = %30, %51
  %39 = phi i64 [ %53, %51 ], [ 0, %30 ]
  %40 = phi i32 [ %52, %51 ], [ 0, %30 ]
  %41 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %39
  %42 = load i32, ptr %41, align 4, !tbaa !4
  %43 = add nsw i32 %42, %40
  %44 = icmp sgt i32 %42, 500
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = lshr i32 %42, 1
  %47 = add nsw i32 %43, %46
  br label %51

48:                                               ; preds = %38
  %49 = sdiv i32 %42, -3
  %50 = add i32 %49, %43
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %47, %45 ], [ %50, %48 ]
  %53 = add nuw nsw i64 %39, 1
  %54 = icmp eq i64 %53, 1000
  br i1 %54, label %55, label %38, !llvm.loop !13

55:                                               ; preds = %51
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %52)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
