; ModuleID = 'C:/Users/matt/OneDrive/Dokumente/__Master/Vivado/Vitis_HLS/DelayAndSum/DelayAndSum/DelayAndSum/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<8, 3, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<8, 3, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }
%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }
%"struct.ap_uint<26>" = type { %"struct.ap_int_base<26, false>" }
%"struct.ap_int_base<26, false>" = type { %"struct.ssdm_int<26, false>" }
%"struct.ssdm_int<26, false>" = type { i26 }
%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>" = type { %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 1, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 1, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>" = type { %"struct.hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>" }
%"struct.hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>" = type { %"struct.ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>", %"struct.ssdm_int<8, true>", %"struct.ssdm_int<8, true>", %"struct.ssdm_int<8, true>", %"struct.ap_uint<1>", %"struct.ssdm_int<8, true>", %"struct.ssdm_int<8, true>" }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline willreturn
define void @apatb_DelayAndSum_ir(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %phi, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %fc, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %xpos1, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %xpos2, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %xpos3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly %xpos4, %"struct.ap_uint<26>"* noalias nocapture nonnull readonly %axis_packet_size, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in1_real, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in1_imag, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in2_real, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in2_imag, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in3_real, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in3_imag, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in4_real, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(2) %in4_imag, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nonnull dereferenceable(8) %out_real, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nonnull dereferenceable(8) %out_imag) local_unnamed_addr #1 {
entry:
  %phi_copy = alloca i8, align 512
  %fc_copy = alloca i32, align 512
  %xpos1_copy = alloca i32, align 512
  %xpos2_copy = alloca i32, align 512
  %xpos3_copy = alloca i32, align 512
  %xpos4_copy = alloca i32, align 512
  %axis_packet_size_copy = alloca i26, align 512
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
  %out_real_copy.data = alloca i16, align 512
  %out_real_copy.last = alloca i1, align 512
  %out_imag_copy.data = alloca i16, align 512
  %out_imag_copy.last = alloca i1, align 512
  call fastcc void @copy_in(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* nonnull %phi, i8* nonnull align 512 %phi_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %fc, i32* nonnull align 512 %fc_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %xpos1, i32* nonnull align 512 %xpos1_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %xpos2, i32* nonnull align 512 %xpos2_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %xpos3, i32* nonnull align 512 %xpos3_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* nonnull %xpos4, i32* nonnull align 512 %xpos4_copy, %"struct.ap_uint<26>"* nonnull %axis_packet_size, i26* nonnull align 512 %axis_packet_size_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in1_real, i16* nonnull align 512 %in1_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in1_imag, i16* nonnull align 512 %in1_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in2_real, i16* nonnull align 512 %in2_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in2_imag, i16* nonnull align 512 %in2_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in3_real, i16* nonnull align 512 %in3_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in3_imag, i16* nonnull align 512 %in3_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in4_real, i16* nonnull align 512 %in4_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %in4_imag, i16* nonnull align 512 %in4_imag_copy, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* nonnull %out_real, i16* nonnull align 512 %out_real_copy.data, i1* nonnull align 512 %out_real_copy.last, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* nonnull %out_imag, i16* nonnull align 512 %out_imag_copy.data, i1* nonnull align 512 %out_imag_copy.last)
  call void @apatb_DelayAndSum_hw(i8* %phi_copy, i32* %fc_copy, i32* %xpos1_copy, i32* %xpos2_copy, i32* %xpos3_copy, i32* %xpos4_copy, i26* %axis_packet_size_copy, i16* %in1_real_copy, i16* %in1_imag_copy, i16* %in2_real_copy, i16* %in2_imag_copy, i16* %in3_real_copy, i16* %in3_imag_copy, i16* %in4_real_copy, i16* %in4_imag_copy, i16* %out_real_copy.data, i1* %out_real_copy.last, i16* %out_imag_copy.data, i1* %out_imag_copy.last)
  call void @copy_back(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* %phi, i8* %phi_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %fc, i32* %fc_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %xpos1, i32* %xpos1_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %xpos2, i32* %xpos2_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %xpos3, i32* %xpos3_copy, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %xpos4, i32* %xpos4_copy, %"struct.ap_uint<26>"* %axis_packet_size, i26* %axis_packet_size_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in1_real, i16* %in1_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in1_imag, i16* %in1_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in2_real, i16* %in2_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in2_imag, i16* %in2_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in3_real, i16* %in3_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in3_imag, i16* %in3_imag_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in4_real, i16* %in4_real_copy, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %in4_imag, i16* %in4_imag_copy, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %out_real, i16* %out_real_copy.data, i1* %out_real_copy.last, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %out_imag, i16* %out_imag_copy.data, i1* %out_imag_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="0", i8* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="4", i32* noalias nocapture align 512 "unpacked"="5.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="8", i32* noalias nocapture align 512 "unpacked"="9.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="10", i32* noalias nocapture align 512 "unpacked"="11.0", %"struct.ap_uint<26>"* noalias readonly "unpacked"="12", i26* noalias nocapture align 512 "unpacked"="13.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="14", i16* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="16", i16* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="18", i16* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="20", i16* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="22", i16* noalias nocapture align 512 "unpacked"="23.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="24", i16* noalias nocapture align 512 "unpacked"="25.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="26", i16* noalias nocapture align 512 "unpacked"="27.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="28", i16* noalias nocapture align 512 "unpacked"="29.0", %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias "unpacked"="30", i16* noalias align 512 "unpacked"="31.0" %_V_data_V, i1* noalias align 512 "unpacked"="31.1" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias "unpacked"="32", i16* noalias align 512 "unpacked"="33.0" %_V_data_V1, i1* noalias align 512 "unpacked"="33.1" %_V_last_V2) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"(i8* align 512 %1, %"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.163"(i32* align 512 %3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.163"(i32* align 512 %5, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.163"(i32* align 512 %7, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.163"(i32* align 512 %9, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.163"(i32* align 512 %11, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<26>"(i26* align 512 %13, %"struct.ap_uint<26>"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %15, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %17, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %19, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %21, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %23, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %25, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %27, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>.127"(i16* align 512 %29, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"(i16* align 512 %_V_data_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %30)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"(i16* align 512 %_V_data_V1, i1* align 512 %_V_last_V2, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %31)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"(i8* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src.0.0.03, align 1
  store i8 %1, i8* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<26>"(i26* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<26>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<26>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<26>", %"struct.ap_uint<26>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i26* %src.0.0.03 to i32*
  %2 = load i32, i32* %1
  %3 = trunc i32 %2 to i26
  store i26 %3, i26* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i8* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="6", i32* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="8", i32* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="10", i32* noalias nocapture readonly align 512 "unpacked"="11.0", %"struct.ap_uint<26>"* noalias "unpacked"="12", i26* noalias nocapture readonly align 512 "unpacked"="13.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="14", i16* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="16", i16* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="18", i16* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="20", i16* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="22", i16* noalias nocapture align 512 "unpacked"="23.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="24", i16* noalias nocapture align 512 "unpacked"="25.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="26", i16* noalias nocapture align 512 "unpacked"="27.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="28", i16* noalias nocapture align 512 "unpacked"="29.0", %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias "unpacked"="30", i16* noalias align 512 "unpacked"="31.0" %_V_data_V, i1* noalias align 512 "unpacked"="31.1" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias "unpacked"="32", i16* noalias align 512 "unpacked"="33.0" %_V_data_V1, i1* noalias align 512 "unpacked"="33.1" %_V_last_V2) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>.185"(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* %0, i8* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %6, i32* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %8, i32* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %10, i32* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<26>.156"(%"struct.ap_uint<26>"* %12, i26* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14, i16* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16, i16* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18, i16* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20, i16* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, i16* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24, i16* align 512 %25)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26, i16* align 512 %27)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28, i16* align 512 %29)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>.200"(%"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %30, i16* align 512 %_V_data_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>.200"(%"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %31, i16* align 512 %_V_data_V1, i1* align 512 %_V_last_V2)
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<26>.156"(%"struct.ap_uint<26>"* noalias "unpacked"="0" %dst, i26* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_uint<26>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<26>", %"struct.ap_uint<26>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = bitcast i26* %src to i32*
  %2 = load i32, i32* %1
  %3 = trunc i32 %2 to i26
  store i26 %3, i26* %dst.0.0.04, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>.163"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1" %src) unnamed_addr #3 {
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>.185"(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0" %dst, i8* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i8, i8* %src, align 512
  store i8 %1, i8* %dst.0.0.04, align 1
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"(i16* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i1* noalias align 512 "unpacked"="0.1" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>.195"(i16* align 512 %dst_V_data_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>.195"(i16* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i1* noalias nocapture align 512 "unpacked"="0.1" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nocapture) unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"
  %2 = alloca i16
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %0 to i8*
  %5 = call i1 @fpga_fifo_not_empty_8(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %1 to i8*
  %7 = bitcast %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_8(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>", %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>" %8, 0, 0, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>" %8, 0, 4, 0, 0, 0
  store i16 %.fca.0.0.0.0.0.extract, i16* %2
  %9 = bitcast i16* %2 to i8*
  %10 = bitcast i16* %_V_data_V to i8*
  call void @fpga_fifo_push_2(i8* %9, i8* %10)
  store i1 %.fca.0.4.0.0.0.extract, i1* %3
  %11 = bitcast i1* %3 to i8*
  %12 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %11, i8* %12)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>.200"(%"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias %dst, i16* noalias align 512 "unpacked"="1.0" %src_V_data_V, i1* noalias align 512 "unpacked"="1.1" %src_V_last_V) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>.203"(%"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* nonnull %dst, i16* align 512 %src_V_data_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>.203"(%"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nocapture, i16* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i1* noalias nocapture align 512 "unpacked"="1.1" %_V_last_V) unnamed_addr #6 {
