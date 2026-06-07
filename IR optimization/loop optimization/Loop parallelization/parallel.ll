; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = dso_local local_unnamed_addr global [1024 x [1024 x float]] zeroinitializer, align 16
@B = dso_local local_unnamed_addr global [1024 x [1024 x float]] zeroinitializer, align 16
@C = dso_local local_unnamed_addr global [1024 x [1024 x float]] zeroinitializer, align 16
@str = private unnamed_addr constant [5 x i8] c"Done\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @matmul() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %287, %0
  %2 = phi i64 [ 32, %0 ], [ %290, %287 ]
  %3 = phi i64 [ 0, %0 ], [ %288, %287 ]
  %4 = trunc i64 %3 to i32
  br label %5

5:                                                ; preds = %8, %1
  %6 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %7 = trunc i64 %6 to i32
  br label %11

8:                                                ; preds = %283
  %9 = add nuw nsw i64 %6, 32
  %10 = icmp samesign ult i32 %7, 992
  br i1 %10, label %5, label %287, !llvm.loop !9

11:                                               ; preds = %5, %283
  %12 = phi i64 [ 0, %5 ], [ %284, %283 ]
  %13 = or disjoint i64 %12, 1
  %14 = or disjoint i64 %12, 2
  %15 = or disjoint i64 %12, 3
  %16 = or disjoint i64 %12, 4
  %17 = or disjoint i64 %12, 5
  %18 = or disjoint i64 %12, 6
  %19 = or disjoint i64 %12, 7
  %20 = or disjoint i64 %12, 8
  %21 = or disjoint i64 %12, 9
  %22 = or disjoint i64 %12, 10
  %23 = or disjoint i64 %12, 11
  %24 = or disjoint i64 %12, 12
  %25 = or disjoint i64 %12, 13
  %26 = or disjoint i64 %12, 14
  %27 = or disjoint i64 %12, 15
  %28 = or disjoint i64 %12, 16
  %29 = or disjoint i64 %12, 17
  %30 = or disjoint i64 %12, 18
  %31 = or disjoint i64 %12, 19
  %32 = or disjoint i64 %12, 20
  %33 = or disjoint i64 %12, 21
  %34 = or disjoint i64 %12, 22
  %35 = or disjoint i64 %12, 23
  %36 = or disjoint i64 %12, 24
  %37 = or disjoint i64 %12, 25
  %38 = or disjoint i64 %12, 26
  %39 = or disjoint i64 %12, 27
  %40 = or disjoint i64 %12, 28
  %41 = or disjoint i64 %12, 29
  %42 = or disjoint i64 %12, 30
  %43 = or disjoint i64 %12, 31
  br label %44

