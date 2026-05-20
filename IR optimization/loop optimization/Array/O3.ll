; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Final Result: %d\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @initialize(ptr noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 2147483640
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %18, %9 ]
  %11 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %7 ], [ %19, %9 ]
  %12 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %10
  %13 = shl <4 x i32> %11, splat (i32 1)
  %14 = shl <4 x i32> %11, splat (i32 1)
  %15 = add <4 x i32> %13, splat (i32 5)
  %16 = add <4 x i32> %14, splat (i32 13)
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <4 x i32> %15, ptr %12, align 4, !tbaa !4
  store <4 x i32> %16, ptr %17, align 4, !tbaa !4
  %18 = add nuw i64 %10, 8
  %19 = add <4 x i32> %11, splat (i32 8)
  %20 = icmp eq i64 %18, %8
  br i1 %20, label %21, label %9, !llvm.loop !8

21:                                               ; preds = %9
  %22 = icmp eq i64 %8, %5
  br i1 %22, label %25, label %23

23:                                               ; preds = %4, %21
  %24 = phi i64 [ 0, %4 ], [ %8, %21 ]
  br label %26

25:                                               ; preds = %26, %21, %2
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ %32, %26 ], [ %24, %23 ]
  %28 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %27
  %29 = trunc i64 %27 to i32
  %30 = shl i32 %29, 1
  %31 = add i32 %30, 5
  store i32 %31, ptr %28, align 4, !tbaa !4
  %32 = add nuw nsw i64 %27, 1
  %33 = icmp eq i64 %32, %5
  br i1 %33, label %25, label %26, !llvm.loop !12
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
  store i32 %29, ptr %8, align 4, !tbaa !4
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %10, label %6, !llvm.loop !13

14:                                               ; preds = %14, %6
  %15 = phi i32 [ 0, %6 ], [ %30, %14 ]
  %16 = phi i32 [ %9, %6 ], [ %29, %14 ]
  %17 = add nsw i32 %16, %15
  %18 = and i32 %16, 1
  %19 = icmp eq i32 %18, 0
  %20 = add nsw i32 %17, -3
  %21 = shl nsw i32 %17, 1
  %22 = select i1 %19, i32 %21, i32 %20
  %23 = or disjoint i32 %15, 1
  %24 = add nsw i32 %22, %23
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = add nsw i32 %24, -3
  %28 = shl nsw i32 %24, 1
  %29 = select i1 %26, i32 %28, i32 %27
  %30 = add nuw nsw i32 %15, 2
  %31 = icmp eq i32 %30, 50
  br i1 %31, label %11, label %14, !llvm.loop !14
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @calculateSum(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %38

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 2147483640
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %29, %9 ]
  %11 = phi <4 x i32> [ zeroinitializer, %7 ], [ %26, %9 ]
  %12 = phi <4 x i32> [ zeroinitializer, %7 ], [ %28, %9 ]
  %13 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %10
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %15 = load <4 x i32>, ptr %13, align 4, !tbaa !4
  %16 = load <4 x i32>, ptr %14, align 4, !tbaa !4
  %17 = add <4 x i32> %15, %11
  %18 = add <4 x i32> %16, %12
  %19 = icmp sgt <4 x i32> %15, splat (i32 500)
  %20 = icmp sgt <4 x i32> %16, splat (i32 500)
  %21 = sdiv <4 x i32> %15, splat (i32 -3)
  %22 = sdiv <4 x i32> %16, splat (i32 -3)
  %23 = lshr <4 x i32> %15, splat (i32 1)
  %24 = lshr <4 x i32> %16, splat (i32 1)
  %25 = select <4 x i1> %19, <4 x i32> %23, <4 x i32> %21
  %26 = add <4 x i32> %17, %25
  %27 = select <4 x i1> %20, <4 x i32> %24, <4 x i32> %22
  %28 = add <4 x i32> %18, %27
  %29 = add nuw i64 %10, 8
  %30 = icmp eq i64 %29, %8
  br i1 %30, label %31, label %9, !llvm.loop !15

31:                                               ; preds = %9
  %32 = add <4 x i32> %28, %26
  %33 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %32)
  %34 = icmp eq i64 %8, %5
  br i1 %34, label %38, label %35

35:                                               ; preds = %4, %31
  %36 = phi i64 [ 0, %4 ], [ %8, %31 ]
  %37 = phi i32 [ 0, %4 ], [ %33, %31 ]
  br label %40