entry:
  %1 = alloca i16
  %2 = alloca i1
  %3 = alloca %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i16* %_V_data_V to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i16* %1 to i8*
  %7 = bitcast i16* %_V_data_V to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile i16, i16* %1
  %9 = bitcast i1* %2 to i8*
  %10 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %9, i8* %10)
  %11 = bitcast i1* %2 to i8*
  %12 = load i8, i8* %11
  %13 = trunc i8 %12 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>" undef, i16 %8, 0, 0, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>" %.fca.0.0.0.0.0.insert, i1 %13, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %3
  %14 = bitcast %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %3 to i8*
  %15 = bitcast %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_DelayAndSum_hw(i8*, i32*, i32*, i32*, i32*, i32*, i26*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i1*, i16*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i8* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="6", i32* noalias nocapture readonly align 512 "unpacked"="7.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="8", i32* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="10", i32* noalias nocapture readonly align 512 "unpacked"="11.0", %"struct.ap_uint<26>"* noalias "unpacked"="12", i26* noalias nocapture readonly align 512 "unpacked"="13.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="14", i16* noalias nocapture align 512 "unpacked"="15.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="16", i16* noalias nocapture align 512 "unpacked"="17.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="18", i16* noalias nocapture align 512 "unpacked"="19.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="20", i16* noalias nocapture align 512 "unpacked"="21.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="22", i16* noalias nocapture align 512 "unpacked"="23.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="24", i16* noalias nocapture align 512 "unpacked"="25.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="26", i16* noalias nocapture align 512 "unpacked"="27.0", %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias "unpacked"="28", i16* noalias nocapture align 512 "unpacked"="29.0", %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias "unpacked"="30", i16* noalias align 512 "unpacked"="31.0" %_V_data_V, i1* noalias align 512 "unpacked"="31.1" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias "unpacked"="32", i16* noalias align 512 "unpacked"="33.0" %_V_data_V1, i1* noalias align 512 "unpacked"="33.1" %_V_last_V2) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %14, i16* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %16, i16* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %18, i16* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %20, i16* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %22, i16* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %24, i16* align 512 %25)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26, i16* align 512 %27)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28, i16* align 512 %29)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>.200"(%"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %30, i16* align 512 %_V_data_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>.200"(%"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %31, i16* align 512 %_V_data_V1, i1* align 512 %_V_last_V2)
  ret void
}

