; ModuleID = 'tiled.c'
source_filename = "tiled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C = dso_local local_unnamed_addr global [1024 x [1024 x float]] zeroinitializer, align 16
@A = dso_local local_unnamed_addr global [1024 x [1024 x float]] zeroinitializer, align 16
@B = dso_local local_unnamed_addr global [1024 x [1024 x float]] zeroinitializer, align 16
@str = private unnamed_addr constant [5 x i8] c"Done\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @matmul_tiled() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %9
  %2 = phi i64 [ 32, %0 ], [ %12, %9 ]
  %3 = phi i64 [ 0, %0 ], [ %10, %9 ]
  %4 = trunc i64 %3 to i32
  br label %6

5:                                                ; preds = %9
  ret void

6:                                                ; preds = %1, %47
  %7 = phi i64 [ 0, %1 ], [ %48, %47 ]
  %8 = trunc i64 %7 to i32
  br label %13

9:                                                ; preds = %47
  %10 = add nuw nsw i64 %3, 32
  %11 = icmp samesign ult i32 %4, 992
  %12 = add nuw nsw i64 %2, 32
  br i1 %11, label %1, label %5, !llvm.loop !8

13:                                               ; preds = %6, %286
  %14 = phi i64 [ 0, %6 ], [ %287, %286 ]
  %15 = trunc i64 %14 to i32
  %16 = or disjoint i64 %14, 1
  %17 = or disjoint i64 %14, 2
  %18 = or disjoint i64 %14, 3
  %19 = or disjoint i64 %14, 4
  %20 = or disjoint i64 %14, 5
  %21 = or disjoint i64 %14, 6
  %22 = or disjoint i64 %14, 7
  %23 = or disjoint i64 %14, 8
  %24 = or disjoint i64 %14, 9
  %25 = or disjoint i64 %14, 10
  %26 = or disjoint i64 %14, 11
  %27 = or disjoint i64 %14, 12
  %28 = or disjoint i64 %14, 13
  %29 = or disjoint i64 %14, 14
  %30 = or disjoint i64 %14, 15
  %31 = or disjoint i64 %14, 16
  %32 = or disjoint i64 %14, 17
  %33 = or disjoint i64 %14, 18
  %34 = or disjoint i64 %14, 19
  %35 = or disjoint i64 %14, 20
  %36 = or disjoint i64 %14, 21
  %37 = or disjoint i64 %14, 22
  %38 = or disjoint i64 %14, 23
  %39 = or disjoint i64 %14, 24
  %40 = or disjoint i64 %14, 25
  %41 = or disjoint i64 %14, 26
  %42 = or disjoint i64 %14, 27
  %43 = or disjoint i64 %14, 28
  %44 = or disjoint i64 %14, 29
  %45 = or disjoint i64 %14, 30
  %46 = or disjoint i64 %14, 31
  br label %50

47:                                               ; preds = %286
  %48 = add nuw nsw i64 %7, 32
  %49 = icmp samesign ult i32 %8, 992
  br i1 %49, label %6, label %9, !llvm.loop !10

