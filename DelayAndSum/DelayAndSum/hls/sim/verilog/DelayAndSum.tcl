
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $coutputgroup]
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/out_imag_TLAST -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/out_imag_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/out_imag_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/out_imag_TDATA -into $return_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/out_real_TLAST -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/out_real_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/out_real_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/out_real_TDATA -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(axis) -into $cinputgroup]
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in4_imag_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in4_imag_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in4_imag_TDATA -into $return_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in4_real_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in4_real_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in4_real_TDATA -into $return_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in3_imag_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in3_imag_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in3_imag_TDATA -into $return_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in3_real_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in3_real_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in3_real_TDATA -into $return_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in2_imag_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in2_imag_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in2_imag_TDATA -into $return_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in2_real_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in2_real_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in2_real_TDATA -into $return_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in1_imag_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in1_imag_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in1_imag_TDATA -into $return_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in1_real_TREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in1_real_TVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/in1_real_TDATA -into $return_group -radix hex
set phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group [add_wave_group phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size(axi_slave) -into $cinputgroup]
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_BRESP -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_BREADY -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_BVALID -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_RRESP -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_RDATA -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_RREADY -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_RVALID -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_ARREADY -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_ARVALID -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_ARADDR -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_WSTRB -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_WDATA -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_WREADY -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_WVALID -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_AWREADY -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_AWVALID -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_AWADDR -into $phi__fc__xpos1__xpos2__xpos3__xpos4__axis_packet_size_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/ap_clk -into $clockgroup
save_wave_config DelayAndSum.wcfg
run all

