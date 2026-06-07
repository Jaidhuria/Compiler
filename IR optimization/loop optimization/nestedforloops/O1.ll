; ModuleID = 'opt.cpp'
source_filename = "opt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [9 x i8] c"Result: \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z7computei(i32 noundef %0) local_unnamed_addr #0 {
  br label %3

2:                                                ; preds = %3
  ret i32 %14

3:                                                ; preds = %1, %3
  %4 = phi i32 [ 0, %1 ], [ %15, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %14, %3 ]
  %6 = mul nsw i32 %4, %0
  %7 = srem i32 %6, 7
  %8 = add nsw i32 %7, %5
  %9 = srem i32 %8, 5
  %10 = icmp eq i32 %9, 0
  %11 = lshr i32 %4, 1
  %12 = sub nsw i32 0, %11
  %13 = select i1 %10, i32 %4, i32 %12
  %14 = add i32 %13, %8
  %15 = add nuw nsw i32 %4, 1
  %16 = icmp eq i32 %15, 1000
  br i1 %16, label %2, label %3, !llvm.loop !8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z12processArrayRSt6vectorIiSaIiEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = load ptr, ptr %0, align 8, !tbaa !15
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = ptrtoint ptr %3 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  br label %13

11:                                               ; preds = %32, %1
  %12 = phi i32 [ 0, %1 ], [ %39, %32 ]
  ret i32 %12

13:                                               ; preds = %6, %32
  %14 = phi i64 [ 0, %6 ], [ %40, %32 ]
  %15 = phi i32 [ 0, %6 ], [ %39, %32 ]
  %16 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !4
  br label %18

18:                                               ; preds = %18, %13
  %19 = phi i32 [ 0, %13 ], [ %30, %18 ]
  %20 = phi i32 [ 0, %13 ], [ %29, %18 ]
  %21 = mul nsw i32 %19, %17
  %22 = srem i32 %21, 7
  %23 = add nsw i32 %22, %20
  %24 = srem i32 %23, 5
  %25 = icmp eq i32 %24, 0
  %26 = lshr i32 %19, 1
  %27 = sub nsw i32 0, %26
  %28 = select i1 %25, i32 %19, i32 %27
  %29 = add i32 %28, %23
  %30 = add nuw nsw i32 %19, 1
  %31 = icmp eq i32 %30, 1000
  br i1 %31, label %32, label %18, !llvm.loop !8

32:                                               ; preds = %18
  %33 = and i32 %17, 1
  %34 = icmp eq i32 %33, 0
  %35 = shl nsw i32 %17, 1
  %36 = sub i32 0, %17
  %37 = select i1 %34, i32 %35, i32 %36
  %38 = add i32 %37, %15
  %39 = add i32 %38, %29
  %40 = add nuw nsw i64 %14, 1
  %41 = icmp eq i64 %40, %10
  br i1 %41, label %11, label %13, !llvm.loop !16
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  br label %40

1:                                                ; preds = %76
  %2 = icmp eq ptr %80, %79
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = ptrtoint ptr %80 to i64
  %5 = ptrtoint ptr %79 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 2
  br label %8

8:                                                ; preds = %27, %3
  %9 = phi i64 [ 0, %3 ], [ %35, %27 ]
  %10 = phi i32 [ 0, %3 ], [ %34, %27 ]
  %11 = getelementptr inbounds nuw [4 x i8], ptr %79, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !4
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi i32 [ 0, %8 ], [ %25, %13 ]
  %15 = phi i32 [ 0, %8 ], [ %24, %13 ]
  %16 = mul nsw i32 %14, %12
  %17 = srem i32 %16, 7
  %18 = add nsw i32 %17, %15
  %19 = srem i32 %18, 5
  %20 = icmp eq i32 %19, 0
  %21 = lshr i32 %14, 1
  %22 = sub nsw i32 0, %21
  %23 = select i1 %20, i32 %14, i32 %22
  %24 = add i32 %23, %18
  %25 = add nuw nsw i32 %14, 1
  %26 = icmp eq i32 %25, 1000
  br i1 %26, label %27, label %13, !llvm.loop !8