50:                                               ; preds = %13, %289
  %51 = phi i64 [ %3, %13 ], [ %290, %289 ]
  %52 = getelementptr inbounds nuw [4096 x i8], ptr @C, i64 %51
  %53 = getelementptr inbounds nuw [4096 x i8], ptr @A, i64 %51
  %54 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %46
  %55 = load float, ptr %54, align 4, !tbaa !11
  %56 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %45
  %57 = load float, ptr %56, align 8, !tbaa !11
  %58 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %44
  %59 = load float, ptr %58, align 4, !tbaa !11
  %60 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %43
  %61 = load float, ptr %60, align 16, !tbaa !11
  %62 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %42
  %63 = load float, ptr %62, align 4, !tbaa !11
  %64 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %41
  %65 = load float, ptr %64, align 8, !tbaa !11
  %66 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %40
  %67 = load float, ptr %66, align 4, !tbaa !11
  %68 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %39
  %69 = load float, ptr %68, align 16, !tbaa !11
  %70 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %38
  %71 = load float, ptr %70, align 4, !tbaa !11
  %72 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %37
  %73 = load float, ptr %72, align 8, !tbaa !11
  %74 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %36
  %75 = load float, ptr %74, align 4, !tbaa !11
  %76 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %35
  %77 = load float, ptr %76, align 16, !tbaa !11
  %78 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %34
  %79 = load float, ptr %78, align 4, !tbaa !11
  %80 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %33
  %81 = load float, ptr %80, align 8, !tbaa !11
  %82 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %32
  %83 = load float, ptr %82, align 4, !tbaa !11
  %84 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %31
  %85 = load float, ptr %84, align 16, !tbaa !11
  %86 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %30
  %87 = load float, ptr %86, align 4, !tbaa !11
  %88 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %29
  %89 = load float, ptr %88, align 8, !tbaa !11
  %90 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %28
  %91 = load float, ptr %90, align 4, !tbaa !11
  %92 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %27
  %93 = load float, ptr %92, align 16, !tbaa !11
  %94 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %26
  %95 = load float, ptr %94, align 4, !tbaa !11
  %96 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %25
  %97 = load float, ptr %96, align 8, !tbaa !11
  %98 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %24
  %99 = load float, ptr %98, align 4, !tbaa !11
  %100 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %23
  %101 = load float, ptr %100, align 16, !tbaa !11
  %102 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %22
  %103 = load float, ptr %102, align 4, !tbaa !11
  %104 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %21
  %105 = load float, ptr %104, align 8, !tbaa !11
  %106 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %20
  %107 = load float, ptr %106, align 4, !tbaa !11
  %108 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %19
  %109 = load float, ptr %108, align 16, !tbaa !11
  %110 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %18
  %111 = load float, ptr %110, align 4, !tbaa !11
  %112 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %17
  %113 = load float, ptr %112, align 8, !tbaa !11
  %114 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %16
  %115 = load float, ptr %114, align 4, !tbaa !11
  %116 = getelementptr inbounds nuw [4 x i8], ptr %53, i64 %14
  %117 = load float, ptr %116, align 16, !tbaa !11
  %118 = insertelement <4 x float> poison, float %117, i64 0
  %119 = shufflevector <4 x float> %118, <4 x float> poison, <4 x i32> zeroinitializer
  %120 = insertelement <4 x float> poison, float %115, i64 0
  %121 = shufflevector <4 x float> %120, <4 x float> poison, <4 x i32> zeroinitializer
  %122 = insertelement <4 x float> poison, float %113, i64 0
  %123 = shufflevector <4 x float> %122, <4 x float> poison, <4 x i32> zeroinitializer
  %124 = insertelement <4 x float> poison, float %111, i64 0
  %125 = shufflevector <4 x float> %124, <4 x float> poison, <4 x i32> zeroinitializer
  %126 = insertelement <4 x float> poison, float %109, i64 0
  %127 = shufflevector <4 x float> %126, <4 x float> poison, <4 x i32> zeroinitializer
  %128 = insertelement <4 x float> poison, float %107, i64 0
  %129 = shufflevector <4 x float> %128, <4 x float> poison, <4 x i32> zeroinitializer
  %130 = insertelement <4 x float> poison, float %105, i64 0
  %131 = shufflevector <4 x float> %130, <4 x float> poison, <4 x i32> zeroinitializer
  %132 = insertelement <4 x float> poison, float %103, i64 0
  %133 = shufflevector <4 x float> %132, <4 x float> poison, <4 x i32> zeroinitializer
  %134 = insertelement <4 x float> poison, float %101, i64 0
  %135 = shufflevector <4 x float> %134, <4 x float> poison, <4 x i32> zeroinitializer
  %136 = insertelement <4 x float> poison, float %99, i64 0
  %137 = shufflevector <4 x float> %136, <4 x float> poison, <4 x i32> zeroinitializer
  %138 = insertelement <4 x float> poison, float %97, i64 0
  %139 = shufflevector <4 x float> %138, <4 x float> poison, <4 x i32> zeroinitializer
  %140 = insertelement <4 x float> poison, float %95, i64 0
  %141 = shufflevector <4 x float> %140, <4 x float> poison, <4 x i32> zeroinitializer
  %142 = insertelement <4 x float> poison, float %93, i64 0
  %143 = shufflevector <4 x float> %142, <4 x float> poison, <4 x i32> zeroinitializer
  %144 = insertelement <4 x float> poison, float %91, i64 0
  %145 = shufflevector <4 x float> %144, <4 x float> poison, <4 x i32> zeroinitializer
  %146 = insertelement <4 x float> poison, float %89, i64 0
  %147 = shufflevector <4 x float> %146, <4 x float> poison, <4 x i32> zeroinitializer
  %148 = insertelement <4 x float> poison, float %87, i64 0
  %149 = shufflevector <4 x float> %148, <4 x float> poison, <4 x i32> zeroinitializer
  %150 = insertelement <4 x float> poison, float %85, i64 0
  %151 = shufflevector <4 x float> %150, <4 x float> poison, <4 x i32> zeroinitializer
  %152 = insertelement <4 x float> poison, float %83, i64 0
  %153 = shufflevector <4 x float> %152, <4 x float> poison, <4 x i32> zeroinitializer
  %154 = insertelement <4 x float> poison, float %81, i64 0
  %155 = shufflevector <4 x float> %154, <4 x float> poison, <4 x i32> zeroinitializer
  %156 = insertelement <4 x float> poison, float %79, i64 0
  %157 = shufflevector <4 x float> %156, <4 x float> poison, <4 x i32> zeroinitializer
  %158 = insertelement <4 x float> poison, float %77, i64 0
  %159 = shufflevector <4 x float> %158, <4 x float> poison, <4 x i32> zeroinitializer
  %160 = insertelement <4 x float> poison, float %75, i64 0
  %161 = shufflevector <4 x float> %160, <4 x float> poison, <4 x i32> zeroinitializer
  %162 = insertelement <4 x float> poison, float %73, i64 0
  %163 = shufflevector <4 x float> %162, <4 x float> poison, <4 x i32> zeroinitializer
  %164 = insertelement <4 x float> poison, float %71, i64 0
  %165 = shufflevector <4 x float> %164, <4 x float> poison, <4 x i32> zeroinitializer
  %166 = insertelement <4 x float> poison, float %69, i64 0
  %167 = shufflevector <4 x float> %166, <4 x float> poison, <4 x i32> zeroinitializer
  %168 = insertelement <4 x float> poison, float %67, i64 0
  %169 = shufflevector <4 x float> %168, <4 x float> poison, <4 x i32> zeroinitializer
  %170 = insertelement <4 x float> poison, float %65, i64 0
  %171 = shufflevector <4 x float> %170, <4 x float> poison, <4 x i32> zeroinitializer
  %172 = insertelement <4 x float> poison, float %63, i64 0
  %173 = shufflevector <4 x float> %172, <4 x float> poison, <4 x i32> zeroinitializer
  %174 = insertelement <4 x float> poison, float %61, i64 0
  %175 = shufflevector <4 x float> %174, <4 x float> poison, <4 x i32> zeroinitializer
  %176 = insertelement <4 x float> poison, float %59, i64 0
  %177 = shufflevector <4 x float> %176, <4 x float> poison, <4 x i32> zeroinitializer
  %178 = insertelement <4 x float> poison, float %57, i64 0
  %179 = shufflevector <4 x float> %178, <4 x float> poison, <4 x i32> zeroinitializer
  %180 = insertelement <4 x float> poison, float %55, i64 0
  %181 = shufflevector <4 x float> %180, <4 x float> poison, <4 x i32> zeroinitializer
  br label %182