44:                                               ; preds = %280, %11
  %45 = phi i64 [ %281, %280 ], [ %3, %11 ]
  %46 = getelementptr inbounds nuw [4096 x i8], ptr @C, i64 %45
  %47 = getelementptr inbounds nuw [4096 x i8], ptr @A, i64 %45
  %48 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %43
  %49 = load float, ptr %48, align 4, !tbaa !11, !llvm.access.group !13
  %50 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %42
  %51 = load float, ptr %50, align 8, !tbaa !11, !llvm.access.group !13
  %52 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %41
  %53 = load float, ptr %52, align 4, !tbaa !11, !llvm.access.group !13
  %54 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %40
  %55 = load float, ptr %54, align 16, !tbaa !11, !llvm.access.group !13
  %56 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %39
  %57 = load float, ptr %56, align 4, !tbaa !11, !llvm.access.group !13
  %58 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %38
  %59 = load float, ptr %58, align 8, !tbaa !11, !llvm.access.group !13
  %60 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %37
  %61 = load float, ptr %60, align 4, !tbaa !11, !llvm.access.group !13
  %62 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %36
  %63 = load float, ptr %62, align 16, !tbaa !11, !llvm.access.group !13
  %64 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %35
  %65 = load float, ptr %64, align 4, !tbaa !11, !llvm.access.group !13
  %66 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %34
  %67 = load float, ptr %66, align 8, !tbaa !11, !llvm.access.group !13
  %68 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %33
  %69 = load float, ptr %68, align 4, !tbaa !11, !llvm.access.group !13
  %70 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %32
  %71 = load float, ptr %70, align 16, !tbaa !11, !llvm.access.group !13
  %72 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %31
  %73 = load float, ptr %72, align 4, !tbaa !11, !llvm.access.group !13
  %74 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %30
  %75 = load float, ptr %74, align 8, !tbaa !11, !llvm.access.group !13
  %76 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %29
  %77 = load float, ptr %76, align 4, !tbaa !11, !llvm.access.group !13
  %78 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %28
  %79 = load float, ptr %78, align 16, !tbaa !11, !llvm.access.group !13
  %80 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %27
  %81 = load float, ptr %80, align 4, !tbaa !11, !llvm.access.group !13
  %82 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %26
  %83 = load float, ptr %82, align 8, !tbaa !11, !llvm.access.group !13
  %84 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %25
  %85 = load float, ptr %84, align 4, !tbaa !11, !llvm.access.group !13
  %86 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %24
  %87 = load float, ptr %86, align 16, !tbaa !11, !llvm.access.group !13
  %88 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %23
  %89 = load float, ptr %88, align 4, !tbaa !11, !llvm.access.group !13
  %90 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %22
  %91 = load float, ptr %90, align 8, !tbaa !11, !llvm.access.group !13
  %92 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %21
  %93 = load float, ptr %92, align 4, !tbaa !11, !llvm.access.group !13
  %94 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %20
  %95 = load float, ptr %94, align 16, !tbaa !11, !llvm.access.group !13
  %96 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %19
  %97 = load float, ptr %96, align 4, !tbaa !11, !llvm.access.group !13
  %98 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %18
  %99 = load float, ptr %98, align 8, !tbaa !11, !llvm.access.group !13
  %100 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %17
  %101 = load float, ptr %100, align 4, !tbaa !11, !llvm.access.group !13
  %102 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %16
  %103 = load float, ptr %102, align 16, !tbaa !11, !llvm.access.group !13
  %104 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %15
  %105 = load float, ptr %104, align 4, !tbaa !11, !llvm.access.group !13
  %106 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %14
  %107 = load float, ptr %106, align 8, !tbaa !11, !llvm.access.group !13
  %108 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %13
  %109 = load float, ptr %108, align 4, !tbaa !11, !llvm.access.group !13
  %110 = getelementptr inbounds nuw [4 x i8], ptr %47, i64 %12
  %111 = load float, ptr %110, align 16, !tbaa !11, !llvm.access.group !13
  %112 = insertelement <4 x float> poison, float %111, i64 0
  %113 = shufflevector <4 x float> %112, <4 x float> poison, <4 x i32> zeroinitializer
  %114 = insertelement <4 x float> poison, float %109, i64 0
  %115 = shufflevector <4 x float> %114, <4 x float> poison, <4 x i32> zeroinitializer
  %116 = insertelement <4 x float> poison, float %107, i64 0
  %117 = shufflevector <4 x float> %116, <4 x float> poison, <4 x i32> zeroinitializer
  %118 = insertelement <4 x float> poison, float %105, i64 0
  %119 = shufflevector <4 x float> %118, <4 x float> poison, <4 x i32> zeroinitializer
  %120 = insertelement <4 x float> poison, float %103, i64 0
  %121 = shufflevector <4 x float> %120, <4 x float> poison, <4 x i32> zeroinitializer
  %122 = insertelement <4 x float> poison, float %101, i64 0
  %123 = shufflevector <4 x float> %122, <4 x float> poison, <4 x i32> zeroinitializer
  %124 = insertelement <4 x float> poison, float %99, i64 0
  %125 = shufflevector <4 x float> %124, <4 x float> poison, <4 x i32> zeroinitializer
  %126 = insertelement <4 x float> poison, float %97, i64 0
  %127 = shufflevector <4 x float> %126, <4 x float> poison, <4 x i32> zeroinitializer
  %128 = insertelement <4 x float> poison, float %95, i64 0
  %129 = shufflevector <4 x float> %128, <4 x float> poison, <4 x i32> zeroinitializer
  %130 = insertelement <4 x float> poison, float %93, i64 0
  %131 = shufflevector <4 x float> %130, <4 x float> poison, <4 x i32> zeroinitializer
  %132 = insertelement <4 x float> poison, float %91, i64 0
  %133 = shufflevector <4 x float> %132, <4 x float> poison, <4 x i32> zeroinitializer
  %134 = insertelement <4 x float> poison, float %89, i64 0
  %135 = shufflevector <4 x float> %134, <4 x float> poison, <4 x i32> zeroinitializer
  %136 = insertelement <4 x float> poison, float %87, i64 0
  %137 = shufflevector <4 x float> %136, <4 x float> poison, <4 x i32> zeroinitializer
  %138 = insertelement <4 x float> poison, float %85, i64 0
  %139 = shufflevector <4 x float> %138, <4 x float> poison, <4 x i32> zeroinitializer
  %140 = insertelement <4 x float> poison, float %83, i64 0
  %141 = shufflevector <4 x float> %140, <4 x float> poison, <4 x i32> zeroinitializer
  %142 = insertelement <4 x float> poison, float %81, i64 0
  %143 = shufflevector <4 x float> %142, <4 x float> poison, <4 x i32> zeroinitializer
  %144 = insertelement <4 x float> poison, float %79, i64 0
  %145 = shufflevector <4 x float> %144, <4 x float> poison, <4 x i32> zeroinitializer
  %146 = insertelement <4 x float> poison, float %77, i64 0
  %147 = shufflevector <4 x float> %146, <4 x float> poison, <4 x i32> zeroinitializer
  %148 = insertelement <4 x float> poison, float %75, i64 0
  %149 = shufflevector <4 x float> %148, <4 x float> poison, <4 x i32> zeroinitializer
  %150 = insertelement <4 x float> poison, float %73, i64 0
  %151 = shufflevector <4 x float> %150, <4 x float> poison, <4 x i32> zeroinitializer
  %152 = insertelement <4 x float> poison, float %71, i64 0
  %153 = shufflevector <4 x float> %152, <4 x float> poison, <4 x i32> zeroinitializer
  %154 = insertelement <4 x float> poison, float %69, i64 0
  %155 = shufflevector <4 x float> %154, <4 x float> poison, <4 x i32> zeroinitializer
  %156 = insertelement <4 x float> poison, float %67, i64 0
  %157 = shufflevector <4 x float> %156, <4 x float> poison, <4 x i32> zeroinitializer
  %158 = insertelement <4 x float> poison, float %65, i64 0
  %159 = shufflevector <4 x float> %158, <4 x float> poison, <4 x i32> zeroinitializer
  %160 = insertelement <4 x float> poison, float %63, i64 0
  %161 = shufflevector <4 x float> %160, <4 x float> poison, <4 x i32> zeroinitializer
  %162 = insertelement <4 x float> poison, float %61, i64 0
  %163 = shufflevector <4 x float> %162, <4 x float> poison, <4 x i32> zeroinitializer
  %164 = insertelement <4 x float> poison, float %59, i64 0
  %165 = shufflevector <4 x float> %164, <4 x float> poison, <4 x i32> zeroinitializer
  %166 = insertelement <4 x float> poison, float %57, i64 0
  %167 = shufflevector <4 x float> %166, <4 x float> poison, <4 x i32> zeroinitializer
  %168 = insertelement <4 x float> poison, float %55, i64 0
  %169 = shufflevector <4 x float> %168, <4 x float> poison, <4 x i32> zeroinitializer
  %170 = insertelement <4 x float> poison, float %53, i64 0
  %171 = shufflevector <4 x float> %170, <4 x float> poison, <4 x i32> zeroinitializer
  %172 = insertelement <4 x float> poison, float %51, i64 0
  %173 = shufflevector <4 x float> %172, <4 x float> poison, <4 x i32> zeroinitializer
  %174 = insertelement <4 x float> poison, float %49, i64 0
  %175 = shufflevector <4 x float> %174, <4 x float> poison, <4 x i32> zeroinitializer
  br label %176

