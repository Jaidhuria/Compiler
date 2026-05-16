; ModuleID = 'main.cpp'
source_filename = "main.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [20 x i8] c"a is smaller than b\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"a < b < c\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"All numbers are positive\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"x is greater than 20\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Large Value\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 19)
  %2 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %3 = getelementptr i8, ptr %2, i64 -24
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %4
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 240
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

10:                                               ; preds = %0
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 56
  %12 = load i8, ptr %11, align 8, !tbaa !28
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 67
  %16 = load i8, ptr %15, align 1, !tbaa !34
  br label %22

17:                                               ; preds = %10
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %7)
  %18 = load ptr, ptr %7, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 48
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef signext i8 %20(ptr noundef nonnull align 8 dereferenceable(570) %7, i8 noundef signext 10), !inline_history !35
  br label %22

22:                                               ; preds = %14, %17
  %23 = phi i8 [ %16, %14 ], [ %21, %17 ]
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %23)
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 9)
  %27 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %28 = getelementptr i8, ptr %27, i64 -24
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %29
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 240
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

35:                                               ; preds = %22
  %36 = getelementptr inbounds nuw i8, ptr %32, i64 56
  %37 = load i8, ptr %36, align 8, !tbaa !28
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %32, i64 67
  %41 = load i8, ptr %40, align 1, !tbaa !34
  br label %47

42:                                               ; preds = %35
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %32)
  %43 = load ptr, ptr %32, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 48
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef signext i8 %45(ptr noundef nonnull align 8 dereferenceable(570) %32, i8 noundef signext 10), !inline_history !35
  br label %47

47:                                               ; preds = %39, %42
  %48 = phi i8 [ %41, %39 ], [ %46, %42 ]
  %49 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %48)
  %50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %49)
  %51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 24)
  %52 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %53 = getelementptr i8, ptr %52, i64 -24
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %54
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 240
  %57 = load ptr, ptr %56, align 8, !tbaa !10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

60:                                               ; preds = %47
  %61 = getelementptr inbounds nuw i8, ptr %57, i64 56
  %62 = load i8, ptr %61, align 8, !tbaa !28
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %57, i64 67
  %66 = load i8, ptr %65, align 1, !tbaa !34
  br label %72

67:                                               ; preds = %60
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %57)
  %68 = load ptr, ptr %57, align 8, !tbaa !8
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 48
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef signext i8 %70(ptr noundef nonnull align 8 dereferenceable(570) %57, i8 noundef signext 10), !inline_history !35
  br label %72

72:                                               ; preds = %64, %67
  %73 = phi i8 [ %66, %64 ], [ %71, %67 ]
  %74 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %73)
  %75 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %74)
  %76 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 20)
  %77 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %78 = getelementptr i8, ptr %77, i64 -24
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 240
  %82 = load ptr, ptr %81, align 8, !tbaa !10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

85:                                               ; preds = %72
  %86 = getelementptr inbounds nuw i8, ptr %82, i64 56
  %87 = load i8, ptr %86, align 8, !tbaa !28
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds nuw i8, ptr %82, i64 67
  %91 = load i8, ptr %90, align 1, !tbaa !34
  br label %97

92:                                               ; preds = %85
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %82)
  %93 = load ptr, ptr %82, align 8, !tbaa !8
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 48
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef signext i8 %95(ptr noundef nonnull align 8 dereferenceable(570) %82, i8 noundef signext 10), !inline_history !35
  br label %97

97:                                               ; preds = %89, %92
  %98 = phi i8 [ %91, %89 ], [ %96, %92 ]
  %99 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %98)
  %100 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %99)
  %101 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 11)
  %102 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %103 = getelementptr i8, ptr %102, i64 -24
  %104 = load i64, ptr %103, align 8
  %105 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %104
  %106 = getelementptr inbounds nuw i8, ptr %105, i64 240
  %107 = load ptr, ptr %106, align 8, !tbaa !10
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

110:                                              ; preds = %97
  %111 = getelementptr inbounds nuw i8, ptr %107, i64 56
  %112 = load i8, ptr %111, align 8, !tbaa !28
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds nuw i8, ptr %107, i64 67
  %116 = load i8, ptr %115, align 1, !tbaa !34
  br label %122

117:                                              ; preds = %110
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %107)
  %118 = load ptr, ptr %107, align 8, !tbaa !8
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 48
  %120 = load ptr, ptr %119, align 8
  %121 = tail call noundef signext i8 %120(ptr noundef nonnull align 8 dereferenceable(570) %107, i8 noundef signext 10), !inline_history !35
  br label %122

122:                                              ; preds = %114, %117
  %123 = phi i8 [ %116, %114 ], [ %121, %117 ]
  %124 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %123)
  %125 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %124)
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #2

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !25, i64 240}
!11 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !12, i64 0, !22, i64 216, !6, i64 224, !23, i64 225, !24, i64 232, !25, i64 240, !26, i64 248, !27, i64 256}
!12 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !14, i64 24, !15, i64 28, !15, i64 32, !16, i64 40, !18, i64 48, !6, i64 64, !5, i64 192, !19, i64 200, !20, i64 208}
!13 = !{!"long", !6, i64 0}
!14 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!15 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!16 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !13, i64 8}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!22 = !{!"p1 _ZTSSo", !17, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!25 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!26 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!27 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!28 = !{!29, !6, i64 56}
!29 = !{!"_ZTSSt5ctypeIcE", !30, i64 0, !31, i64 16, !23, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!30 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!31 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!32 = !{!"p1 int", !17, i64 0}
!33 = !{!"p1 short", !17, i64 0}
!34 = !{!6, !6, i64 0}
!35 = distinct !{null, null, null, null}