182:                                              ; preds = %182, %50
  %183 = phi i64 [ 0, %50 ], [ %284, %182 ]
  %184 = add i64 %7, %183
  %185 = getelementptr inbounds nuw [4 x i8], ptr %52, i64 %184
  %186 = load <4 x float>, ptr %185, align 16, !tbaa !11
  %187 = getelementptr inbounds nuw [4 x i8], ptr @B, i64 %184
  %188 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %14
  %189 = load <4 x float>, ptr %188, align 16, !tbaa !11
  %190 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %119, <4 x float> %189, <4 x float> %186)
  %191 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %16
  %192 = load <4 x float>, ptr %191, align 16, !tbaa !11
  %193 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %121, <4 x float> %192, <4 x float> %190)
  %194 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %17
  %195 = load <4 x float>, ptr %194, align 16, !tbaa !11
  %196 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %123, <4 x float> %195, <4 x float> %193)
  %197 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %18
  %198 = load <4 x float>, ptr %197, align 16, !tbaa !11
  %199 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %125, <4 x float> %198, <4 x float> %196)
  %200 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %19
  %201 = load <4 x float>, ptr %200, align 16, !tbaa !11
  %202 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %127, <4 x float> %201, <4 x float> %199)
  %203 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %20
  %204 = load <4 x float>, ptr %203, align 16, !tbaa !11
  %205 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %129, <4 x float> %204, <4 x float> %202)
  %206 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %21
  %207 = load <4 x float>, ptr %206, align 16, !tbaa !11
  %208 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %131, <4 x float> %207, <4 x float> %205)
  %209 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %22
  %210 = load <4 x float>, ptr %209, align 16, !tbaa !11
  %211 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %133, <4 x float> %210, <4 x float> %208)
  %212 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %23
  %213 = load <4 x float>, ptr %212, align 16, !tbaa !11
  %214 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %135, <4 x float> %213, <4 x float> %211)
  %215 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %24
  %216 = load <4 x float>, ptr %215, align 16, !tbaa !11
  %217 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %137, <4 x float> %216, <4 x float> %214)
  %218 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %25
  %219 = load <4 x float>, ptr %218, align 16, !tbaa !11
  %220 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %139, <4 x float> %219, <4 x float> %217)
  %221 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %26
  %222 = load <4 x float>, ptr %221, align 16, !tbaa !11
  %223 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %141, <4 x float> %222, <4 x float> %220)
  %224 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %27
  %225 = load <4 x float>, ptr %224, align 16, !tbaa !11
  %226 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %143, <4 x float> %225, <4 x float> %223)
  %227 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %28
  %228 = load <4 x float>, ptr %227, align 16, !tbaa !11
  %229 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %145, <4 x float> %228, <4 x float> %226)
  %230 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %29
  %231 = load <4 x float>, ptr %230, align 16, !tbaa !11
  %232 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %147, <4 x float> %231, <4 x float> %229)
  %233 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %30
  %234 = load <4 x float>, ptr %233, align 16, !tbaa !11
  %235 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %149, <4 x float> %234, <4 x float> %232)
  %236 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %31
  %237 = load <4 x float>, ptr %236, align 16, !tbaa !11
  %238 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %151, <4 x float> %237, <4 x float> %235)
  %239 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %32
  %240 = load <4 x float>, ptr %239, align 16, !tbaa !11
  %241 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %153, <4 x float> %240, <4 x float> %238)
  %242 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %33
  %243 = load <4 x float>, ptr %242, align 16, !tbaa !11
  %244 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %155, <4 x float> %243, <4 x float> %241)
  %245 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %34
  %246 = load <4 x float>, ptr %245, align 16, !tbaa !11
  %247 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %157, <4 x float> %246, <4 x float> %244)
  %248 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %35
  %249 = load <4 x float>, ptr %248, align 16, !tbaa !11
  %250 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %159, <4 x float> %249, <4 x float> %247)
  %251 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %36
  %252 = load <4 x float>, ptr %251, align 16, !tbaa !11
  %253 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %161, <4 x float> %252, <4 x float> %250)
  %254 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %37
  %255 = load <4 x float>, ptr %254, align 16, !tbaa !11
  %256 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %163, <4 x float> %255, <4 x float> %253)
  %257 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %38
  %258 = load <4 x float>, ptr %257, align 16, !tbaa !11
  %259 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %165, <4 x float> %258, <4 x float> %256)
  %260 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %39
  %261 = load <4 x float>, ptr %260, align 16, !tbaa !11
  %262 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %167, <4 x float> %261, <4 x float> %259)
  %263 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %40
  %264 = load <4 x float>, ptr %263, align 16, !tbaa !11
  %265 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %169, <4 x float> %264, <4 x float> %262)
  %266 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %41
  %267 = load <4 x float>, ptr %266, align 16, !tbaa !11
  %268 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %171, <4 x float> %267, <4 x float> %265)
  %269 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %42
  %270 = load <4 x float>, ptr %269, align 16, !tbaa !11
  %271 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %173, <4 x float> %270, <4 x float> %268)
  %272 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %43
  %273 = load <4 x float>, ptr %272, align 16, !tbaa !11
  %274 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %175, <4 x float> %273, <4 x float> %271)
  %275 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %44
  %276 = load <4 x float>, ptr %275, align 16, !tbaa !11
  %277 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %177, <4 x float> %276, <4 x float> %274)
  %278 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %45
  %279 = load <4 x float>, ptr %278, align 16, !tbaa !11
  %280 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %179, <4 x float> %279, <4 x float> %277)
  %281 = getelementptr inbounds nuw [4096 x i8], ptr %187, i64 %46
  %282 = load <4 x float>, ptr %281, align 16, !tbaa !11
  %283 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %181, <4 x float> %282, <4 x float> %280)
  store <4 x float> %283, ptr %185, align 16, !tbaa !11
  %284 = add nuw i64 %183, 4
  %285 = icmp eq i64 %284, 32
  br i1 %285, label %289, label %182, !llvm.loop !13

