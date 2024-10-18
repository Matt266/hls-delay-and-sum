# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
w1_real { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
w1_imag { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
w2_real { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
w2_imag { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
w3_real { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
w3_imag { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
w4_real { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
w4_imag { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
}
dict set axilite_register_dict control $port_control