27:                                               ; preds = %13
  %28 = and i32 %12, 1
  %29 = icmp eq i32 %28, 0
  %30 = shl nsw i32 %12, 1
  %31 = sub i32 0, %12
  %32 = select i1 %29, i32 %30, i32 %31
  %33 = add i32 %32, %10
  %34 = add i32 %33, %24
  %35 = add nuw nsw i64 %9, 1
  %36 = icmp eq i64 %35, %7
  br i1 %36, label %37, label %8, !llvm.loop !16

37:                                               ; preds = %27, %1
  %38 = phi i32 [ 0, %1 ], [ %34, %27 ]
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 8)
          to label %87 unwind label %124

40:                                               ; preds = %0, %76
  %41 = phi i32 [ 0, %0 ], [ %81, %76 ]
  %42 = phi ptr [ null, %0 ], [ %79, %76 ]
  %43 = phi ptr [ null, %0 ], [ %78, %76 ]
  %44 = phi ptr [ null, %0 ], [ %80, %76 ]
  %45 = mul nuw nsw i32 %41, 3
  %46 = icmp eq ptr %44, %43
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 %45, ptr %44, align 4, !tbaa !4
  br label %76

48:                                               ; preds = %40
  %49 = ptrtoint ptr %44 to i64
  %50 = ptrtoint ptr %42 to i64
  %51 = sub i64 %49, %50
  %52 = icmp eq i64 %51, 9223372036854775804
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #10
          to label %54 unwind label %85

54:                                               ; preds = %53
  unreachable

55:                                               ; preds = %48
  %56 = ashr exact i64 %51, 2
  %57 = tail call i64 @llvm.umax.i64(i64 %56, i64 1)
  %58 = add nsw i64 %57, %56
  %59 = icmp ult i64 %58, %56
  %60 = tail call i64 @llvm.umin.i64(i64 %58, i64 2305843009213693951)
  %61 = select i1 %59, i64 2305843009213693951, i64 %60
  %62 = icmp ne i64 %61, 0
  tail call void @llvm.assume(i1 %62)
  %63 = shl nuw nsw i64 %61, 2
  %64 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %63) #11
          to label %65 unwind label %83

65:                                               ; preds = %55
  %66 = getelementptr inbounds nuw i8, ptr %64, i64 %51
  store i32 %45, ptr %66, align 4, !tbaa !4
  %67 = icmp sgt i64 %51, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %64, ptr align 4 %42, i64 %51, i1 false)
  br label %69

69:                                               ; preds = %68, %65
  %70 = icmp eq ptr %42, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %69
  %72 = ptrtoint ptr %43 to i64
  %73 = sub i64 %72, %50
  tail call void @_ZdlPvm(ptr noundef nonnull %42, i64 noundef %73) #12
  br label %74

74:                                               ; preds = %71, %69
  %75 = getelementptr inbounds nuw [4 x i8], ptr %64, i64 %61
  br label %76

76:                                               ; preds = %74, %47
  %77 = phi ptr [ %66, %74 ], [ %44, %47 ]
  %78 = phi ptr [ %75, %74 ], [ %43, %47 ]
  %79 = phi ptr [ %64, %74 ], [ %42, %47 ]
  %80 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %81 = add nuw nsw i32 %41, 1
  %82 = icmp eq i32 %81, 500
  br i1 %82, label %1, label %40, !llvm.loop !17

83:                                               ; preds = %55
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %126

85:                                               ; preds = %53
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %126

87:                                               ; preds = %37
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %38)
          to label %89 unwind label %124

89:                                               ; preds = %87
  %90 = load ptr, ptr %88, align 8, !tbaa !18
  %91 = getelementptr i8, ptr %90, i64 -24
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr inbounds i8, ptr %88, i64 %92
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 240
  %95 = load ptr, ptr %94, align 8, !tbaa !20
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  invoke void @_ZSt16__throw_bad_castv() #10
          to label %98 unwind label %124

