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
@.str = private unnamed_addr constant [16 x i8] c"Level 1 -> i = \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"   Level 2 -> j = \00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"      Level 3 -> k = \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
  br label %2

1:                                                ; preds = %52
  ret i32 0

2:                                                ; preds = %0, %52
  %3 = phi i32 [ 1, %0 ], [ %56, %52 ]
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 15)
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = getelementptr i8, ptr %6, i64 -24
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 240
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

14:                                               ; preds = %2
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %16 = load i8, ptr %15, align 8, !tbaa !28
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %11, i64 67
  %20 = load i8, ptr %19, align 1, !tbaa !34
  br label %26

21:                                               ; preds = %14
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %11)
  %22 = load ptr, ptr %11, align 8, !tbaa !8
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 48
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef signext i8 %24(ptr noundef nonnull align 8 dereferenceable(570) %11, i8 noundef signext 10), !inline_history !35
  br label %26

26:                                               ; preds = %18, %21
  %27 = phi i8 [ %20, %18 ], [ %25, %21 ]
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext %27)
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %28)
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 18)
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %32 = load ptr, ptr %31, align 8, !tbaa !8
  %33 = getelementptr i8, ptr %32, i64 -24
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds i8, ptr %31, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 240
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %59

39:                                               ; preds = %272
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

40:                                               ; preds = %272
  %41 = getelementptr inbounds nuw i8, ptr %281, i64 56
  %42 = load i8, ptr %41, align 8, !tbaa !28
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %281, i64 67
  %46 = load i8, ptr %45, align 1, !tbaa !34
  br label %52

47:                                               ; preds = %40
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %281)
  %48 = load ptr, ptr %281, align 8, !tbaa !8
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 48
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef signext i8 %50(ptr noundef nonnull align 8 dereferenceable(570) %281, i8 noundef signext 10), !inline_history !35
  br label %52

52:                                               ; preds = %44, %47
  %53 = phi i8 [ %46, %44 ], [ %51, %47 ]
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %53)
  %55 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %54)
  %56 = add nuw nsw i32 %3, 1
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %1, label %2, !llvm.loop !36

58:                                               ; preds = %197, %122, %26
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

59:                                               ; preds = %26
  %60 = getelementptr inbounds nuw i8, ptr %37, i64 56
  %61 = load i8, ptr %60, align 8, !tbaa !28
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds nuw i8, ptr %37, i64 67
  %65 = load i8, ptr %64, align 1, !tbaa !34
  br label %71

66:                                               ; preds = %59
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %37)
  %67 = load ptr, ptr %37, align 8, !tbaa !8
  %68 = getelementptr inbounds nuw i8, ptr %67, i64 48
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef signext i8 %69(ptr noundef nonnull align 8 dereferenceable(570) %37, i8 noundef signext 10), !inline_history !35
  br label %71

71:                                               ; preds = %63, %66
  %72 = phi i8 [ %65, %63 ], [ %70, %66 ]
  %73 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %31, i8 noundef signext %72)
  %74 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %73)
  %75 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 21)
  %76 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %77 = load ptr, ptr %76, align 8, !tbaa !8
  %78 = getelementptr i8, ptr %77, i64 -24
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds i8, ptr %76, i64 %79
  %81 = getelementptr inbounds nuw i8, ptr %80, i64 240
  %82 = load ptr, ptr %81, align 8, !tbaa !10
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %247, %222, %172, %147, %97, %71
  tail call void @_ZSt16__throw_bad_castv() #3
  unreachable

85:                                               ; preds = %71
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
  %99 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %76, i8 noundef signext %98)
  %100 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %99)
  %101 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 21)
  %102 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 2)
  %103 = load ptr, ptr %102, align 8, !tbaa !8
  %104 = getelementptr i8, ptr %103, i64 -24
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr inbounds i8, ptr %102, i64 %105
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 240
  %108 = load ptr, ptr %107, align 8, !tbaa !10
  %109 = icmp eq ptr %108, null
  br i1 %109, label %84, label %110

110:                                              ; preds = %97
  %111 = getelementptr inbounds nuw i8, ptr %108, i64 56
  %112 = load i8, ptr %111, align 8, !tbaa !28
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds nuw i8, ptr %108, i64 67
  %116 = load i8, ptr %115, align 1, !tbaa !34
  br label %122

117:                                              ; preds = %110
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %108)
  %118 = load ptr, ptr %108, align 8, !tbaa !8
  %119 = getelementptr inbounds nuw i8, ptr %118, i64 48
  %120 = load ptr, ptr %119, align 8
  %121 = tail call noundef signext i8 %120(ptr noundef nonnull align 8 dereferenceable(570) %108, i8 noundef signext 10), !inline_history !35
  br label %122

