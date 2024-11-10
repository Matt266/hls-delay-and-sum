; ModuleID = 'C:/Users/matt/OneDrive/Dokumente/__Master/Vivado/Vitis_HLS/DelayAndSum/DelayAndSum/DelayAndSum/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<12, 3, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<12, 3, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<12, true>" }
%"struct.ssdm_int<12, true>" = type { i12 }
%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>" = type { %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 1, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 1, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_DelayAndSum_ir(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %phi, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %fc, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %xpos1, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %xpos2, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %xpos3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %xpos4, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in1_real, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in1_imag, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in2_real, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in2_imag, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in3_real, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in3_imag, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in4_real, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in4_imag, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %out_real, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %out_imag) local_unnamed_addr #1 {
entry:
  %phi_copy = alloca i12, align 512
  %fc_copy = alloca i32, align 512
  %xpos1_copy = alloca i32, align 512
  %xpos2_copy = alloca i32, align 512
  %xpos3_copy = alloca i32, align 512
  %xpos4_copy = alloca i32, align 512
  %in1_real_copy = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %in1_real_copy, i32 0) ]
  %in1_imag_copy = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %in1_imag_copy, i32 0) ]
  %in2_real_copy = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %in2_real_copy, i32 0) ]
  %in2_imag_copy = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %in2_imag_copy, i32 0) ]
  %in3_real_copy = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %in3_real_copy, i32 0) ]
  %in3_imag_copy = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %in3_imag_copy, i32 0) ]
  %in4_real_copy = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %in4_real_copy, i32 0) ]
  %in4_imag_copy = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %in4_imag_copy, i32 0) ]
  %out_real_copy = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %out_real_copy, i32 0) ]
  %out_imag_copy = alloca i16, align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(i16* %out_imag_copy, i32 0) ]
  call fastcc void @copy_in(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* nonnull %phi, i12* nonnull align 512 %phi_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %fc, i32* nonnull align 512 %fc_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %xpos1, i32* nonnull align 512 %xpos1_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %xpos2, i32* nonnull align 512 %xpos2_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %xpos3, i32* nonnull align 512 %xpos3_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %xpos4, i32* nonnull align 512 %xpos4_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in1_real, i16* nonnull align 512 %in1_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in1_imag, i16* nonnull align 512 %in1_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in2_real, i16* nonnull align 512 %in2_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in2_imag, i16* nonnull align 512 %in2_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in3_real, i16* nonnull align 512 %in3_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in3_imag, i16* nonnull align 512 %in3_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in4_real, i16* nonnull align 512 %in4_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in4_imag, i16* nonnull align 512 %in4_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %out_real, i16* nonnull align 512 %out_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %out_imag, i16* nonnull align 512 %out_imag_copy)
  call void @apatb_DelayAndSum_hw(i12* %phi_copy, i32* %fc_copy, i32* %xpos1_copy, i32* %xpos2_copy, i32* %xpos3_copy, i32* %xpos4_copy, i16* %in1_real_copy, i16* %in1_imag_copy, i16* %in2_real_copy, i16* %in2_imag_copy, i16* %in3_real_copy, i16* %in3_imag_copy, i16* %in4_real_copy, i16* %in4_imag_copy, i16* %out_real_copy, i16* %out_imag_copy)
  call void @copy_back(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %phi, i12* %phi_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %fc, i32* %fc_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %xpos1, i32* %xpos1_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %xpos2, i32* %xpos2_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %xpos3, i32* %xpos3_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %xpos4, i32* %xpos4_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in1_real, i16* %in1_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in1_imag, i16* %in1_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in2_real, i16* %in2_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in2_imag, i16* %in2_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in3_real, i16* %in3_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in3_imag, i16* %in3_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in4_real, i16* %in4_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in4_imag, i16* %in4_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %out_real, i16* %out_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %out_imag, i16* %out_imag_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="0", i12* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="4", i32* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="8", i32* noalias nocapture align 512 "unpacked"="9.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="10", i32* noalias nocapture align 512 "unpacked"="11.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="12", i16* noalias nocapture align 512 "unpacked"="13.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="14", i16* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="16", i16* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="18", i16* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="20", i16* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="22", i16* noalias nocapture align 512 "unpacked"="23.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="24", i16* noalias nocapture align 512 "unpacked"="25.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="26", i16* noalias nocapture align 512 "unpacked"="27.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="28", i16* noalias nocapture align 512 "unpacked"="29.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="30", i16* noalias nocapture align 512 "unpacked"="31.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>.184"(i12* align 512 %1, %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(i32* align 512 %3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(i32* align 512 %5, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(i32* align 512 %7, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(i32* align 512 %9, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(i32* align 512 %11, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %13, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %15, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %17, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %19, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %21, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %23, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %25, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %27, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %29, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %31, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %30)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0" %dst, i12* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i12* %src to i16*
  %2 = load i16, i16* %1
  %3 = trunc i16 %2 to i12
  store i12 %3, i12* %dst.0.0.04, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i12* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="6", i32* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="8", i32* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="10", i32* noalias nocapture readonly align 512 "unpacked"="11.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="12", i16* noalias nocapture align 512 "unpacked"="13.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="14", i16* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="16", i16* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="18", i16* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="20", i16* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="22", i16* noalias nocapture align 512 "unpacked"="23.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="24", i16* noalias nocapture align 512 "unpacked"="25.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="26", i16* noalias nocapture align 512 "unpacked"="27.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="28", i16* noalias nocapture align 512 "unpacked"="29.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="30", i16* noalias nocapture align 512 "unpacked"="31.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %0, i12* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.162"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.162"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.162"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %6, i32* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.162"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %8, i32* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.162"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %10, i32* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %12, i16* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14, i16* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16, i16* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18, i16* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20, i16* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, i16* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24, i16* align 512 %25)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26, i16* align 512 %27)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28, i16* align 512 %29)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %30, i16* align 512 %31)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="0" %dst, i16* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.122"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %dst, i16* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.122"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "unpacked"="0", i16* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #6 {
