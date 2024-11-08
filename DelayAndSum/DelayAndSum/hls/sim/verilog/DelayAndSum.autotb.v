// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      DelayAndSum
`define AUTOTB_DUT_INST AESL_inst_DelayAndSum
`define AUTOTB_TOP      apatb_DelayAndSum_top
`define AUTOTB_LAT_RESULT_FILE "DelayAndSum.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "DelayAndSum.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_DelayAndSum_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.50

`define AESL_DEPTH_phi 1
`define AESL_DEPTH_fc 1
`define AESL_DEPTH_xpos1 1
`define AESL_DEPTH_xpos2 1
`define AESL_DEPTH_xpos3 1
`define AESL_DEPTH_xpos4 1
`define AESL_DEPTH_in1_real 1
`define AESL_DEPTH_in1_imag 1
`define AESL_DEPTH_in2_real 1
`define AESL_DEPTH_in2_imag 1
`define AESL_DEPTH_in3_real 1
`define AESL_DEPTH_in3_imag 1
`define AESL_DEPTH_in4_real 1
`define AESL_DEPTH_in4_imag 1
`define AESL_DEPTH_out_real 1
`define AESL_DEPTH_out_imag 1
`define AUTOTB_TVIN_in1_real  "../tv/cdatafile/c.DelayAndSum.autotvin_in1_real.dat"
`define AUTOTB_TVIN_in1_imag  "../tv/cdatafile/c.DelayAndSum.autotvin_in1_imag.dat"
`define AUTOTB_TVIN_in2_real  "../tv/cdatafile/c.DelayAndSum.autotvin_in2_real.dat"
`define AUTOTB_TVIN_in2_imag  "../tv/cdatafile/c.DelayAndSum.autotvin_in2_imag.dat"
`define AUTOTB_TVIN_in3_real  "../tv/cdatafile/c.DelayAndSum.autotvin_in3_real.dat"
`define AUTOTB_TVIN_in3_imag  "../tv/cdatafile/c.DelayAndSum.autotvin_in3_imag.dat"
`define AUTOTB_TVIN_in4_real  "../tv/cdatafile/c.DelayAndSum.autotvin_in4_real.dat"
`define AUTOTB_TVIN_in4_imag  "../tv/cdatafile/c.DelayAndSum.autotvin_in4_imag.dat"
`define AUTOTB_TVIN_in1_real_out_wrapc  "../tv/rtldatafile/rtl.DelayAndSum.autotvin_in1_real.dat"
`define AUTOTB_TVIN_in1_imag_out_wrapc  "../tv/rtldatafile/rtl.DelayAndSum.autotvin_in1_imag.dat"
`define AUTOTB_TVIN_in2_real_out_wrapc  "../tv/rtldatafile/rtl.DelayAndSum.autotvin_in2_real.dat"
`define AUTOTB_TVIN_in2_imag_out_wrapc  "../tv/rtldatafile/rtl.DelayAndSum.autotvin_in2_imag.dat"
`define AUTOTB_TVIN_in3_real_out_wrapc  "../tv/rtldatafile/rtl.DelayAndSum.autotvin_in3_real.dat"
`define AUTOTB_TVIN_in3_imag_out_wrapc  "../tv/rtldatafile/rtl.DelayAndSum.autotvin_in3_imag.dat"
`define AUTOTB_TVIN_in4_real_out_wrapc  "../tv/rtldatafile/rtl.DelayAndSum.autotvin_in4_real.dat"
`define AUTOTB_TVIN_in4_imag_out_wrapc  "../tv/rtldatafile/rtl.DelayAndSum.autotvin_in4_imag.dat"
`define AUTOTB_TVOUT_out_real  "../tv/cdatafile/c.DelayAndSum.autotvout_out_real.dat"
`define AUTOTB_TVOUT_out_imag  "../tv/cdatafile/c.DelayAndSum.autotvout_out_imag.dat"
`define AUTOTB_TVOUT_out_real_out_wrapc  "../tv/rtldatafile/rtl.DelayAndSum.autotvout_out_real.dat"
`define AUTOTB_TVOUT_out_imag_out_wrapc  "../tv/rtldatafile/rtl.DelayAndSum.autotvout_out_imag.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 10;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 1;
parameter LENGTH_fc = 1;
parameter LENGTH_in1_imag = 1;
parameter LENGTH_in1_real = 1;
parameter LENGTH_in2_imag = 1;
parameter LENGTH_in2_real = 1;
parameter LENGTH_in3_imag = 1;
parameter LENGTH_in3_real = 1;
parameter LENGTH_in4_imag = 1;
parameter LENGTH_in4_real = 1;
parameter LENGTH_out_imag = 1;
parameter LENGTH_out_real = 1;
parameter LENGTH_phi = 1;
parameter LENGTH_xpos1 = 1;
parameter LENGTH_xpos2 = 1;
parameter LENGTH_xpos3 = 1;
parameter LENGTH_xpos4 = 1;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [5 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [5 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire  in1_real_TVALID;
wire  in1_imag_TVALID;
wire  in2_real_TVALID;
wire  in2_imag_TVALID;
wire  in3_real_TVALID;
wire  in3_imag_TVALID;
wire  in4_real_TVALID;
wire  in4_imag_TVALID;
wire  out_real_TREADY;
wire  out_imag_TREADY;
wire [15 : 0] in1_real_TDATA;
wire  in1_real_TREADY;
wire [15 : 0] in1_imag_TDATA;
wire  in1_imag_TREADY;
wire [15 : 0] in2_real_TDATA;
wire  in2_real_TREADY;
wire [15 : 0] in2_imag_TDATA;
wire  in2_imag_TREADY;
wire [15 : 0] in3_real_TDATA;
wire  in3_real_TREADY;
wire [15 : 0] in3_imag_TDATA;
wire  in3_imag_TREADY;
wire [15 : 0] in4_real_TDATA;
wire  in4_real_TREADY;
wire [15 : 0] in4_imag_TDATA;
wire  in4_imag_TREADY;
wire [15 : 0] out_real_TDATA;
wire  out_real_TVALID;
wire [15 : 0] out_imag_TDATA;
wire  out_imag_TVALID;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .in1_real_TVALID(in1_real_TVALID),
    .in1_imag_TVALID(in1_imag_TVALID),
    .in2_real_TVALID(in2_real_TVALID),
    .in2_imag_TVALID(in2_imag_TVALID),
    .in3_real_TVALID(in3_real_TVALID),
    .in3_imag_TVALID(in3_imag_TVALID),
    .in4_real_TVALID(in4_real_TVALID),
    .in4_imag_TVALID(in4_imag_TVALID),
    .out_real_TREADY(out_real_TREADY),
    .out_imag_TREADY(out_imag_TREADY),
    .in1_real_TDATA(in1_real_TDATA),
    .in1_real_TREADY(in1_real_TREADY),
    .in1_imag_TDATA(in1_imag_TDATA),
    .in1_imag_TREADY(in1_imag_TREADY),
    .in2_real_TDATA(in2_real_TDATA),
    .in2_real_TREADY(in2_real_TREADY),
    .in2_imag_TDATA(in2_imag_TDATA),
    .in2_imag_TREADY(in2_imag_TREADY),
    .in3_real_TDATA(in3_real_TDATA),
    .in3_real_TREADY(in3_real_TREADY),
    .in3_imag_TDATA(in3_imag_TDATA),
    .in3_imag_TREADY(in3_imag_TREADY),
    .in4_real_TDATA(in4_real_TDATA),
    .in4_real_TREADY(in4_real_TREADY),
    .in4_imag_TDATA(in4_imag_TDATA),
    .in4_imag_TREADY(in4_imag_TREADY),
    .out_real_TDATA(out_real_TDATA),
    .out_real_TVALID(out_real_TVALID),
    .out_imag_TDATA(out_imag_TDATA),
    .out_imag_TVALID(out_imag_TVALID));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_slave_start | AESL_slave_start_lock;
assign AESL_start = start;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status ;
  assign AESL_slave_write_start_finish = AESL_slave_write_start_in;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_slave_done =  1 ;
  assign AESL_done = (ap_done_lock | ap_done) & AESL_slave_done & slave_done_status;
  assign AESL_slave_output_done = ap_done;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_start_lock <= 0;
    end
    else begin
        if (AESL_ready == 1) begin
            AESL_slave_start_lock <= 0;
        end
        else if (AESL_slave_start == 1) begin
            AESL_slave_start_lock <= 1;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        ap_done_lock <= 0;
    end
    else begin
        if (AESL_done == 1) begin
            ap_done_lock <= 0;
        end
        else if (ap_done == 1) begin
            ap_done_lock <= 1;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_done == 1 ) begin
        slave_done_status <= 1;
    end
end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset === 0) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
















reg [31:0] ap_c_n_tvin_trans_num_in1_real;

reg in1_real_ready_reg; // for self-sync

wire in1_real_ready;
wire in1_real_done;
wire [31:0] in1_real_transaction;
wire axi_s_in1_real_TVALID;
wire axi_s_in1_real_TREADY;

AESL_axi_s_in1_real AESL_AXI_S_in1_real(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in1_real_TDATA(in1_real_TDATA),
    .TRAN_in1_real_TVALID(axi_s_in1_real_TVALID),
    .TRAN_in1_real_TREADY(axi_s_in1_real_TREADY),
    .ready(in1_real_ready),
    .done(in1_real_done),
    .transaction(in1_real_transaction));

assign in1_real_ready = in1_real_ready_reg | ready_initial;
assign in1_real_done = 0;

assign in1_real_TVALID = axi_s_in1_real_TVALID;

assign axi_s_in1_real_TREADY = in1_real_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_in1_imag;

reg in1_imag_ready_reg; // for self-sync

wire in1_imag_ready;
wire in1_imag_done;
wire [31:0] in1_imag_transaction;
wire axi_s_in1_imag_TVALID;
wire axi_s_in1_imag_TREADY;

AESL_axi_s_in1_imag AESL_AXI_S_in1_imag(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in1_imag_TDATA(in1_imag_TDATA),
    .TRAN_in1_imag_TVALID(axi_s_in1_imag_TVALID),
    .TRAN_in1_imag_TREADY(axi_s_in1_imag_TREADY),
    .ready(in1_imag_ready),
    .done(in1_imag_done),
    .transaction(in1_imag_transaction));

assign in1_imag_ready = in1_imag_ready_reg | ready_initial;
assign in1_imag_done = 0;

assign in1_imag_TVALID = axi_s_in1_imag_TVALID;

assign axi_s_in1_imag_TREADY = in1_imag_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_in2_real;

reg in2_real_ready_reg; // for self-sync

wire in2_real_ready;
wire in2_real_done;
wire [31:0] in2_real_transaction;
wire axi_s_in2_real_TVALID;
wire axi_s_in2_real_TREADY;

AESL_axi_s_in2_real AESL_AXI_S_in2_real(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in2_real_TDATA(in2_real_TDATA),
    .TRAN_in2_real_TVALID(axi_s_in2_real_TVALID),
    .TRAN_in2_real_TREADY(axi_s_in2_real_TREADY),
    .ready(in2_real_ready),
    .done(in2_real_done),
    .transaction(in2_real_transaction));

assign in2_real_ready = in2_real_ready_reg | ready_initial;
assign in2_real_done = 0;

assign in2_real_TVALID = axi_s_in2_real_TVALID;

assign axi_s_in2_real_TREADY = in2_real_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_in2_imag;

reg in2_imag_ready_reg; // for self-sync

wire in2_imag_ready;
wire in2_imag_done;
wire [31:0] in2_imag_transaction;
wire axi_s_in2_imag_TVALID;
wire axi_s_in2_imag_TREADY;

AESL_axi_s_in2_imag AESL_AXI_S_in2_imag(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in2_imag_TDATA(in2_imag_TDATA),
    .TRAN_in2_imag_TVALID(axi_s_in2_imag_TVALID),
    .TRAN_in2_imag_TREADY(axi_s_in2_imag_TREADY),
    .ready(in2_imag_ready),
    .done(in2_imag_done),
    .transaction(in2_imag_transaction));

assign in2_imag_ready = in2_imag_ready_reg | ready_initial;
assign in2_imag_done = 0;

assign in2_imag_TVALID = axi_s_in2_imag_TVALID;

assign axi_s_in2_imag_TREADY = in2_imag_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_in3_real;

reg in3_real_ready_reg; // for self-sync

wire in3_real_ready;
wire in3_real_done;
wire [31:0] in3_real_transaction;
wire axi_s_in3_real_TVALID;
wire axi_s_in3_real_TREADY;

AESL_axi_s_in3_real AESL_AXI_S_in3_real(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in3_real_TDATA(in3_real_TDATA),
    .TRAN_in3_real_TVALID(axi_s_in3_real_TVALID),
    .TRAN_in3_real_TREADY(axi_s_in3_real_TREADY),
    .ready(in3_real_ready),
    .done(in3_real_done),
    .transaction(in3_real_transaction));

assign in3_real_ready = in3_real_ready_reg | ready_initial;
assign in3_real_done = 0;

assign in3_real_TVALID = axi_s_in3_real_TVALID;

assign axi_s_in3_real_TREADY = in3_real_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_in3_imag;

reg in3_imag_ready_reg; // for self-sync

wire in3_imag_ready;
wire in3_imag_done;
wire [31:0] in3_imag_transaction;
wire axi_s_in3_imag_TVALID;
wire axi_s_in3_imag_TREADY;

AESL_axi_s_in3_imag AESL_AXI_S_in3_imag(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in3_imag_TDATA(in3_imag_TDATA),
    .TRAN_in3_imag_TVALID(axi_s_in3_imag_TVALID),
    .TRAN_in3_imag_TREADY(axi_s_in3_imag_TREADY),
    .ready(in3_imag_ready),
    .done(in3_imag_done),
    .transaction(in3_imag_transaction));

assign in3_imag_ready = in3_imag_ready_reg | ready_initial;
assign in3_imag_done = 0;

assign in3_imag_TVALID = axi_s_in3_imag_TVALID;

assign axi_s_in3_imag_TREADY = in3_imag_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_in4_real;

reg in4_real_ready_reg; // for self-sync

wire in4_real_ready;
wire in4_real_done;
wire [31:0] in4_real_transaction;
wire axi_s_in4_real_TVALID;
wire axi_s_in4_real_TREADY;

AESL_axi_s_in4_real AESL_AXI_S_in4_real(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in4_real_TDATA(in4_real_TDATA),
    .TRAN_in4_real_TVALID(axi_s_in4_real_TVALID),
    .TRAN_in4_real_TREADY(axi_s_in4_real_TREADY),
    .ready(in4_real_ready),
    .done(in4_real_done),
    .transaction(in4_real_transaction));

assign in4_real_ready = in4_real_ready_reg | ready_initial;
assign in4_real_done = 0;

assign in4_real_TVALID = axi_s_in4_real_TVALID;

assign axi_s_in4_real_TREADY = in4_real_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_in4_imag;

reg in4_imag_ready_reg; // for self-sync

wire in4_imag_ready;
wire in4_imag_done;
wire [31:0] in4_imag_transaction;
wire axi_s_in4_imag_TVALID;
wire axi_s_in4_imag_TREADY;

AESL_axi_s_in4_imag AESL_AXI_S_in4_imag(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_in4_imag_TDATA(in4_imag_TDATA),
    .TRAN_in4_imag_TVALID(axi_s_in4_imag_TVALID),
    .TRAN_in4_imag_TREADY(axi_s_in4_imag_TREADY),
    .ready(in4_imag_ready),
    .done(in4_imag_done),
    .transaction(in4_imag_transaction));

assign in4_imag_ready = in4_imag_ready_reg | ready_initial;
assign in4_imag_done = 0;

assign in4_imag_TVALID = axi_s_in4_imag_TVALID;

assign axi_s_in4_imag_TREADY = in4_imag_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_out_real;

reg out_real_ready_reg; // for self-sync

wire out_real_ready;
wire out_real_done;
wire [31:0] out_real_transaction;
wire axi_s_out_real_TVALID;
wire axi_s_out_real_TREADY;

AESL_axi_s_out_real AESL_AXI_S_out_real(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_out_real_TDATA(out_real_TDATA),
    .TRAN_out_real_TVALID(axi_s_out_real_TVALID),
    .TRAN_out_real_TREADY(axi_s_out_real_TREADY),
    .ready(out_real_ready),
    .done(out_real_done),
    .transaction(out_real_transaction));

assign out_real_ready = 0;
assign out_real_done = AESL_done;

assign axi_s_out_real_TVALID = out_real_TVALID;

reg reg_out_real_TREADY;
initial begin : gen_reg_out_real_TREADY_process
    integer proc_rand;
    reg_out_real_TREADY = axi_s_out_real_TREADY;
    while(1)
    begin
        @(axi_s_out_real_TREADY);
        reg_out_real_TREADY = axi_s_out_real_TREADY;
    end
end


assign out_real_TREADY = reg_out_real_TREADY;
reg [31:0] ap_c_n_tvin_trans_num_out_imag;

reg out_imag_ready_reg; // for self-sync

wire out_imag_ready;
wire out_imag_done;
wire [31:0] out_imag_transaction;
wire axi_s_out_imag_TVALID;
wire axi_s_out_imag_TREADY;

AESL_axi_s_out_imag AESL_AXI_S_out_imag(
    .clk(AESL_clock),
    .reset(AESL_reset),
    .TRAN_out_imag_TDATA(out_imag_TDATA),
    .TRAN_out_imag_TVALID(axi_s_out_imag_TVALID),
    .TRAN_out_imag_TREADY(axi_s_out_imag_TREADY),
    .ready(out_imag_ready),
    .done(out_imag_done),
    .transaction(out_imag_transaction));

assign out_imag_ready = 0;
assign out_imag_done = AESL_done;

assign axi_s_out_imag_TVALID = out_imag_TVALID;

reg reg_out_imag_TREADY;
initial begin : gen_reg_out_imag_TREADY_process
    integer proc_rand;
    reg_out_imag_TREADY = axi_s_out_imag_TREADY;
    while(1)
    begin
        @(axi_s_out_imag_TREADY);
        reg_out_imag_TREADY = axi_s_out_imag_TREADY;
    end
end


assign out_imag_TREADY = reg_out_imag_TREADY;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_in (AESL_slave_output_done),
    .TRAN_control_idle_in (AESL_idle),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_in1_real;
reg [31:0] size_in1_real;
reg [31:0] size_in1_real_backup;
reg end_in1_imag;
reg [31:0] size_in1_imag;
reg [31:0] size_in1_imag_backup;
reg end_in2_real;
reg [31:0] size_in2_real;
reg [31:0] size_in2_real_backup;
reg end_in2_imag;
reg [31:0] size_in2_imag;
reg [31:0] size_in2_imag_backup;
reg end_in3_real;
reg [31:0] size_in3_real;
reg [31:0] size_in3_real_backup;
reg end_in3_imag;
reg [31:0] size_in3_imag;
reg [31:0] size_in3_imag_backup;
reg end_in4_real;
reg [31:0] size_in4_real;
reg [31:0] size_in4_real_backup;
reg end_in4_imag;
reg [31:0] size_in4_imag;
reg [31:0] size_in4_imag_backup;
reg end_out_real;
reg [31:0] size_out_real;
reg [31:0] size_out_real_backup;
reg end_out_imag;
reg [31:0] size_out_imag;
reg [31:0] size_out_imag_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
    
    initial begin : proc_gen_axis_internal_ready_in1_real
        in1_real_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in1_real or in1_real_transaction);
            if (ap_c_n_tvin_trans_num_in1_real > in1_real_transaction) begin
                in1_real_ready_reg = 1;
            end else begin
                in1_real_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_in1_imag
        in1_imag_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in1_imag or in1_imag_transaction);
            if (ap_c_n_tvin_trans_num_in1_imag > in1_imag_transaction) begin
                in1_imag_ready_reg = 1;
            end else begin
                in1_imag_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_in2_real
        in2_real_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in2_real or in2_real_transaction);
            if (ap_c_n_tvin_trans_num_in2_real > in2_real_transaction) begin
                in2_real_ready_reg = 1;
            end else begin
                in2_real_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_in2_imag
        in2_imag_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in2_imag or in2_imag_transaction);
            if (ap_c_n_tvin_trans_num_in2_imag > in2_imag_transaction) begin
                in2_imag_ready_reg = 1;
            end else begin
                in2_imag_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_in3_real
        in3_real_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in3_real or in3_real_transaction);
            if (ap_c_n_tvin_trans_num_in3_real > in3_real_transaction) begin
                in3_real_ready_reg = 1;
            end else begin
                in3_real_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_in3_imag
        in3_imag_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in3_imag or in3_imag_transaction);
            if (ap_c_n_tvin_trans_num_in3_imag > in3_imag_transaction) begin
                in3_imag_ready_reg = 1;
            end else begin
                in3_imag_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_in4_real
        in4_real_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in4_real or in4_real_transaction);
            if (ap_c_n_tvin_trans_num_in4_real > in4_real_transaction) begin
                in4_real_ready_reg = 1;
            end else begin
                in4_real_ready_reg = 0;
            end
        end
    end
    
    initial begin : proc_gen_axis_internal_ready_in4_imag
        in4_imag_ready_reg = 0;
        @ (posedge ready_initial);
        forever begin
            @ (ap_c_n_tvin_trans_num_in4_imag or in4_imag_transaction);
            if (ap_c_n_tvin_trans_num_in4_imag > in4_imag_transaction) begin
                in4_imag_ready_reg = 1;
            end else begin
                in4_imag_ready_reg = 0;
            end
        end
    end
    
    `define STREAM_SIZE_IN_in1_real "../tv/stream_size/stream_size_in_in1_real.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in1_real
        integer fp_in1_real;
        reg [127:0] token_in1_real;
        integer ret;
        
        ap_c_n_tvin_trans_num_in1_real = 0;
        end_in1_real = 0;
        wait (AESL_reset === 1);
        
        fp_in1_real = $fopen(`STREAM_SIZE_IN_in1_real, "r");
        if(fp_in1_real == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in1_real);
            $finish;
        end
        read_token(fp_in1_real, token_in1_real); // should be [[[runtime]]]
        if (token_in1_real != "[[[runtime]]]") begin
            $display("ERROR: token_in1_real != \"[[[runtime]]]\"");
            $finish;
        end
        size_in1_real = 0;
        size_in1_real_backup = 0;
        while (size_in1_real == 0 && end_in1_real == 0) begin
            ap_c_n_tvin_trans_num_in1_real = ap_c_n_tvin_trans_num_in1_real + 1;
            read_token(fp_in1_real, token_in1_real); // should be [[transaction]] or [[[/runtime]]]
            if (token_in1_real == "[[transaction]]") begin
                read_token(fp_in1_real, token_in1_real); // should be transaction number
                read_token(fp_in1_real, token_in1_real); // should be size for hls::stream
                ret = $sscanf(token_in1_real, "%d", size_in1_real);
                if (size_in1_real > 0) begin
                    size_in1_real_backup = size_in1_real;
                end
                read_token(fp_in1_real, token_in1_real); // should be [[/transaction]]
            end else if (token_in1_real == "[[[/runtime]]]") begin
                $fclose(fp_in1_real);
                end_in1_real = 1;
            end else begin
                $display("ERROR: unknown token_in1_real");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in1_real == 0) begin
                if ((in1_real_TREADY & in1_real_TVALID) == 1) begin
                    if (size_in1_real > 0) begin
                        size_in1_real = size_in1_real - 1;
                        while (size_in1_real == 0 && end_in1_real == 0) begin
                            ap_c_n_tvin_trans_num_in1_real = ap_c_n_tvin_trans_num_in1_real + 1;
                            read_token(fp_in1_real, token_in1_real); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in1_real == "[[transaction]]") begin
                                read_token(fp_in1_real, token_in1_real); // should be transaction number
                                read_token(fp_in1_real, token_in1_real); // should be size for hls::stream
                                ret = $sscanf(token_in1_real, "%d", size_in1_real);
                                if (size_in1_real > 0) begin
                                    size_in1_real_backup = size_in1_real;
                                end
                                read_token(fp_in1_real, token_in1_real); // should be [[/transaction]]
                            end else if (token_in1_real == "[[[/runtime]]]") begin
                                size_in1_real = size_in1_real_backup;
                                $fclose(fp_in1_real);
                                end_in1_real = 1;
                            end else begin
                                $display("ERROR: unknown token_in1_real");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in1_real_TREADY & in1_real_TVALID) == 1) begin
                    if (size_in1_real > 0) begin
                        size_in1_real = size_in1_real - 1;
                        if (size_in1_real == 0) begin
                            ap_c_n_tvin_trans_num_in1_real = ap_c_n_tvin_trans_num_in1_real + 1;
                            size_in1_real = size_in1_real_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_in1_imag "../tv/stream_size/stream_size_in_in1_imag.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in1_imag
        integer fp_in1_imag;
        reg [127:0] token_in1_imag;
        integer ret;
        
        ap_c_n_tvin_trans_num_in1_imag = 0;
        end_in1_imag = 0;
        wait (AESL_reset === 1);
        
        fp_in1_imag = $fopen(`STREAM_SIZE_IN_in1_imag, "r");
        if(fp_in1_imag == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in1_imag);
            $finish;
        end
        read_token(fp_in1_imag, token_in1_imag); // should be [[[runtime]]]
        if (token_in1_imag != "[[[runtime]]]") begin
            $display("ERROR: token_in1_imag != \"[[[runtime]]]\"");
            $finish;
        end
        size_in1_imag = 0;
        size_in1_imag_backup = 0;
        while (size_in1_imag == 0 && end_in1_imag == 0) begin
            ap_c_n_tvin_trans_num_in1_imag = ap_c_n_tvin_trans_num_in1_imag + 1;
            read_token(fp_in1_imag, token_in1_imag); // should be [[transaction]] or [[[/runtime]]]
            if (token_in1_imag == "[[transaction]]") begin
                read_token(fp_in1_imag, token_in1_imag); // should be transaction number
                read_token(fp_in1_imag, token_in1_imag); // should be size for hls::stream
                ret = $sscanf(token_in1_imag, "%d", size_in1_imag);
                if (size_in1_imag > 0) begin
                    size_in1_imag_backup = size_in1_imag;
                end
                read_token(fp_in1_imag, token_in1_imag); // should be [[/transaction]]
            end else if (token_in1_imag == "[[[/runtime]]]") begin
                $fclose(fp_in1_imag);
                end_in1_imag = 1;
            end else begin
                $display("ERROR: unknown token_in1_imag");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in1_imag == 0) begin
                if ((in1_imag_TREADY & in1_imag_TVALID) == 1) begin
                    if (size_in1_imag > 0) begin
                        size_in1_imag = size_in1_imag - 1;
                        while (size_in1_imag == 0 && end_in1_imag == 0) begin
                            ap_c_n_tvin_trans_num_in1_imag = ap_c_n_tvin_trans_num_in1_imag + 1;
                            read_token(fp_in1_imag, token_in1_imag); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in1_imag == "[[transaction]]") begin
                                read_token(fp_in1_imag, token_in1_imag); // should be transaction number
                                read_token(fp_in1_imag, token_in1_imag); // should be size for hls::stream
                                ret = $sscanf(token_in1_imag, "%d", size_in1_imag);
                                if (size_in1_imag > 0) begin
                                    size_in1_imag_backup = size_in1_imag;
                                end
                                read_token(fp_in1_imag, token_in1_imag); // should be [[/transaction]]
                            end else if (token_in1_imag == "[[[/runtime]]]") begin
                                size_in1_imag = size_in1_imag_backup;
                                $fclose(fp_in1_imag);
                                end_in1_imag = 1;
                            end else begin
                                $display("ERROR: unknown token_in1_imag");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in1_imag_TREADY & in1_imag_TVALID) == 1) begin
                    if (size_in1_imag > 0) begin
                        size_in1_imag = size_in1_imag - 1;
                        if (size_in1_imag == 0) begin
                            ap_c_n_tvin_trans_num_in1_imag = ap_c_n_tvin_trans_num_in1_imag + 1;
                            size_in1_imag = size_in1_imag_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_in2_real "../tv/stream_size/stream_size_in_in2_real.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in2_real
        integer fp_in2_real;
        reg [127:0] token_in2_real;
        integer ret;
        
        ap_c_n_tvin_trans_num_in2_real = 0;
        end_in2_real = 0;
        wait (AESL_reset === 1);
        
        fp_in2_real = $fopen(`STREAM_SIZE_IN_in2_real, "r");
        if(fp_in2_real == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in2_real);
            $finish;
        end
        read_token(fp_in2_real, token_in2_real); // should be [[[runtime]]]
        if (token_in2_real != "[[[runtime]]]") begin
            $display("ERROR: token_in2_real != \"[[[runtime]]]\"");
            $finish;
        end
        size_in2_real = 0;
        size_in2_real_backup = 0;
        while (size_in2_real == 0 && end_in2_real == 0) begin
            ap_c_n_tvin_trans_num_in2_real = ap_c_n_tvin_trans_num_in2_real + 1;
            read_token(fp_in2_real, token_in2_real); // should be [[transaction]] or [[[/runtime]]]
            if (token_in2_real == "[[transaction]]") begin
                read_token(fp_in2_real, token_in2_real); // should be transaction number
                read_token(fp_in2_real, token_in2_real); // should be size for hls::stream
                ret = $sscanf(token_in2_real, "%d", size_in2_real);
                if (size_in2_real > 0) begin
                    size_in2_real_backup = size_in2_real;
                end
                read_token(fp_in2_real, token_in2_real); // should be [[/transaction]]
            end else if (token_in2_real == "[[[/runtime]]]") begin
                $fclose(fp_in2_real);
                end_in2_real = 1;
            end else begin
                $display("ERROR: unknown token_in2_real");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in2_real == 0) begin
                if ((in2_real_TREADY & in2_real_TVALID) == 1) begin
                    if (size_in2_real > 0) begin
                        size_in2_real = size_in2_real - 1;
                        while (size_in2_real == 0 && end_in2_real == 0) begin
                            ap_c_n_tvin_trans_num_in2_real = ap_c_n_tvin_trans_num_in2_real + 1;
                            read_token(fp_in2_real, token_in2_real); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in2_real == "[[transaction]]") begin
                                read_token(fp_in2_real, token_in2_real); // should be transaction number
                                read_token(fp_in2_real, token_in2_real); // should be size for hls::stream
                                ret = $sscanf(token_in2_real, "%d", size_in2_real);
                                if (size_in2_real > 0) begin
                                    size_in2_real_backup = size_in2_real;
                                end
                                read_token(fp_in2_real, token_in2_real); // should be [[/transaction]]
                            end else if (token_in2_real == "[[[/runtime]]]") begin
                                size_in2_real = size_in2_real_backup;
                                $fclose(fp_in2_real);
                                end_in2_real = 1;
                            end else begin
                                $display("ERROR: unknown token_in2_real");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in2_real_TREADY & in2_real_TVALID) == 1) begin
                    if (size_in2_real > 0) begin
                        size_in2_real = size_in2_real - 1;
                        if (size_in2_real == 0) begin
                            ap_c_n_tvin_trans_num_in2_real = ap_c_n_tvin_trans_num_in2_real + 1;
                            size_in2_real = size_in2_real_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_in2_imag "../tv/stream_size/stream_size_in_in2_imag.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in2_imag
        integer fp_in2_imag;
        reg [127:0] token_in2_imag;
        integer ret;
        
        ap_c_n_tvin_trans_num_in2_imag = 0;
        end_in2_imag = 0;
        wait (AESL_reset === 1);
        
        fp_in2_imag = $fopen(`STREAM_SIZE_IN_in2_imag, "r");
        if(fp_in2_imag == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in2_imag);
            $finish;
        end
        read_token(fp_in2_imag, token_in2_imag); // should be [[[runtime]]]
        if (token_in2_imag != "[[[runtime]]]") begin
            $display("ERROR: token_in2_imag != \"[[[runtime]]]\"");
            $finish;
        end
        size_in2_imag = 0;
        size_in2_imag_backup = 0;
        while (size_in2_imag == 0 && end_in2_imag == 0) begin
            ap_c_n_tvin_trans_num_in2_imag = ap_c_n_tvin_trans_num_in2_imag + 1;
            read_token(fp_in2_imag, token_in2_imag); // should be [[transaction]] or [[[/runtime]]]
            if (token_in2_imag == "[[transaction]]") begin
                read_token(fp_in2_imag, token_in2_imag); // should be transaction number
                read_token(fp_in2_imag, token_in2_imag); // should be size for hls::stream
                ret = $sscanf(token_in2_imag, "%d", size_in2_imag);
                if (size_in2_imag > 0) begin
                    size_in2_imag_backup = size_in2_imag;
                end
                read_token(fp_in2_imag, token_in2_imag); // should be [[/transaction]]
            end else if (token_in2_imag == "[[[/runtime]]]") begin
                $fclose(fp_in2_imag);
                end_in2_imag = 1;
            end else begin
                $display("ERROR: unknown token_in2_imag");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in2_imag == 0) begin
                if ((in2_imag_TREADY & in2_imag_TVALID) == 1) begin
                    if (size_in2_imag > 0) begin
                        size_in2_imag = size_in2_imag - 1;
                        while (size_in2_imag == 0 && end_in2_imag == 0) begin
                            ap_c_n_tvin_trans_num_in2_imag = ap_c_n_tvin_trans_num_in2_imag + 1;
                            read_token(fp_in2_imag, token_in2_imag); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in2_imag == "[[transaction]]") begin
                                read_token(fp_in2_imag, token_in2_imag); // should be transaction number
                                read_token(fp_in2_imag, token_in2_imag); // should be size for hls::stream
                                ret = $sscanf(token_in2_imag, "%d", size_in2_imag);
                                if (size_in2_imag > 0) begin
                                    size_in2_imag_backup = size_in2_imag;
                                end
                                read_token(fp_in2_imag, token_in2_imag); // should be [[/transaction]]
                            end else if (token_in2_imag == "[[[/runtime]]]") begin
                                size_in2_imag = size_in2_imag_backup;
                                $fclose(fp_in2_imag);
                                end_in2_imag = 1;
                            end else begin
                                $display("ERROR: unknown token_in2_imag");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in2_imag_TREADY & in2_imag_TVALID) == 1) begin
                    if (size_in2_imag > 0) begin
                        size_in2_imag = size_in2_imag - 1;
                        if (size_in2_imag == 0) begin
                            ap_c_n_tvin_trans_num_in2_imag = ap_c_n_tvin_trans_num_in2_imag + 1;
                            size_in2_imag = size_in2_imag_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_in3_real "../tv/stream_size/stream_size_in_in3_real.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in3_real
        integer fp_in3_real;
        reg [127:0] token_in3_real;
        integer ret;
        
        ap_c_n_tvin_trans_num_in3_real = 0;
        end_in3_real = 0;
        wait (AESL_reset === 1);
        
        fp_in3_real = $fopen(`STREAM_SIZE_IN_in3_real, "r");
        if(fp_in3_real == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in3_real);
            $finish;
        end
        read_token(fp_in3_real, token_in3_real); // should be [[[runtime]]]
        if (token_in3_real != "[[[runtime]]]") begin
            $display("ERROR: token_in3_real != \"[[[runtime]]]\"");
            $finish;
        end
        size_in3_real = 0;
        size_in3_real_backup = 0;
        while (size_in3_real == 0 && end_in3_real == 0) begin
            ap_c_n_tvin_trans_num_in3_real = ap_c_n_tvin_trans_num_in3_real + 1;
            read_token(fp_in3_real, token_in3_real); // should be [[transaction]] or [[[/runtime]]]
            if (token_in3_real == "[[transaction]]") begin
                read_token(fp_in3_real, token_in3_real); // should be transaction number
                read_token(fp_in3_real, token_in3_real); // should be size for hls::stream
                ret = $sscanf(token_in3_real, "%d", size_in3_real);
                if (size_in3_real > 0) begin
                    size_in3_real_backup = size_in3_real;
                end
                read_token(fp_in3_real, token_in3_real); // should be [[/transaction]]
            end else if (token_in3_real == "[[[/runtime]]]") begin
                $fclose(fp_in3_real);
                end_in3_real = 1;
            end else begin
                $display("ERROR: unknown token_in3_real");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in3_real == 0) begin
                if ((in3_real_TREADY & in3_real_TVALID) == 1) begin
                    if (size_in3_real > 0) begin
                        size_in3_real = size_in3_real - 1;
                        while (size_in3_real == 0 && end_in3_real == 0) begin
                            ap_c_n_tvin_trans_num_in3_real = ap_c_n_tvin_trans_num_in3_real + 1;
                            read_token(fp_in3_real, token_in3_real); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in3_real == "[[transaction]]") begin
                                read_token(fp_in3_real, token_in3_real); // should be transaction number
                                read_token(fp_in3_real, token_in3_real); // should be size for hls::stream
                                ret = $sscanf(token_in3_real, "%d", size_in3_real);
                                if (size_in3_real > 0) begin
                                    size_in3_real_backup = size_in3_real;
                                end
                                read_token(fp_in3_real, token_in3_real); // should be [[/transaction]]
                            end else if (token_in3_real == "[[[/runtime]]]") begin
                                size_in3_real = size_in3_real_backup;
                                $fclose(fp_in3_real);
                                end_in3_real = 1;
                            end else begin
                                $display("ERROR: unknown token_in3_real");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in3_real_TREADY & in3_real_TVALID) == 1) begin
                    if (size_in3_real > 0) begin
                        size_in3_real = size_in3_real - 1;
                        if (size_in3_real == 0) begin
                            ap_c_n_tvin_trans_num_in3_real = ap_c_n_tvin_trans_num_in3_real + 1;
                            size_in3_real = size_in3_real_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_in3_imag "../tv/stream_size/stream_size_in_in3_imag.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in3_imag
        integer fp_in3_imag;
        reg [127:0] token_in3_imag;
        integer ret;
        
        ap_c_n_tvin_trans_num_in3_imag = 0;
        end_in3_imag = 0;
        wait (AESL_reset === 1);
        
        fp_in3_imag = $fopen(`STREAM_SIZE_IN_in3_imag, "r");
        if(fp_in3_imag == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in3_imag);
            $finish;
        end
        read_token(fp_in3_imag, token_in3_imag); // should be [[[runtime]]]
        if (token_in3_imag != "[[[runtime]]]") begin
            $display("ERROR: token_in3_imag != \"[[[runtime]]]\"");
            $finish;
        end
        size_in3_imag = 0;
        size_in3_imag_backup = 0;
        while (size_in3_imag == 0 && end_in3_imag == 0) begin
            ap_c_n_tvin_trans_num_in3_imag = ap_c_n_tvin_trans_num_in3_imag + 1;
            read_token(fp_in3_imag, token_in3_imag); // should be [[transaction]] or [[[/runtime]]]
            if (token_in3_imag == "[[transaction]]") begin
                read_token(fp_in3_imag, token_in3_imag); // should be transaction number
                read_token(fp_in3_imag, token_in3_imag); // should be size for hls::stream
                ret = $sscanf(token_in3_imag, "%d", size_in3_imag);
                if (size_in3_imag > 0) begin
                    size_in3_imag_backup = size_in3_imag;
                end
                read_token(fp_in3_imag, token_in3_imag); // should be [[/transaction]]
            end else if (token_in3_imag == "[[[/runtime]]]") begin
                $fclose(fp_in3_imag);
                end_in3_imag = 1;
            end else begin
                $display("ERROR: unknown token_in3_imag");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in3_imag == 0) begin
                if ((in3_imag_TREADY & in3_imag_TVALID) == 1) begin
                    if (size_in3_imag > 0) begin
                        size_in3_imag = size_in3_imag - 1;
                        while (size_in3_imag == 0 && end_in3_imag == 0) begin
                            ap_c_n_tvin_trans_num_in3_imag = ap_c_n_tvin_trans_num_in3_imag + 1;
                            read_token(fp_in3_imag, token_in3_imag); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in3_imag == "[[transaction]]") begin
                                read_token(fp_in3_imag, token_in3_imag); // should be transaction number
                                read_token(fp_in3_imag, token_in3_imag); // should be size for hls::stream
                                ret = $sscanf(token_in3_imag, "%d", size_in3_imag);
                                if (size_in3_imag > 0) begin
                                    size_in3_imag_backup = size_in3_imag;
                                end
                                read_token(fp_in3_imag, token_in3_imag); // should be [[/transaction]]
                            end else if (token_in3_imag == "[[[/runtime]]]") begin
                                size_in3_imag = size_in3_imag_backup;
                                $fclose(fp_in3_imag);
                                end_in3_imag = 1;
                            end else begin
                                $display("ERROR: unknown token_in3_imag");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in3_imag_TREADY & in3_imag_TVALID) == 1) begin
                    if (size_in3_imag > 0) begin
                        size_in3_imag = size_in3_imag - 1;
                        if (size_in3_imag == 0) begin
                            ap_c_n_tvin_trans_num_in3_imag = ap_c_n_tvin_trans_num_in3_imag + 1;
                            size_in3_imag = size_in3_imag_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_in4_real "../tv/stream_size/stream_size_in_in4_real.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in4_real
        integer fp_in4_real;
        reg [127:0] token_in4_real;
        integer ret;
        
        ap_c_n_tvin_trans_num_in4_real = 0;
        end_in4_real = 0;
        wait (AESL_reset === 1);
        
        fp_in4_real = $fopen(`STREAM_SIZE_IN_in4_real, "r");
        if(fp_in4_real == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in4_real);
            $finish;
        end
        read_token(fp_in4_real, token_in4_real); // should be [[[runtime]]]
        if (token_in4_real != "[[[runtime]]]") begin
            $display("ERROR: token_in4_real != \"[[[runtime]]]\"");
            $finish;
        end
        size_in4_real = 0;
        size_in4_real_backup = 0;
        while (size_in4_real == 0 && end_in4_real == 0) begin
            ap_c_n_tvin_trans_num_in4_real = ap_c_n_tvin_trans_num_in4_real + 1;
            read_token(fp_in4_real, token_in4_real); // should be [[transaction]] or [[[/runtime]]]
            if (token_in4_real == "[[transaction]]") begin
                read_token(fp_in4_real, token_in4_real); // should be transaction number
                read_token(fp_in4_real, token_in4_real); // should be size for hls::stream
                ret = $sscanf(token_in4_real, "%d", size_in4_real);
                if (size_in4_real > 0) begin
                    size_in4_real_backup = size_in4_real;
                end
                read_token(fp_in4_real, token_in4_real); // should be [[/transaction]]
            end else if (token_in4_real == "[[[/runtime]]]") begin
                $fclose(fp_in4_real);
                end_in4_real = 1;
            end else begin
                $display("ERROR: unknown token_in4_real");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in4_real == 0) begin
                if ((in4_real_TREADY & in4_real_TVALID) == 1) begin
                    if (size_in4_real > 0) begin
                        size_in4_real = size_in4_real - 1;
                        while (size_in4_real == 0 && end_in4_real == 0) begin
                            ap_c_n_tvin_trans_num_in4_real = ap_c_n_tvin_trans_num_in4_real + 1;
                            read_token(fp_in4_real, token_in4_real); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in4_real == "[[transaction]]") begin
                                read_token(fp_in4_real, token_in4_real); // should be transaction number
                                read_token(fp_in4_real, token_in4_real); // should be size for hls::stream
                                ret = $sscanf(token_in4_real, "%d", size_in4_real);
                                if (size_in4_real > 0) begin
                                    size_in4_real_backup = size_in4_real;
                                end
                                read_token(fp_in4_real, token_in4_real); // should be [[/transaction]]
                            end else if (token_in4_real == "[[[/runtime]]]") begin
                                size_in4_real = size_in4_real_backup;
                                $fclose(fp_in4_real);
                                end_in4_real = 1;
                            end else begin
                                $display("ERROR: unknown token_in4_real");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in4_real_TREADY & in4_real_TVALID) == 1) begin
                    if (size_in4_real > 0) begin
                        size_in4_real = size_in4_real - 1;
                        if (size_in4_real == 0) begin
                            ap_c_n_tvin_trans_num_in4_real = ap_c_n_tvin_trans_num_in4_real + 1;
                            size_in4_real = size_in4_real_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_in4_imag "../tv/stream_size/stream_size_in_in4_imag.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_in4_imag
        integer fp_in4_imag;
        reg [127:0] token_in4_imag;
        integer ret;
        
        ap_c_n_tvin_trans_num_in4_imag = 0;
        end_in4_imag = 0;
        wait (AESL_reset === 1);
        
        fp_in4_imag = $fopen(`STREAM_SIZE_IN_in4_imag, "r");
        if(fp_in4_imag == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_in4_imag);
            $finish;
        end
        read_token(fp_in4_imag, token_in4_imag); // should be [[[runtime]]]
        if (token_in4_imag != "[[[runtime]]]") begin
            $display("ERROR: token_in4_imag != \"[[[runtime]]]\"");
            $finish;
        end
        size_in4_imag = 0;
        size_in4_imag_backup = 0;
        while (size_in4_imag == 0 && end_in4_imag == 0) begin
            ap_c_n_tvin_trans_num_in4_imag = ap_c_n_tvin_trans_num_in4_imag + 1;
            read_token(fp_in4_imag, token_in4_imag); // should be [[transaction]] or [[[/runtime]]]
            if (token_in4_imag == "[[transaction]]") begin
                read_token(fp_in4_imag, token_in4_imag); // should be transaction number
                read_token(fp_in4_imag, token_in4_imag); // should be size for hls::stream
                ret = $sscanf(token_in4_imag, "%d", size_in4_imag);
                if (size_in4_imag > 0) begin
                    size_in4_imag_backup = size_in4_imag;
                end
                read_token(fp_in4_imag, token_in4_imag); // should be [[/transaction]]
            end else if (token_in4_imag == "[[[/runtime]]]") begin
                $fclose(fp_in4_imag);
                end_in4_imag = 1;
            end else begin
                $display("ERROR: unknown token_in4_imag");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_in4_imag == 0) begin
                if ((in4_imag_TREADY & in4_imag_TVALID) == 1) begin
                    if (size_in4_imag > 0) begin
                        size_in4_imag = size_in4_imag - 1;
                        while (size_in4_imag == 0 && end_in4_imag == 0) begin
                            ap_c_n_tvin_trans_num_in4_imag = ap_c_n_tvin_trans_num_in4_imag + 1;
                            read_token(fp_in4_imag, token_in4_imag); // should be [[transaction]] or [[[/runtime]]]
                            if (token_in4_imag == "[[transaction]]") begin
                                read_token(fp_in4_imag, token_in4_imag); // should be transaction number
                                read_token(fp_in4_imag, token_in4_imag); // should be size for hls::stream
                                ret = $sscanf(token_in4_imag, "%d", size_in4_imag);
                                if (size_in4_imag > 0) begin
                                    size_in4_imag_backup = size_in4_imag;
                                end
                                read_token(fp_in4_imag, token_in4_imag); // should be [[/transaction]]
                            end else if (token_in4_imag == "[[[/runtime]]]") begin
                                size_in4_imag = size_in4_imag_backup;
                                $fclose(fp_in4_imag);
                                end_in4_imag = 1;
                            end else begin
                                $display("ERROR: unknown token_in4_imag");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if ((in4_imag_TREADY & in4_imag_TVALID) == 1) begin
                    if (size_in4_imag > 0) begin
                        size_in4_imag = size_in4_imag - 1;
                        if (size_in4_imag == 0) begin
                            ap_c_n_tvin_trans_num_in4_imag = ap_c_n_tvin_trans_num_in4_imag + 1;
                            size_in4_imag = size_in4_imag_backup;
                        end
                    end
                end
            end
        end
    end
    
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_out_real;

initial begin : dump_tvout_runtime_sign_out_real
    integer fp;
    dump_tvout_finish_out_real = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_real_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_real_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_real_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_real_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_real = 1;
end


reg dump_tvout_finish_out_imag;

initial begin : dump_tvout_runtime_sign_out_imag
    integer fp;
    dump_tvout_finish_out_imag = 0;
    fp = $fopen(`AUTOTB_TVOUT_out_imag_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_imag_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_out_imag_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_out_imag_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_out_imag = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_kernel_monitor_top kernel_monitor_top(
    .kernel_monitor_reset(~AESL_reset),
    .kernel_monitor_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