98:                                               ; preds = %97
  unreachable

99:                                               ; preds = %89
  %100 = getelementptr inbounds nuw i8, ptr %95, i64 56
  %101 = load i8, ptr %100, align 8, !tbaa !37
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds nuw i8, ptr %95, i64 67
  %105 = load i8, ptr %104, align 1, !tbaa !42
  br label %112

106:                                              ; preds = %99
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %95)
          to label %107 unwind label %124

107:                                              ; preds = %106
  %108 = load ptr, ptr %95, align 8, !tbaa !18
  %109 = getelementptr inbounds nuw i8, ptr %108, i64 48
  %110 = load ptr, ptr %109, align 8
  %111 = invoke noundef signext i8 %110(ptr noundef nonnull align 8 dereferenceable(570) %95, i8 noundef signext 10)
          to label %112 unwind label %124, !inline_history !43

112:                                              ; preds = %107, %103
  %113 = phi i8 [ %105, %103 ], [ %111, %107 ]
  %114 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %88, i8 noundef signext %113)
          to label %115 unwind label %124

115:                                              ; preds = %112
  %116 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %114)
          to label %117 unwind label %124

117:                                              ; preds = %115
  %118 = icmp eq ptr %79, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %117
  %120 = ptrtoint ptr %78 to i64
  %121 = ptrtoint ptr %79 to i64
  %122 = sub i64 %120, %121
  tail call void @_ZdlPvm(ptr noundef nonnull %79, i64 noundef %122) #12
  br label %123

123:                                              ; preds = %117, %119
  ret i32 0

124:                                              ; preds = %115, %112, %107, %106, %97, %37, %87
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %126

126:                                              ; preds = %83, %85, %124
  %127 = phi ptr [ %78, %124 ], [ %43, %83 ], [ %43, %85 ]
  %128 = phi ptr [ %79, %124 ], [ %42, %83 ], [ %42, %85 ]
  %129 = phi { ptr, i32 } [ %125, %124 ], [ %84, %83 ], [ %86, %85 ]
  %130 = icmp eq ptr %128, null
  br i1 %130, label %135, label %131

131:                                              ; preds = %126
  %132 = ptrtoint ptr %127 to i64
  %133 = ptrtoint ptr %128 to i64
  %134 = sub i64 %132, %133
  tail call void @_ZdlPvm(ptr noundef nonnull %128, i64 noundef %134) #12
  br label %135

135:                                              ; preds = %126, %131
  resume { ptr, i32 } %129
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { noreturn }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

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
!11 = !{!12, !13, i64 8}
!12 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 int", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!12, !13, i64 0}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !7, i64 0}
!20 = !{!21, !34, i64 240}
!21 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0, !31, i64 216, !6, i64 224, !32, i64 225, !33, i64 232, !34, i64 240, !35, i64 248, !36, i64 256}
!22 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !26, i64 40, !27, i64 48, !6, i64 64, !5, i64 192, !28, i64 200, !29, i64 208}
!23 = !{!"long", !6, i64 0}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!26 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!27 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !23, i64 8}
!28 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!29 = !{!"_ZTSSt6locale", !30, i64 0}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!31 = !{!"p1 _ZTSSo", !14, i64 0}
!32 = !{!"bool", !6, i64 0}
!33 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 0}
!34 = !{!"p1 _ZTSSt5ctypeIcE", !14, i64 0}
!35 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!36 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!37 = !{!38, !6, i64 56}
!38 = !{!"_ZTSSt5ctypeIcE", !39, i64 0, !40, i64 16, !32, i64 24, !13, i64 32, !13, i64 40, !41, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!39 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!40 = !{!"p1 _ZTS15__locale_struct", !14, i64 0}
!41 = !{!"p1 short", !14, i64 0}
!42 = !{!6, !6, i64 0}
!43 = distinct !{null, null}