entry:
  %2 = alloca i16
  %3 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i16* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i16* %2 to i8*
  %7 = bitcast i16* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile i16, i16* %2
  %.ivi = insertvalue %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>" undef, i16 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>" %.ivi, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_2(i8* %9, i8* %10)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.130"(i16* align 512 %dst, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.130"(i16* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #6 {
entry:
  %2 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %3 = alloca i16
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>" %8, 0, 0, 0, 0
  store i16 %.evi, i16* %3
  %9 = bitcast i16* %3 to i8*
  %10 = bitcast i16* %0 to i8*
  call void @fpga_fifo_push_2(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.162"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src, align 512
  store i32 %1, i32* %dst.0.0.04, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.0.0.03, align 4
  store i32 %1, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>.184"(i12* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i12* %src.0.0.03 to i16*
  %2 = load i16, i16* %1
  %3 = trunc i16 %2 to i12
  store i12 %3, i12* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_DelayAndSum_hw(i12*, i32*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i12* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="6", i32* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="8", i32* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="10", i32* noalias nocapture readonly align 512 "unpacked"="11.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="12", i16* noalias nocapture align 512 "unpacked"="13.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="14", i16* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="16", i16* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="18", i16* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="20", i16* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="22", i16* noalias nocapture align 512 "unpacked"="23.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="24", i16* noalias nocapture align 512 "unpacked"="25.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="26", i16* noalias nocapture align 512 "unpacked"="27.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="28", i16* noalias nocapture align 512 "unpacked"="29.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="30", i16* noalias nocapture align 512 "unpacked"="31.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %12, i16* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14, i16* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16, i16* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18, i16* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20, i16* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, i16* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24, i16* align 512 %25)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26, i16* align 512 %27)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28, i16* align 512 %29)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %30, i16* align 512 %31)
  ret void
}

define void @DelayAndSum_hw_stub_wrapper(i12*, i32*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*) #7 {
entry:
  %16 = alloca %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"
  %17 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %18 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %19 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %20 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %21 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %22 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %23 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %24 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %25 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %26 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %27 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %28 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %29 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %30 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %31 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  call void @copy_out(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %16, i12* %0, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %17, i32* %1, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %18, i32* %2, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %19, i32* %3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %20, i32* %4, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %21, i32* %5, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, i16* %6, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %23, i16* %7, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24, i16* %8, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %25, i16* %9, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26, i16* %10, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %27, i16* %11, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28, i16* %12, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %29, i16* %13, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %30, i16* %14, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %31, i16* %15)
  call void @DelayAndSum_hw_stub(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %16, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %17, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %18, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %19, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %20, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %21, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %23, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %25, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %27, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %29, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %30, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %31)
  call void @copy_in(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %16, i12* %0, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %17, i32* %1, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %18, i32* %2, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %19, i32* %3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %20, i32* %4, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %21, i32* %5, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, i16* %6, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %23, i16* %7, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24, i16* %8, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %25, i16* %9, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26, i16* %10, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %27, i16* %11, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28, i16* %12, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %29, i16* %13, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %30, i16* %14, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %31, i16* %15)
  ret void
}

declare void @DelayAndSum_hw_stub(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="16" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
