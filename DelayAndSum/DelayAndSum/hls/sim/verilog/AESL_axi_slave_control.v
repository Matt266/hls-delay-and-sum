// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_in,
    TRAN_control_ready_in,
    TRAN_control_done_in,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_axis_packet_size "../tv/cdatafile/c.DelayAndSum.autotvin_axis_packet_size.dat"
`define TV_IN_phi "../tv/cdatafile/c.DelayAndSum.autotvin_phi.dat"
`define TV_IN_fc "../tv/cdatafile/c.DelayAndSum.autotvin_fc.dat"
`define TV_IN_xpos1 "../tv/cdatafile/c.DelayAndSum.autotvin_xpos1.dat"
`define TV_IN_xpos2 "../tv/cdatafile/c.DelayAndSum.autotvin_xpos2.dat"
`define TV_IN_xpos3 "../tv/cdatafile/c.DelayAndSum.autotvin_xpos3.dat"
`define TV_IN_xpos4 "../tv/cdatafile/c.DelayAndSum.autotvin_xpos4.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter axis_packet_size_DEPTH = 1;
reg [31 : 0] axis_packet_size_OPERATE_DEPTH = 0;
parameter axis_packet_size_c_bitwidth = 26;
parameter phi_DEPTH = 1;
reg [31 : 0] phi_OPERATE_DEPTH = 0;
parameter phi_c_bitwidth = 8;
parameter fc_DEPTH = 1;
reg [31 : 0] fc_OPERATE_DEPTH = 0;
parameter fc_c_bitwidth = 32;
parameter xpos1_DEPTH = 1;
reg [31 : 0] xpos1_OPERATE_DEPTH = 0;
parameter xpos1_c_bitwidth = 32;
parameter xpos2_DEPTH = 1;
reg [31 : 0] xpos2_OPERATE_DEPTH = 0;
parameter xpos2_c_bitwidth = 32;
parameter xpos3_DEPTH = 1;
reg [31 : 0] xpos3_OPERATE_DEPTH = 0;
parameter xpos3_c_bitwidth = 32;
parameter xpos4_DEPTH = 1;
reg [31 : 0] xpos4_OPERATE_DEPTH = 0;
parameter xpos4_c_bitwidth = 32;
parameter axis_packet_size_data_in_addr = 16;
parameter phi_data_in_addr = 24;
parameter fc_data_in_addr = 32;
parameter xpos1_data_in_addr = 40;
parameter xpos2_data_in_addr = 48;
parameter xpos3_data_in_addr = 56;
parameter xpos4_data_in_addr = 64;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
input     TRAN_control_done_in;
input     TRAN_control_ready_in;
input     TRAN_control_idle_in;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_axis_packet_size [axis_packet_size_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_axis_packet_size [ (axis_packet_size_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * axis_packet_size_DEPTH -1 : 0] = '{default : 'hz};
reg axis_packet_size_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_phi [phi_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_phi [ (phi_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * phi_DEPTH -1 : 0] = '{default : 'hz};
reg phi_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_fc [fc_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_fc [ (fc_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * fc_DEPTH -1 : 0] = '{default : 'hz};
reg fc_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_xpos1 [xpos1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_xpos1 [ (xpos1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * xpos1_DEPTH -1 : 0] = '{default : 'hz};
reg xpos1_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_xpos2 [xpos2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_xpos2 [ (xpos2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * xpos2_DEPTH -1 : 0] = '{default : 'hz};
reg xpos2_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_xpos3 [xpos3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_xpos3 [ (xpos3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * xpos3_DEPTH -1 : 0] = '{default : 'hz};
reg xpos3_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_xpos4 [xpos4_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_xpos4 [ (xpos4_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * xpos4_DEPTH -1 : 0] = '{default : 'hz};
reg xpos4_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
//write axis_packet_size reg
reg [31 : 0] write_axis_packet_size_count = 0;
reg [31 : 0] axis_packet_size_diff_count = 0;
reg write_axis_packet_size_run_flag = 0;
reg write_one_axis_packet_size_data_done = 0;
//write phi reg
reg [31 : 0] write_phi_count = 0;
reg [31 : 0] phi_diff_count = 0;
reg write_phi_run_flag = 0;
reg write_one_phi_data_done = 0;
//write fc reg
reg [31 : 0] write_fc_count = 0;
reg [31 : 0] fc_diff_count = 0;
reg write_fc_run_flag = 0;
reg write_one_fc_data_done = 0;
//write xpos1 reg
reg [31 : 0] write_xpos1_count = 0;
reg [31 : 0] xpos1_diff_count = 0;
reg write_xpos1_run_flag = 0;
reg write_one_xpos1_data_done = 0;
//write xpos2 reg
reg [31 : 0] write_xpos2_count = 0;
reg [31 : 0] xpos2_diff_count = 0;
reg write_xpos2_run_flag = 0;
reg write_one_xpos2_data_done = 0;
//write xpos3 reg
reg [31 : 0] write_xpos3_count = 0;
reg [31 : 0] xpos3_diff_count = 0;
reg write_xpos3_run_flag = 0;
reg write_one_xpos3_data_done = 0;
//write xpos4 reg
reg [31 : 0] write_xpos4_count = 0;
reg [31 : 0] xpos4_diff_count = 0;
reg write_xpos4_run_flag = 0;
reg write_one_xpos4_data_done = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_data_finish = 1 & axis_packet_size_write_data_finish & phi_write_data_finish & fc_write_data_finish & xpos1_write_data_finish & xpos2_write_data_finish & xpos3_write_data_finish & xpos4_write_data_finish;
always @(TRAN_control_done_in) 
begin
    AESL_done_index_reg <= TRAN_control_done_in;
end
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

function integer ceil_align_to_pow_of_two;
input integer a;
begin
    ceil_align_to_pow_of_two = $pow(2,$clog2(a));
end
endfunction

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_axis_packet_size_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (axis_packet_size_c_bitwidth, axis_packet_size_DEPTH, axis_packet_size_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_axis_packet_size_run_flag <= 1; 
        end
        else if ((write_one_axis_packet_size_data_done == 1 && write_axis_packet_size_count == axis_packet_size_diff_count - 1) || axis_packet_size_diff_count == 0) begin
            write_axis_packet_size_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_axis_packet_size_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_axis_packet_size_count = 0;
        end
        if (write_one_axis_packet_size_data_done === 1) begin
            write_axis_packet_size_count = write_axis_packet_size_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        axis_packet_size_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            axis_packet_size_write_data_finish <= 0;
        end
        if (write_axis_packet_size_run_flag == 1 && write_axis_packet_size_count == axis_packet_size_diff_count) begin
            axis_packet_size_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_axis_packet_size
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] axis_packet_size_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = axis_packet_size_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        axis_packet_size_diff_count = 0;

        for (k = 0; k < axis_packet_size_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (axis_packet_size_c_bitwidth < 32) begin
                    axis_packet_size_data_tmp_reg = mem_axis_packet_size[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < axis_packet_size_c_bitwidth) begin
                            axis_packet_size_data_tmp_reg[j] = mem_axis_packet_size[k][i*32 + j];
                        end
                        else begin
                            axis_packet_size_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_axis_packet_size[k * four_byte_num  + i]!==axis_packet_size_data_tmp_reg) begin
                axis_packet_size_diff_count = axis_packet_size_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_axis_packet_size
    integer write_axis_packet_size_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_axis_packet_size_count;
    reg [31 : 0] axis_packet_size_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = axis_packet_size_c_bitwidth;
    process_num = 0;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_0_finish <= 0;

        for (check_axis_packet_size_count = 0; check_axis_packet_size_count < axis_packet_size_OPERATE_DEPTH; check_axis_packet_size_count = check_axis_packet_size_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_axis_packet_size_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write axis_packet_size data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (axis_packet_size_c_bitwidth < 32) begin
                        axis_packet_size_data_tmp_reg = mem_axis_packet_size[check_axis_packet_size_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < axis_packet_size_c_bitwidth) begin
                                axis_packet_size_data_tmp_reg[j] = mem_axis_packet_size[check_axis_packet_size_count][i*32 + j];
                            end
                            else begin
                                axis_packet_size_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_axis_packet_size[check_axis_packet_size_count * four_byte_num  + i]!==axis_packet_size_data_tmp_reg) begin
                        image_mem_axis_packet_size[check_axis_packet_size_count * four_byte_num + i]=axis_packet_size_data_tmp_reg;
                        write (axis_packet_size_data_in_addr + check_axis_packet_size_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, axis_packet_size_data_tmp_reg, write_axis_packet_size_resp);
                        write_one_axis_packet_size_data_done <= 1;
                        @(posedge clk);
                        write_one_axis_packet_size_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_0_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_phi_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (phi_c_bitwidth, phi_DEPTH, phi_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_phi_run_flag <= 1; 
        end
        else if ((write_one_phi_data_done == 1 && write_phi_count == phi_diff_count - 1) || phi_diff_count == 0) begin
            write_phi_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_phi_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_phi_count = 0;
        end
        if (write_one_phi_data_done === 1) begin
            write_phi_count = write_phi_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        phi_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            phi_write_data_finish <= 0;
        end
        if (write_phi_run_flag == 1 && write_phi_count == phi_diff_count) begin
            phi_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_phi
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] phi_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = phi_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        phi_diff_count = 0;

        for (k = 0; k < phi_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (phi_c_bitwidth < 32) begin
                    phi_data_tmp_reg = mem_phi[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < phi_c_bitwidth) begin
                            phi_data_tmp_reg[j] = mem_phi[k][i*32 + j];
                        end
                        else begin
                            phi_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_phi[k * four_byte_num  + i]!==phi_data_tmp_reg) begin
                phi_diff_count = phi_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_phi
    integer write_phi_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_phi_count;
    reg [31 : 0] phi_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = phi_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_1_finish <= 0;

        for (check_phi_count = 0; check_phi_count < phi_OPERATE_DEPTH; check_phi_count = check_phi_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_phi_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write phi data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (phi_c_bitwidth < 32) begin
                        phi_data_tmp_reg = mem_phi[check_phi_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < phi_c_bitwidth) begin
                                phi_data_tmp_reg[j] = mem_phi[check_phi_count][i*32 + j];
                            end
                            else begin
                                phi_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_phi[check_phi_count * four_byte_num  + i]!==phi_data_tmp_reg) begin
                        image_mem_phi[check_phi_count * four_byte_num + i]=phi_data_tmp_reg;
                        write (phi_data_in_addr + check_phi_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, phi_data_tmp_reg, write_phi_resp);
                        write_one_phi_data_done <= 1;
                        @(posedge clk);
                        write_one_phi_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_1_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_fc_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (fc_c_bitwidth, fc_DEPTH, fc_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_fc_run_flag <= 1; 
        end
        else if ((write_one_fc_data_done == 1 && write_fc_count == fc_diff_count - 1) || fc_diff_count == 0) begin
            write_fc_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_fc_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_fc_count = 0;
        end
        if (write_one_fc_data_done === 1) begin
            write_fc_count = write_fc_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        fc_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            fc_write_data_finish <= 0;
        end
        if (write_fc_run_flag == 1 && write_fc_count == fc_diff_count) begin
            fc_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_fc
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] fc_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = fc_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        fc_diff_count = 0;

        for (k = 0; k < fc_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (fc_c_bitwidth < 32) begin
                    fc_data_tmp_reg = mem_fc[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < fc_c_bitwidth) begin
                            fc_data_tmp_reg[j] = mem_fc[k][i*32 + j];
                        end
                        else begin
                            fc_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_fc[k * four_byte_num  + i]!==fc_data_tmp_reg) begin
                fc_diff_count = fc_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_fc
    integer write_fc_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_fc_count;
    reg [31 : 0] fc_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = fc_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_2_finish <= 0;

        for (check_fc_count = 0; check_fc_count < fc_OPERATE_DEPTH; check_fc_count = check_fc_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_fc_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write fc data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (fc_c_bitwidth < 32) begin
                        fc_data_tmp_reg = mem_fc[check_fc_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < fc_c_bitwidth) begin
                                fc_data_tmp_reg[j] = mem_fc[check_fc_count][i*32 + j];
                            end
                            else begin
                                fc_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_fc[check_fc_count * four_byte_num  + i]!==fc_data_tmp_reg) begin
                        image_mem_fc[check_fc_count * four_byte_num + i]=fc_data_tmp_reg;
                        write (fc_data_in_addr + check_fc_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, fc_data_tmp_reg, write_fc_resp);
                        write_one_fc_data_done <= 1;
                        @(posedge clk);
                        write_one_fc_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_2_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_xpos1_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (xpos1_c_bitwidth, xpos1_DEPTH, xpos1_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_xpos1_run_flag <= 1; 
        end
        else if ((write_one_xpos1_data_done == 1 && write_xpos1_count == xpos1_diff_count - 1) || xpos1_diff_count == 0) begin
            write_xpos1_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_xpos1_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_xpos1_count = 0;
        end
        if (write_one_xpos1_data_done === 1) begin
            write_xpos1_count = write_xpos1_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        xpos1_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            xpos1_write_data_finish <= 0;
        end
        if (write_xpos1_run_flag == 1 && write_xpos1_count == xpos1_diff_count) begin
            xpos1_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_xpos1
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] xpos1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = xpos1_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        xpos1_diff_count = 0;

        for (k = 0; k < xpos1_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (xpos1_c_bitwidth < 32) begin
                    xpos1_data_tmp_reg = mem_xpos1[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < xpos1_c_bitwidth) begin
                            xpos1_data_tmp_reg[j] = mem_xpos1[k][i*32 + j];
                        end
                        else begin
                            xpos1_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_xpos1[k * four_byte_num  + i]!==xpos1_data_tmp_reg) begin
                xpos1_diff_count = xpos1_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_xpos1
    integer write_xpos1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_xpos1_count;
    reg [31 : 0] xpos1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = xpos1_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_3_finish <= 0;

        for (check_xpos1_count = 0; check_xpos1_count < xpos1_OPERATE_DEPTH; check_xpos1_count = check_xpos1_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_xpos1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write xpos1 data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (xpos1_c_bitwidth < 32) begin
                        xpos1_data_tmp_reg = mem_xpos1[check_xpos1_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < xpos1_c_bitwidth) begin
                                xpos1_data_tmp_reg[j] = mem_xpos1[check_xpos1_count][i*32 + j];
                            end
                            else begin
                                xpos1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_xpos1[check_xpos1_count * four_byte_num  + i]!==xpos1_data_tmp_reg) begin
                        image_mem_xpos1[check_xpos1_count * four_byte_num + i]=xpos1_data_tmp_reg;
                        write (xpos1_data_in_addr + check_xpos1_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, xpos1_data_tmp_reg, write_xpos1_resp);
                        write_one_xpos1_data_done <= 1;
                        @(posedge clk);
                        write_one_xpos1_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_3_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_xpos2_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (xpos2_c_bitwidth, xpos2_DEPTH, xpos2_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_xpos2_run_flag <= 1; 
        end
        else if ((write_one_xpos2_data_done == 1 && write_xpos2_count == xpos2_diff_count - 1) || xpos2_diff_count == 0) begin
            write_xpos2_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_xpos2_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_xpos2_count = 0;
        end
        if (write_one_xpos2_data_done === 1) begin
            write_xpos2_count = write_xpos2_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        xpos2_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            xpos2_write_data_finish <= 0;
        end
        if (write_xpos2_run_flag == 1 && write_xpos2_count == xpos2_diff_count) begin
            xpos2_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_xpos2
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] xpos2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = xpos2_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        xpos2_diff_count = 0;

        for (k = 0; k < xpos2_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (xpos2_c_bitwidth < 32) begin
                    xpos2_data_tmp_reg = mem_xpos2[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < xpos2_c_bitwidth) begin
                            xpos2_data_tmp_reg[j] = mem_xpos2[k][i*32 + j];
                        end
                        else begin
                            xpos2_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_xpos2[k * four_byte_num  + i]!==xpos2_data_tmp_reg) begin
                xpos2_diff_count = xpos2_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_xpos2
    integer write_xpos2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_xpos2_count;
    reg [31 : 0] xpos2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = xpos2_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_4_finish <= 0;

        for (check_xpos2_count = 0; check_xpos2_count < xpos2_OPERATE_DEPTH; check_xpos2_count = check_xpos2_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_xpos2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write xpos2 data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (xpos2_c_bitwidth < 32) begin
                        xpos2_data_tmp_reg = mem_xpos2[check_xpos2_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < xpos2_c_bitwidth) begin
                                xpos2_data_tmp_reg[j] = mem_xpos2[check_xpos2_count][i*32 + j];
                            end
                            else begin
                                xpos2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_xpos2[check_xpos2_count * four_byte_num  + i]!==xpos2_data_tmp_reg) begin
                        image_mem_xpos2[check_xpos2_count * four_byte_num + i]=xpos2_data_tmp_reg;
                        write (xpos2_data_in_addr + check_xpos2_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, xpos2_data_tmp_reg, write_xpos2_resp);
                        write_one_xpos2_data_done <= 1;
                        @(posedge clk);
                        write_one_xpos2_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_4_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_xpos3_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (xpos3_c_bitwidth, xpos3_DEPTH, xpos3_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_xpos3_run_flag <= 1; 
        end
        else if ((write_one_xpos3_data_done == 1 && write_xpos3_count == xpos3_diff_count - 1) || xpos3_diff_count == 0) begin
            write_xpos3_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_xpos3_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_xpos3_count = 0;
        end
        if (write_one_xpos3_data_done === 1) begin
            write_xpos3_count = write_xpos3_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        xpos3_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            xpos3_write_data_finish <= 0;
        end
        if (write_xpos3_run_flag == 1 && write_xpos3_count == xpos3_diff_count) begin
            xpos3_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_xpos3
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] xpos3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = xpos3_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        xpos3_diff_count = 0;

        for (k = 0; k < xpos3_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (xpos3_c_bitwidth < 32) begin
                    xpos3_data_tmp_reg = mem_xpos3[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < xpos3_c_bitwidth) begin
                            xpos3_data_tmp_reg[j] = mem_xpos3[k][i*32 + j];
                        end
                        else begin
                            xpos3_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_xpos3[k * four_byte_num  + i]!==xpos3_data_tmp_reg) begin
                xpos3_diff_count = xpos3_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_xpos3
    integer write_xpos3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_xpos3_count;
    reg [31 : 0] xpos3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = xpos3_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_5_finish <= 0;

        for (check_xpos3_count = 0; check_xpos3_count < xpos3_OPERATE_DEPTH; check_xpos3_count = check_xpos3_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_xpos3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write xpos3 data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (xpos3_c_bitwidth < 32) begin
                        xpos3_data_tmp_reg = mem_xpos3[check_xpos3_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < xpos3_c_bitwidth) begin
                                xpos3_data_tmp_reg[j] = mem_xpos3[check_xpos3_count][i*32 + j];
                            end
                            else begin
                                xpos3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_xpos3[check_xpos3_count * four_byte_num  + i]!==xpos3_data_tmp_reg) begin
                        image_mem_xpos3[check_xpos3_count * four_byte_num + i]=xpos3_data_tmp_reg;
                        write (xpos3_data_in_addr + check_xpos3_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, xpos3_data_tmp_reg, write_xpos3_resp);
                        write_one_xpos3_data_done <= 1;
                        @(posedge clk);
                        write_one_xpos3_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_5_finish <= 1;
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_xpos4_run_flag <= 0; 
        count_operate_depth_by_bitwidth_and_depth (xpos4_c_bitwidth, xpos4_DEPTH, xpos4_OPERATE_DEPTH);
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_xpos4_run_flag <= 1; 
        end
        else if ((write_one_xpos4_data_done == 1 && write_xpos4_count == xpos4_diff_count - 1) || xpos4_diff_count == 0) begin
            write_xpos4_run_flag <= 0; 
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_xpos4_count = 0;
    end
    else begin
        if (AESL_ready_reg === 1) begin
            write_xpos4_count = 0;
        end
        if (write_one_xpos4_data_done === 1) begin
            write_xpos4_count = write_xpos4_count + 1;
        end
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        xpos4_write_data_finish <= 0;
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            xpos4_write_data_finish <= 0;
        end
        if (write_xpos4_run_flag == 1 && write_xpos4_count == xpos4_diff_count) begin
            xpos4_write_data_finish <= 1;
        end
    end
end

initial begin : initial_diff_counter_xpos4
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer k;
    reg [31 : 0] xpos4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = xpos4_c_bitwidth;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        wait (AESL_ready_reg === 1);
        xpos4_diff_count = 0;

        for (k = 0; k < xpos4_OPERATE_DEPTH; k = k + 1) begin
            for (i = 0; i < four_byte_num; i = i + 1) begin
                if (xpos4_c_bitwidth < 32) begin
                    xpos4_data_tmp_reg = mem_xpos4[k];
                end
                else begin
                    for (j = 0; j < 32; j = j + 1) begin
                        if (i*32 + j < xpos4_c_bitwidth) begin
                            xpos4_data_tmp_reg[j] = mem_xpos4[k][i*32 + j];
                        end
                        else begin
                            xpos4_data_tmp_reg[j] = 0;
                        end
                    end
                end
                if(image_mem_xpos4[k * four_byte_num  + i]!==xpos4_data_tmp_reg) begin
                xpos4_diff_count = xpos4_diff_count + 1;
                end
            end
        end

        @(posedge clk);
    end
end

initial begin : write_xpos4
    integer write_xpos4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    integer check_xpos4_count;
    reg [31 : 0] xpos4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = xpos4_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_6_finish <= 0;

        for (check_xpos4_count = 0; check_xpos4_count < xpos4_OPERATE_DEPTH; check_xpos4_count = check_xpos4_count + 1) begin
            wait (ongoing_process_number === process_num && process_busy === 0);
            get_ack = 1;
            if (write_xpos4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write xpos4 data 
                for (i = 0; i < four_byte_num; i = i + 1) begin
                    if (xpos4_c_bitwidth < 32) begin
                        xpos4_data_tmp_reg = mem_xpos4[check_xpos4_count];
                    end
                    else begin
                        for (j = 0; j < 32; j = j + 1) begin
                            if (i*32 + j < xpos4_c_bitwidth) begin
                                xpos4_data_tmp_reg[j] = mem_xpos4[check_xpos4_count][i*32 + j];
                            end
                            else begin
                                xpos4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_xpos4[check_xpos4_count * four_byte_num  + i]!==xpos4_data_tmp_reg) begin
                        image_mem_xpos4[check_xpos4_count * four_byte_num + i]=xpos4_data_tmp_reg;
                        write (xpos4_data_in_addr + check_xpos4_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, xpos4_data_tmp_reg, write_xpos4_resp);
                        write_one_xpos4_data_done <= 1;
                        @(posedge clk);
                        write_one_xpos4_data_done <= 0;
                    end
                end
            end
            process_busy = 0;
        end

        process_6_finish <= 1;
        @(posedge clk);
    end    
end


//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_axis_packet_size_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [axis_packet_size_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (axis_packet_size_c_bitwidth , factor);
  fp = $fopen(`TV_IN_axis_packet_size ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_axis_packet_size); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < axis_packet_size_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_axis_packet_size [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_axis_packet_size [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_axis_packet_size [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_axis_packet_size [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_axis_packet_size [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_axis_packet_size;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_phi_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [phi_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (phi_c_bitwidth , factor);
  fp = $fopen(`TV_IN_phi ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_phi); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < phi_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_phi [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_phi [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_phi [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_phi [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_phi [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_phi;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_fc_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [fc_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (fc_c_bitwidth , factor);
  fp = $fopen(`TV_IN_fc ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_fc); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < fc_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_fc [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_fc [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_fc [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_fc [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_fc [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_fc;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_xpos1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [xpos1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (xpos1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_xpos1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_xpos1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < xpos1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_xpos1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_xpos1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_xpos1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_xpos1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_xpos1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_xpos1;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_xpos2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [xpos2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (xpos2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_xpos2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_xpos2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < xpos2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_xpos2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_xpos2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_xpos2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_xpos2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_xpos2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_xpos2;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_xpos3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [xpos3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (xpos3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_xpos3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_xpos3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < xpos3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_xpos3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_xpos3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_xpos3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_xpos3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_xpos3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_xpos3;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_xpos4_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [xpos4_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (xpos4_c_bitwidth , factor);
  fp = $fopen(`TV_IN_xpos4 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_xpos4); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < xpos4_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_xpos4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_xpos4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_xpos4 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_xpos4 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_xpos4 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_xpos4;
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
endmodule