286:                                              ; preds = %289
  %287 = add nuw nsw i64 %14, 32
  %288 = icmp samesign ult i32 %15, 992
  br i1 %288, label %13, label %47, !llvm.loop !16

289:                                              ; preds = %182
  %290 = add nuw nsw i64 %51, 1
  %291 = icmp eq i64 %290, %2
  br i1 %291, label %286, label %50, !llvm.loop !17
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4194304) @C, i8 0, i64 4194304, i1 false), !tbaa !11
  br label %1

1:                                                ; preds = %0, %20
  %2 = phi i64 [ 0, %0 ], [ %21, %20 ]
  %3 = getelementptr inbounds nuw [4096 x i8], ptr @A, i64 %2
  %4 = getelementptr inbounds nuw [4096 x i8], ptr @B, i64 %2
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i64 [ 0, %1 ], [ %16, %5 ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %7, align 16, !tbaa !11
  store <4 x float> splat (float 1.000000e+00), ptr %8, align 16, !tbaa !11
  %9 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %6
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %9, align 16, !tbaa !11
  store <4 x float> splat (float 1.000000e+00), ptr %10, align 16, !tbaa !11
  %11 = or disjoint i64 %6, 8
  %12 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %12, align 16, !tbaa !11
  store <4 x float> splat (float 1.000000e+00), ptr %13, align 16, !tbaa !11
  %14 = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %11
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %14, align 16, !tbaa !11
  store <4 x float> splat (float 1.000000e+00), ptr %15, align 16, !tbaa !11
  %16 = add nuw nsw i64 %6, 16
  %17 = icmp eq i64 %16, 1024
  br i1 %17, label %20, label %5, !llvm.loop !18

18:                                               ; preds = %20
  tail call void @matmul_tiled()
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 0

20:                                               ; preds = %5
  %21 = add nuw nsw i64 %2, 1
  %22 = icmp eq i64 %21, 1024
  br i1 %22, label %18, label %1, !llvm.loop !19
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !6, i64 0}
!13 = distinct !{!13, !9, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9, !14, !15}
!19 = distinct !{!19, !9}
