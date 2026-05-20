; ModuleID = 'vector.c'
source_filename = "vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @vector_add(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = ptrtoaddr ptr %1 to i64
  %6 = ptrtoaddr ptr %0 to i64
  %7 = ptrtoaddr ptr %2 to i64
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %4
  %10 = zext nneg i32 %3 to i64
  %11 = icmp ult i32 %3, 8
  br i1 %11, label %38, label %12

12:                                               ; preds = %9
  %13 = sub i64 %7, %6
  %14 = icmp ult i64 %13, 32
  %15 = sub i64 %7, %5
  %16 = icmp ult i64 %15, 32
  %17 = or i1 %14, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %12
  %19 = and i64 %10, 2147483640
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 0, %18 ], [ %34, %20 ]
  %22 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  %24 = load <4 x float>, ptr %22, align 4, !tbaa !8
  %25 = load <4 x float>, ptr %23, align 4, !tbaa !8
  %26 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %21
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 16
  %28 = load <4 x float>, ptr %26, align 4, !tbaa !8
  %29 = load <4 x float>, ptr %27, align 4, !tbaa !8
  %30 = fadd <4 x float> %24, %28
  %31 = fadd <4 x float> %25, %29
  %32 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %21
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store <4 x float> %30, ptr %32, align 4, !tbaa !8
  store <4 x float> %31, ptr %33, align 4, !tbaa !8
  %34 = add nuw i64 %21, 8
  %35 = icmp eq i64 %34, %19
  br i1 %35, label %36, label %20, !llvm.loop !10

36:                                               ; preds = %20
  %37 = icmp eq i64 %19, %10
  br i1 %37, label %58, label %38

38:                                               ; preds = %12, %9, %36
  %39 = phi i64 [ 0, %12 ], [ 0, %9 ], [ %19, %36 ]
  %40 = and i64 %10, 3
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %38, %42
  %43 = phi i64 [ %51, %42 ], [ %39, %38 ]
  %44 = phi i64 [ %52, %42 ], [ 0, %38 ]
  %45 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %43
  %46 = load float, ptr %45, align 4, !tbaa !8
  %47 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %43
  %48 = load float, ptr %47, align 4, !tbaa !8
  %49 = fadd float %46, %48
  %50 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %43
  store float %49, ptr %50, align 4, !tbaa !8
  %51 = add nuw nsw i64 %43, 1
  %52 = add i64 %44, 1
  %53 = icmp eq i64 %52, %40
  br i1 %53, label %54, label %42, !llvm.loop !14

54:                                               ; preds = %42, %38
  %55 = phi i64 [ %39, %38 ], [ %51, %42 ]
  %56 = sub nsw i64 %39, %10
  %57 = icmp ugt i64 %56, -4
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %59, %36, %4
  ret void

59:                                               ; preds = %54, %59
  %60 = phi i64 [ %88, %59 ], [ %55, %54 ]
  %61 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %60
  %62 = load float, ptr %61, align 4, !tbaa !8
  %63 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %60
  %64 = load float, ptr %63, align 4, !tbaa !8
  %65 = fadd float %62, %64
  %66 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %60
  store float %65, ptr %66, align 4, !tbaa !8
  %67 = add nuw nsw i64 %60, 1
  %68 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %67
  %69 = load float, ptr %68, align 4, !tbaa !8
  %70 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %67
  %71 = load float, ptr %70, align 4, !tbaa !8
  %72 = fadd float %69, %71
  %73 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %67
  store float %72, ptr %73, align 4, !tbaa !8
  %74 = add nuw nsw i64 %60, 2
  %75 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %74
  %76 = load float, ptr %75, align 4, !tbaa !8
  %77 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %74
  %78 = load float, ptr %77, align 4, !tbaa !8
  %79 = fadd float %76, %78
  %80 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %74
  store float %79, ptr %80, align 4, !tbaa !8
  %81 = add nuw nsw i64 %60, 3
  %82 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !8
  %84 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %81
  %85 = load float, ptr %84, align 4, !tbaa !8
  %86 = fadd float %83, %85
  %87 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %81
  store float %86, ptr %87, align 4, !tbaa !8
  %88 = add nuw nsw i64 %60, 4
  %89 = icmp eq i64 %88, %10
  br i1 %89, label %58, label %59, !llvm.loop !16
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 9.000000e+00)
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 9.000000e+00)
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 9.000000e+00)
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 9.000000e+00)
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 9.000000e+00)
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 9.000000e+00)
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 9.000000e+00)
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef 9.000000e+00)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !11, !12}