122:                                              ; preds = %117, %114
  %123 = phi i8 [ %116, %114 ], [ %121, %117 ]
  %124 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %102, i8 noundef signext %123)
  %125 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %124)
  %126 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 18)
  %127 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 2)
  %128 = load ptr, ptr %127, align 8, !tbaa !8
  %129 = getelementptr i8, ptr %128, i64 -24
  %130 = load i64, ptr %129, align 8
  %131 = getelementptr inbounds i8, ptr %127, i64 %130
  %132 = getelementptr inbounds nuw i8, ptr %131, i64 240
  %133 = load ptr, ptr %132, align 8, !tbaa !10
  %134 = icmp eq ptr %133, null
  br i1 %134, label %58, label %135

135:                                              ; preds = %122
  %136 = getelementptr inbounds nuw i8, ptr %133, i64 56
  %137 = load i8, ptr %136, align 8, !tbaa !28
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds nuw i8, ptr %133, i64 67
  %141 = load i8, ptr %140, align 1, !tbaa !34
  br label %147

142:                                              ; preds = %135
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %133)
  %143 = load ptr, ptr %133, align 8, !tbaa !8
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 48
  %145 = load ptr, ptr %144, align 8
  %146 = tail call noundef signext i8 %145(ptr noundef nonnull align 8 dereferenceable(570) %133, i8 noundef signext 10), !inline_history !35
  br label %147

147:                                              ; preds = %142, %139
  %148 = phi i8 [ %141, %139 ], [ %146, %142 ]
  %149 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %127, i8 noundef signext %148)
  %150 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %149)
  %151 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 21)
  %152 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %153 = load ptr, ptr %152, align 8, !tbaa !8
  %154 = getelementptr i8, ptr %153, i64 -24
  %155 = load i64, ptr %154, align 8
  %156 = getelementptr inbounds i8, ptr %152, i64 %155
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 240
  %158 = load ptr, ptr %157, align 8, !tbaa !10
  %159 = icmp eq ptr %158, null
  br i1 %159, label %84, label %160

160:                                              ; preds = %147
  %161 = getelementptr inbounds nuw i8, ptr %158, i64 56
  %162 = load i8, ptr %161, align 8, !tbaa !28
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds nuw i8, ptr %158, i64 67
  %166 = load i8, ptr %165, align 1, !tbaa !34
  br label %172

167:                                              ; preds = %160
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %158)
  %168 = load ptr, ptr %158, align 8, !tbaa !8
  %169 = getelementptr inbounds nuw i8, ptr %168, i64 48
  %170 = load ptr, ptr %169, align 8
  %171 = tail call noundef signext i8 %170(ptr noundef nonnull align 8 dereferenceable(570) %158, i8 noundef signext 10), !inline_history !35
  br label %172

172:                                              ; preds = %167, %164
  %173 = phi i8 [ %166, %164 ], [ %171, %167 ]
  %174 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %152, i8 noundef signext %173)
  %175 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %174)
  %176 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 21)
  %177 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 2)
  %178 = load ptr, ptr %177, align 8, !tbaa !8
  %179 = getelementptr i8, ptr %178, i64 -24
  %180 = load i64, ptr %179, align 8
  %181 = getelementptr inbounds i8, ptr %177, i64 %180
  %182 = getelementptr inbounds nuw i8, ptr %181, i64 240
  %183 = load ptr, ptr %182, align 8, !tbaa !10
  %184 = icmp eq ptr %183, null
  br i1 %184, label %84, label %185

185:                                              ; preds = %172
  %186 = getelementptr inbounds nuw i8, ptr %183, i64 56
  %187 = load i8, ptr %186, align 8, !tbaa !28
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds nuw i8, ptr %183, i64 67
  %191 = load i8, ptr %190, align 1, !tbaa !34
  br label %197

192:                                              ; preds = %185
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %183)
  %193 = load ptr, ptr %183, align 8, !tbaa !8
  %194 = getelementptr inbounds nuw i8, ptr %193, i64 48
  %195 = load ptr, ptr %194, align 8
  %196 = tail call noundef signext i8 %195(ptr noundef nonnull align 8 dereferenceable(570) %183, i8 noundef signext 10), !inline_history !35
  br label %197

