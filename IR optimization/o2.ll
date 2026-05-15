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

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
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

23:                                               ; preds = %2
  %24 = load <4 x i32>, ptr %1, align 16
  %25 = shufflevector <4 x i32> %24, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi i64 [ 0, %23 ], [ %48, %26 ]
  %28 = phi <4 x i32> [ zeroinitializer, %23 ], [ %47, %26 ]
  %29 = phi <4 x i32> [ zeroinitializer, %23 ], [ %42, %26 ]
  %30 = phi <4 x i32> [ zeroinitializer, %23 ], [ %40, %26 ]
  %31 = phi <4 x i32> [ %25, %23 ], [ %43, %26 ]
  %32 = phi <4 x i32> [ %25, %23 ], [ %44, %26 ]
  %33 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %23 ], [ %49, %26 ]
  %34 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %27
  %35 = load <4 x i32>, ptr %34, align 16, !tbaa !4
  %36 = and <4 x i32> %35, splat (i32 1)
  %37 = icmp eq <4 x i32> %36, zeroinitializer
  %38 = add nsw <4 x i32> %35, splat (i32 200)
  %39 = select <4 x i1> %37, <4 x i32> zeroinitializer, <4 x i32> %38
  %40 = add <4 x i32> %39, %30
  %41 = select <4 x i1> %37, <4 x i32> %38, <4 x i32> zeroinitializer
  %42 = add <4 x i32> %41, %29
  %43 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %35, <4 x i32> %31)
  %44 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %35, <4 x i32> %32)
  %45 = shl <4 x i32> %33, splat (i32 3)
  store <4 x i32> %45, ptr %34, align 16, !tbaa !4
  %46 = add <4 x i32> %28, splat (i32 5000)
  %47 = add <4 x i32> %46, %35
  %48 = add nuw i64 %27, 4
  %49 = add <4 x i32> %33, splat (i32 4)
  %50 = icmp eq i64 %48, 1000
  br i1 %50, label %51, label %26, !llvm.loop !8

51:                                               ; preds = %26
  %52 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %44)
  %53 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %43)
  %54 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %40)
  %55 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %42)
  %56 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %47)
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %56)
  %58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %55)
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %54)
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %53)
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %52)
  %62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef 1048576)
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 122500)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
