# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
phi { 
	dir I
	width 12
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
fc { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
xpos1 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
xpos2 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
xpos3 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
xpos4 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
}
dict set axilite_register_dict control $port_control


