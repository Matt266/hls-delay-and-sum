
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
set axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group [add_wave_group axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4(axi_slave) -into $cinputgroup]
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_BRESP -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_BREADY -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_BVALID -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_RRESP -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_RDATA -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_RREADY -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_RVALID -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_ARREADY -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_ARVALID -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_ARADDR -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_WSTRB -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_WDATA -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_WREADY -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_WVALID -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_AWREADY -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_AWVALID -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -color #ffff00 -radix hex
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/s_axi_control_AWADDR -into $axis_packet_size__phi__fc__xpos1__xpos2__xpos3__xpos4_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_DelayAndSum_top/AESL_inst_DelayAndSum/ap_clk -into $clockgroup
save_wave_config DelayAndSum.wcfg
run all

