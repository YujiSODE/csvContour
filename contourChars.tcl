#csvCountour
#contourChars.tcl
##===================================================================
#	Copyright (c) 2020 Yuji SODE <yuji.sode@gmail.com>
#
#	This software is released under the MIT License.
#	See LICENSE or http://opensource.org/licenses/mit-license.php
##===================================================================
#Characters list to text contour mapping
#--------------------------------------------------------------------
#
#=== Synopsis ===
# - `contourChars;`
#   	procedure that returns a characters list for array to text contour mapping
##===================================================================
#
#procedure that returns a characters list for array to text contour mapping
proc contourChars {} {
	#
	#rule array
	array set rules {};
	#
	#-----------------------------------------
	#right down neighborhood: c0 and c1 to c3
	# [c0|c1]
	# [c2|c3]
	#
	#v_i = {$c0!=$c_i?1:0}, and i = 1, 2 and 3
	#rule: $rules(${v_1}${v_2}${v_3})
	#-----------------------------------------
	#
	#U+287c: "⡼"
	set rules(111) \u287c;
	#
	#U+285c: "⡜";
	set rules(110) \u285c;
	#
	#U+2838: "⠸";
	set rules(101) \u2838;
	#
	#U+2818: "⠘";
	set rules(100) \u2818;
	#
	#U+2864: "⡤";
	set rules(011) \u2864;
	#
	#U+2844: "⡄";
	set rules(010) \u2844;
	#
	#U+2820: "⠠";
	set rules(001) \u2820;
	#
	#U+2800: "⠀";
	set rules(000) \u2800;
	#
	return [array get rules];
};