define void @DelayAndSum_hw_stub_wrapper(i8*, i32*, i32*, i32*, i32*, i32*, i26*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i1*, i16*, i1*) #7 {
entry:
  %19 = alloca %"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"
  %20 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %21 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %22 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %23 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %24 = alloca %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"
  %25 = alloca %"struct.ap_uint<26>"
  %26 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %27 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %28 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %29 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %30 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %31 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %32 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %33 = alloca %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"
  %34 = alloca %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"
  %35 = alloca %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"
  call void @copy_out(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* %19, i8* %0, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %20, i32* %1, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %21, i32* %2, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %22, i32* %3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %23, i32* %4, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %24, i32* %5, %"struct.ap_uint<26>"* %25, i26* %6, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26, i16* %7, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %27, i16* %8, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28, i16* %9, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %29, i16* %10, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %30, i16* %11, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %31, i16* %12, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %32, i16* %13, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %33, i16* %14, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %34, i16* %15, i1* %16, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %35, i16* %17, i1* %18)
  call void @DelayAndSum_hw_stub(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* %19, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %20, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %21, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %22, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %23, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %24, %"struct.ap_uint<26>"* %25, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %27, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %29, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %30, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %31, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %32, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %33, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %34, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %35)
  call void @copy_in(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* %19, i8* %0, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %20, i32* %1, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %21, i32* %2, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %22, i32* %3, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %23, i32* %4, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* %24, i32* %5, %"struct.ap_uint<26>"* %25, i26* %6, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %26, i16* %7, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %27, i16* %8, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %28, i16* %9, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %29, i16* %10, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %30, i16* %11, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %31, i16* %12, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %32, i16* %13, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* %33, i16* %14, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %34, i16* %15, i1* %16, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* %35, i16* %17, i1* %18)
  ret void
}

declare void @DelayAndSum_hw_stub(%"struct.ap_fixed<8, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_uint<26>"* noalias nocapture nonnull readonly, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_fixed<16, 1, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '\5Cx11', true>, 0>"* noalias nonnull)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
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
!8 = distinct !{!8, !6}