38:                                               ; preds = %53, %31, %2
  %39 = phi i32 [ 0, %2 ], [ %33, %31 ], [ %54, %53 ]
  ret i32 %39

40:                                               ; preds = %35, %53
  %41 = phi i64 [ %55, %53 ], [ %36, %35 ]
  %42 = phi i32 [ %54, %53 ], [ %37, %35 ]
  %43 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %41
  %44 = load i32, ptr %43, align 4, !tbaa !4
  %45 = add nsw i32 %44, %42
  %46 = icmp sgt i32 %44, 500
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = lshr i32 %44, 1
  %49 = add nsw i32 %45, %48
  br label %53

50:                                               ; preds = %40
  %51 = sdiv i32 %44, -3
  %52 = add i32 %51, %45
  br label %53

53:                                               ; preds = %47, %50
  %54 = phi i32 [ %49, %47 ], [ %52, %50 ]
  %55 = add nuw nsw i64 %41, 1
  %56 = icmp eq i64 %55, %5
  br i1 %56, label %38, label %40, !llvm.loop !16
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dependencyLoop(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %29

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = load i32, ptr %0, align 4
  %7 = add nsw i64 %5, -1
  %8 = and i64 %7, 3
  %9 = add nsw i32 %1, -2
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = and i64 %7, -4
  br label %30

13:                                               ; preds = %30
  %14 = icmp eq i64 %8, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ %6, %4 ], [ %48, %13 ]
  %17 = phi i64 [ 1, %4 ], [ %49, %13 ]
  %18 = icmp ne i64 %8, 0
  tail call void @llvm.assume(i1 %18)
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi i32 [ %16, %15 ], [ %25, %19 ]
  %21 = phi i64 [ %17, %15 ], [ %26, %19 ]
  %22 = phi i64 [ 0, %15 ], [ %27, %19 ]
  %23 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !4
  %25 = add nsw i32 %20, %24
  store i32 %25, ptr %23, align 4, !tbaa !4
  %26 = add nuw nsw i64 %21, 1
  %27 = add i64 %22, 1
  %28 = icmp eq i64 %27, %8
  br i1 %28, label %29, label %19, !llvm.loop !17

29:                                               ; preds = %13, %19, %2
  ret void

30:                                               ; preds = %30, %11
  %31 = phi i32 [ %6, %11 ], [ %48, %30 ]
  %32 = phi i64 [ 1, %11 ], [ %49, %30 ]
  %33 = phi i64 [ 0, %11 ], [ %50, %30 ]
  %34 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !4
  %36 = add nsw i32 %31, %35
  store i32 %36, ptr %34, align 4, !tbaa !4
  %37 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %32
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %39 = load i32, ptr %38, align 4, !tbaa !4
  %40 = add nsw i32 %36, %39
  store i32 %40, ptr %38, align 4, !tbaa !4
  %41 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %32
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %43 = load i32, ptr %42, align 4, !tbaa !4
  %44 = add nsw i32 %40, %43
  store i32 %44, ptr %42, align 4, !tbaa !4
  %45 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %32
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 12
  %47 = load i32, ptr %46, align 4, !tbaa !4
  %48 = add nsw i32 %44, %47
  store i32 %48, ptr %46, align 4, !tbaa !4
  %49 = add nuw nsw i64 %32, 4
  %50 = add i64 %33, 4
  %51 = icmp eq i64 %50, %12
  br i1 %51, label %13, label %30, !llvm.loop !19
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
  %1 = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  br label %2

2:                                                ; preds = %12, %0
  %3 = phi i64 [ 0, %0 ], [ %21, %12 ]
  %4 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %0 ], [ %22, %12 ]
  %5 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3
  %6 = shl <4 x i32> %4, splat (i32 1)
  %7 = shl <4 x i32> %4, splat (i32 1)
  %8 = add <4 x i32> %6, splat (i32 5)
  %9 = add <4 x i32> %7, splat (i32 13)
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> %8, ptr %5, align 16, !tbaa !4
  store <4 x i32> %9, ptr %10, align 16, !tbaa !4
  %11 = icmp eq i64 %3, 992
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = add <4 x i32> %4, splat (i32 8)
  %14 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %16 = shl <4 x i32> %13, splat (i32 1)
  %17 = shl <4 x i32> %13, splat (i32 1)
  %18 = add <4 x i32> %16, splat (i32 5)
  %19 = add <4 x i32> %17, splat (i32 13)
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store <4 x i32> %18, ptr %15, align 16, !tbaa !4
  store <4 x i32> %19, ptr %20, align 16, !tbaa !4
  %21 = add nuw nsw i64 %3, 16
  %22 = add <4 x i32> %4, splat (i32 16)
  br label %2