176:                                              ; preds = %176, %44
  %177 = phi i64 [ 0, %44 ], [ %278, %176 ]
  %178 = add i64 %6, %177
  %179 = getelementptr inbounds nuw [4 x i8], ptr %46, i64 %178
  %180 = load <4 x float>, ptr %179, align 16, !tbaa !11
  %181 = getelementptr inbounds nuw [4 x i8], ptr @B, i64 %178
  %182 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %12
  %183 = load <4 x float>, ptr %182, align 16, !tbaa !11, !llvm.access.group !13
  %184 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %113, <4 x float> %183, <4 x float> %180)
  %185 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %13
  %186 = load <4 x float>, ptr %185, align 16, !tbaa !11, !llvm.access.group !13
  %187 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %115, <4 x float> %186, <4 x float> %184)
  %188 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %14
  %189 = load <4 x float>, ptr %188, align 16, !tbaa !11, !llvm.access.group !13
  %190 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %117, <4 x float> %189, <4 x float> %187)
  %191 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %15
  %192 = load <4 x float>, ptr %191, align 16, !tbaa !11, !llvm.access.group !13
  %193 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %119, <4 x float> %192, <4 x float> %190)
  %194 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %16
  %195 = load <4 x float>, ptr %194, align 16, !tbaa !11, !llvm.access.group !13
  %196 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %121, <4 x float> %195, <4 x float> %193)
  %197 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %17
  %198 = load <4 x float>, ptr %197, align 16, !tbaa !11, !llvm.access.group !13
  %199 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %123, <4 x float> %198, <4 x float> %196)
  %200 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %18
  %201 = load <4 x float>, ptr %200, align 16, !tbaa !11, !llvm.access.group !13
  %202 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %125, <4 x float> %201, <4 x float> %199)
  %203 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %19
  %204 = load <4 x float>, ptr %203, align 16, !tbaa !11, !llvm.access.group !13
  %205 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %127, <4 x float> %204, <4 x float> %202)
  %206 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %20
  %207 = load <4 x float>, ptr %206, align 16, !tbaa !11, !llvm.access.group !13
  %208 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %129, <4 x float> %207, <4 x float> %205)
  %209 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %21
  %210 = load <4 x float>, ptr %209, align 16, !tbaa !11, !llvm.access.group !13
  %211 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %131, <4 x float> %210, <4 x float> %208)
  %212 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %22
  %213 = load <4 x float>, ptr %212, align 16, !tbaa !11, !llvm.access.group !13
  %214 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %133, <4 x float> %213, <4 x float> %211)
  %215 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %23
  %216 = load <4 x float>, ptr %215, align 16, !tbaa !11, !llvm.access.group !13
  %217 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %135, <4 x float> %216, <4 x float> %214)
  %218 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %24
  %219 = load <4 x float>, ptr %218, align 16, !tbaa !11, !llvm.access.group !13
  %220 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %137, <4 x float> %219, <4 x float> %217)
  %221 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %25
  %222 = load <4 x float>, ptr %221, align 16, !tbaa !11, !llvm.access.group !13
  %223 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %139, <4 x float> %222, <4 x float> %220)
  %224 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %26
  %225 = load <4 x float>, ptr %224, align 16, !tbaa !11, !llvm.access.group !13
  %226 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %141, <4 x float> %225, <4 x float> %223)
  %227 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %27
  %228 = load <4 x float>, ptr %227, align 16, !tbaa !11, !llvm.access.group !13
  %229 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %143, <4 x float> %228, <4 x float> %226)
  %230 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %28
  %231 = load <4 x float>, ptr %230, align 16, !tbaa !11, !llvm.access.group !13
  %232 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %145, <4 x float> %231, <4 x float> %229)
  %233 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %29
  %234 = load <4 x float>, ptr %233, align 16, !tbaa !11, !llvm.access.group !13
  %235 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %147, <4 x float> %234, <4 x float> %232)
  %236 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %30
  %237 = load <4 x float>, ptr %236, align 16, !tbaa !11, !llvm.access.group !13
  %238 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %149, <4 x float> %237, <4 x float> %235)
  %239 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %31
  %240 = load <4 x float>, ptr %239, align 16, !tbaa !11, !llvm.access.group !13
  %241 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %151, <4 x float> %240, <4 x float> %238)
  %242 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %32
  %243 = load <4 x float>, ptr %242, align 16, !tbaa !11, !llvm.access.group !13
  %244 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %153, <4 x float> %243, <4 x float> %241)
  %245 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %33
  %246 = load <4 x float>, ptr %245, align 16, !tbaa !11, !llvm.access.group !13
  %247 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %155, <4 x float> %246, <4 x float> %244)
  %248 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %34
  %249 = load <4 x float>, ptr %248, align 16, !tbaa !11, !llvm.access.group !13
  %250 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %157, <4 x float> %249, <4 x float> %247)
  %251 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %35
  %252 = load <4 x float>, ptr %251, align 16, !tbaa !11, !llvm.access.group !13
  %253 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %159, <4 x float> %252, <4 x float> %250)
  %254 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %36
  %255 = load <4 x float>, ptr %254, align 16, !tbaa !11, !llvm.access.group !13
  %256 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %161, <4 x float> %255, <4 x float> %253)
  %257 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %37
  %258 = load <4 x float>, ptr %257, align 16, !tbaa !11, !llvm.access.group !13
  %259 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %163, <4 x float> %258, <4 x float> %256)
  %260 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %38
  %261 = load <4 x float>, ptr %260, align 16, !tbaa !11, !llvm.access.group !13
  %262 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %165, <4 x float> %261, <4 x float> %259)
  %263 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %39
  %264 = load <4 x float>, ptr %263, align 16, !tbaa !11, !llvm.access.group !13
  %265 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %167, <4 x float> %264, <4 x float> %262)
  %266 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %40
  %267 = load <4 x float>, ptr %266, align 16, !tbaa !11, !llvm.access.group !13
  %268 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %169, <4 x float> %267, <4 x float> %265)
  %269 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %41
  %270 = load <4 x float>, ptr %269, align 16, !tbaa !11, !llvm.access.group !13
  %271 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %171, <4 x float> %270, <4 x float> %268)
  %272 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %42
  %273 = load <4 x float>, ptr %272, align 16, !tbaa !11, !llvm.access.group !13
  %274 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %173, <4 x float> %273, <4 x float> %271)
  %275 = getelementptr inbounds nuw [4096 x i8], ptr %181, i64 %43
  %276 = load <4 x float>, ptr %275, align 16, !tbaa !11, !llvm.access.group !13
  %277 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %175, <4 x float> %276, <4 x float> %274)
  store <4 x float> %277, ptr %179, align 16, !tbaa !11
  %278 = add nuw i64 %177, 4
  %279 = icmp eq i64 %278, 32
  br i1 %279, label %280, label %176, !llvm.loop !14

280:                                              ; preds = %176
  %281 = add nuw nsw i64 %45, 1
  %282 = icmp eq i64 %281, %2
  br i1 %282, label %283, label %44, !llvm.loop !17

283:                                              ; preds = %280
  %284 = add nuw nsw i64 %12, 32
  %285 = icmp samesign ult i64 %12, 992
  br i1 %285, label %11, label %8, !llvm.loop !18

286:                                              ; preds = %287
  ret void

287:                                              ; preds = %8
  %288 = add nuw nsw i64 %3, 32
  %289 = icmp samesign ult i32 %4, 992
  %290 = add nuw nsw i64 %2, 32
  br i1 %289, label %1, label %286, !llvm.loop !19
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
  tail call void @matmul()
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 7377bac59b4aea64da09873b44df1430571e93c3)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = distinct !{}
!14 = distinct !{!14, !10, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
