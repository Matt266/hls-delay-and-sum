# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
phi { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 20
	offset_end 27
}
fc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 28
	offset_end 35
}
xpos1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 36
	offset_end 43
}
xpos2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 44
	offset_end 51
}
xpos3 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
xpos4 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
axis_packet_size { 
	dir I
	width 26
	depth 1
	mode ap_none
	offset 68
	offset_end 75
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
auto_restart_counter_0 { 
	dir na
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 19
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


