# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
axis_packet_size { 
	dir I
	width 26
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
phi { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
fc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
xpos1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
xpos2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
xpos3 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
xpos4 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
}
dict set axilite_register_dict control $port_control