197:                                              ; preds = %192, %189
  %198 = phi i8 [ %191, %189 ], [ %196, %192 ]
  %199 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %177, i8 noundef signext %198)
  %200 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %199)
  %201 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 18)
  %202 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 3)
  %203 = load ptr, ptr %202, align 8, !tbaa !8
  %204 = getelementptr i8, ptr %203, i64 -24
  %205 = load i64, ptr %204, align 8
  %206 = getelementptr inbounds i8, ptr %202, i64 %205
  %207 = getelementptr inbounds nuw i8, ptr %206, i64 240
  %208 = load ptr, ptr %207, align 8, !tbaa !10
  %209 = icmp eq ptr %208, null
  br i1 %209, label %58, label %210

210:                                              ; preds = %197
  %211 = getelementptr inbounds nuw i8, ptr %208, i64 56
  %212 = load i8, ptr %211, align 8, !tbaa !28
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds nuw i8, ptr %208, i64 67
  %216 = load i8, ptr %215, align 1, !tbaa !34
  br label %222

217:                                              ; preds = %210
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %208)
  %218 = load ptr, ptr %208, align 8, !tbaa !8
  %219 = getelementptr inbounds nuw i8, ptr %218, i64 48
  %220 = load ptr, ptr %219, align 8
  %221 = tail call noundef signext i8 %220(ptr noundef nonnull align 8 dereferenceable(570) %208, i8 noundef signext 10), !inline_history !35
  br label %222

222:                                              ; preds = %217, %214
  %223 = phi i8 [ %216, %214 ], [ %221, %217 ]
  %224 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %202, i8 noundef signext %223)
  %225 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %224)
  %226 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 21)
  %227 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  %228 = load ptr, ptr %227, align 8, !tbaa !8
  %229 = getelementptr i8, ptr %228, i64 -24
  %230 = load i64, ptr %229, align 8
  %231 = getelementptr inbounds i8, ptr %227, i64 %230
  %232 = getelementptr inbounds nuw i8, ptr %231, i64 240
  %233 = load ptr, ptr %232, align 8, !tbaa !10
  %234 = icmp eq ptr %233, null
  br i1 %234, label %84, label %235

235:                                              ; preds = %222
  %236 = getelementptr inbounds nuw i8, ptr %233, i64 56
  %237 = load i8, ptr %236, align 8, !tbaa !28
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds nuw i8, ptr %233, i64 67
  %241 = load i8, ptr %240, align 1, !tbaa !34
  br label %247

242:                                              ; preds = %235
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %233)
  %243 = load ptr, ptr %233, align 8, !tbaa !8
  %244 = getelementptr inbounds nuw i8, ptr %243, i64 48
  %245 = load ptr, ptr %244, align 8
  %246 = tail call noundef signext i8 %245(ptr noundef nonnull align 8 dereferenceable(570) %233, i8 noundef signext 10), !inline_history !35
  br label %247

247:                                              ; preds = %242, %239
  %248 = phi i8 [ %241, %239 ], [ %246, %242 ]
  %249 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %227, i8 noundef signext %248)
  %250 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %249)
  %251 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 21)
  %252 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 2)
  %253 = load ptr, ptr %252, align 8, !tbaa !8
  %254 = getelementptr i8, ptr %253, i64 -24
  %255 = load i64, ptr %254, align 8
  %256 = getelementptr inbounds i8, ptr %252, i64 %255
  %257 = getelementptr inbounds nuw i8, ptr %256, i64 240
  %258 = load ptr, ptr %257, align 8, !tbaa !10
  %259 = icmp eq ptr %258, null
  br i1 %259, label %84, label %260

260:                                              ; preds = %247
  %261 = getelementptr inbounds nuw i8, ptr %258, i64 56
  %262 = load i8, ptr %261, align 8, !tbaa !28
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds nuw i8, ptr %258, i64 67
  %266 = load i8, ptr %265, align 1, !tbaa !34
  br label %272

267:                                              ; preds = %260
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %258)
  %268 = load ptr, ptr %258, align 8, !tbaa !8
  %269 = getelementptr inbounds nuw i8, ptr %268, i64 48
  %270 = load ptr, ptr %269, align 8
  %271 = tail call noundef signext i8 %270(ptr noundef nonnull align 8 dereferenceable(570) %258, i8 noundef signext 10), !inline_history !35
  br label %272

272:                                              ; preds = %267, %264
  %273 = phi i8 [ %266, %264 ], [ %271, %267 ]
  %274 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %252, i8 noundef signext %273)
  %275 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %274)
  %276 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %277 = getelementptr i8, ptr %276, i64 -24
  %278 = load i64, ptr %277, align 8
  %279 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %278
  %280 = getelementptr inbounds nuw i8, ptr %279, i64 240
  %281 = load ptr, ptr %280, align 8, !tbaa !10
  %282 = icmp eq ptr %281, null
  br i1 %282, label %39, label %40
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

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
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
