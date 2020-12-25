#csvCountour
#csvContour.tcl
##===================================================================
#	Copyright (c) 2020 Yuji SODE <yuji.sode@gmail.com>
#
#	This software is released under the MIT License.
#	See LICENSE or http://opensource.org/licenses/mit-license.php
##===================================================================
#Tool to draw text contour map
#--------------------------------------------------------------------
#
#=== Synopsis ===
# - `csvContour csvMap ?void?;`
#   	procedure that returns a text contour map
#   	- $csvMap: a numerical csv text map, that is composed of numerical values, comma (`,`) and newline character (Unicode U+000A)
#   	- $void: an optional value to express void, and 0.0 is default value
##===================================================================
#
set auto_noexec 1;
package require Tcl 8.6;
#
source -encoding utf-8 contourChars.tcl;
#
#procedure that returns a text contour map
proc csvContour {csvMap {void 0.0}} {
	# - $csvMap: a numerical csv text map, that is composed of numerical values, comma (`,`) and newline character (Unicode U+000A)
	# - $void: an optional value to express void, and 0.0 is default value
	###
	#
	set void [expr {double($void)}];
	#
	#contouring rules
	array set RULES [contourChars];
	#
	#2d map list
	set map [lmap e [split $csvMap \n] {split $e ,}];
	#
	#text contour map to output
	set ctMap {};
	#
	#$H and $W are map height and width
	set H [llength $map];
	#
	set W 0;
	set W0 0;
	#
	#estimating max width
	foreach e $map {
		set W0 [llength $e];
		set W [expr {$W<$W0?$W0:$W}];
	};
	#
	set x 0;
	set y 0;
	#
	set c0 0;
	set c1 0;
	set c2 0;
	#
	#-----------------------------------------
	#right down neighborhood: c0 and c1 to c3
	# [c0|c1]
	# [c2|c3]
	#
	#values: $c1,$c2 and $c3 = 0 or 1
	#Vi = {$c0!=$ci?1:0}, and i = 1, 2 and 3
	#rule: $rules(${V1}${V2}${V3})
	#-----------------------------------------
	#
	#x := [x0,W]
	#y := [y0,H]
	#
	while {$y<$H} {
		set x 0;
		while {$x<$W} {
			#
			set c0 0;set c1 0;set c2 0;set c3 0;
			#
			#c0
			set c0 [lindex $map $y $x];
			set c0 [expr {[llength $c0]?$c0:$void}];
			#
			#c1
			set c1 [expr {$x<$W-1?[lindex $map $y $x+1]:$void}];
			set c1 [expr {[llength $c1]?$c1:$void}];
			#
			#c2
			set c2 [expr {$y<$H-1?[lindex $map $y+1 $x]:$void}];
			set c2 [expr {[llength $c2]?$c2:$void}];
			#
			#c3
			set c3 [expr {$y<$H-1&&$x<$W-1?[lindex $map $y+1 $x+1]:$void}];
			set c3 [expr {[llength $c3]?$c3:$void}];
			#
			append ctMap $RULES([expr {$c0!=$c1?1:0}][expr {$c0!=$c2?1:0}][expr {$c0!=$c3?1:0}]);
			#
			incr x 1;
		};
		append ctMap [expr {$y<$H-1?"\n":{}}];
		incr y 1;
	};
	#
	return $ctMap;
};