23:                                               ; preds = %2, %27
  %24 = phi i64 [ %28, %27 ], [ 0, %2 ]
  %25 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !4
  br label %32

27:                                               ; preds = %32
  store i32 %47, ptr %25, align 4, !tbaa !4
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %28, 1000
  br i1 %29, label %30, label %23, !llvm.loop !13

30:                                               ; preds = %27
  %31 = load i32, ptr %1, align 16
  br label %50

32:                                               ; preds = %32, %23
  %33 = phi i32 [ 0, %23 ], [ %48, %32 ]
  %34 = phi i32 [ %26, %23 ], [ %47, %32 ]
  %35 = add nsw i32 %34, %33
  %36 = and i32 %34, 1
  %37 = icmp eq i32 %36, 0
  %38 = add nsw i32 %35, -3
  %39 = shl nsw i32 %35, 1
  %40 = select i1 %37, i32 %39, i32 %38
  %41 = or disjoint i32 %33, 1
  %42 = add nsw i32 %40, %41
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = add nsw i32 %42, -3
  %46 = shl nsw i32 %42, 1
  %47 = select i1 %44, i32 %46, i32 %45
  %48 = add nuw nsw i32 %33, 2
  %49 = icmp eq i32 %48, 50
  br i1 %49, label %27, label %32, !llvm.loop !14

50:                                               ; preds = %50, %30
  %51 = phi i32 [ %31, %30 ], [ %63, %50 ]
  %52 = phi i64 [ 1, %30 ], [ %64, %50 ]
  %53 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !4
  %55 = add nsw i32 %51, %54
  store i32 %55, ptr %53, align 4, !tbaa !4
  %56 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %52
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 4
  %58 = load i32, ptr %57, align 4, !tbaa !4
  %59 = add nsw i32 %55, %58
  store i32 %59, ptr %57, align 4, !tbaa !4
  %60 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %52
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load i32, ptr %61, align 4, !tbaa !4
  %63 = add nsw i32 %59, %62
  store i32 %63, ptr %61, align 4, !tbaa !4
  %64 = add nuw nsw i64 %52, 3
  %65 = icmp eq i64 %64, 1000
  br i1 %65, label %66, label %50, !llvm.loop !19

66:                                               ; preds = %50, %66
  %67 = phi i64 [ %86, %66 ], [ 0, %50 ]
  %68 = phi <4 x i32> [ %83, %66 ], [ zeroinitializer, %50 ]
  %69 = phi <4 x i32> [ %85, %66 ], [ zeroinitializer, %50 ]
  %70 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %67
  %71 = getelementptr inbounds nuw i8, ptr %70, i64 16
  %72 = load <4 x i32>, ptr %70, align 16, !tbaa !4
  %73 = load <4 x i32>, ptr %71, align 16, !tbaa !4
  %74 = add <4 x i32> %72, %68
  %75 = add <4 x i32> %73, %69
  %76 = icmp sgt <4 x i32> %72, splat (i32 500)
  %77 = icmp sgt <4 x i32> %73, splat (i32 500)
  %78 = sdiv <4 x i32> %72, splat (i32 -3)
  %79 = sdiv <4 x i32> %73, splat (i32 -3)
  %80 = lshr <4 x i32> %72, splat (i32 1)
  %81 = lshr <4 x i32> %73, splat (i32 1)
  %82 = select <4 x i1> %76, <4 x i32> %80, <4 x i32> %78
  %83 = add <4 x i32> %74, %82
  %84 = select <4 x i1> %77, <4 x i32> %81, <4 x i32> %79
  %85 = add <4 x i32> %75, %84
  %86 = add nuw i64 %67, 8
  %87 = icmp eq i64 %86, 1000
  br i1 %87, label %88, label %66, !llvm.loop !20

88:                                               ; preds = %66
  %89 = add <4 x i32> %85, %83
  %90 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %89)
  %91 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %90)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

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
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !9, !11, !10}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9, !10, !11}
!16 = distinct !{!16, !9, !11, !10}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9, !10, !11}
