#csvContour_sample01.tcl
#sample codes for `csvContour.tcl`
source -encoding utf-8 csvContour.tcl;
#
set map {};
append map "0,0,0,0,0,0,0,0,0,0";
append map "\n0,0,0,0,1,1,0,0,0,0";
append map "\n0,0,0,1,0,0,1,0,0,0";
append map "\n0,0,1,0,0,0,0,1,0,0";
append map "\n0,1,0,0,0,0,0,0,1,0";
append map "\n1,0,0,0,1,1,0,0,0,1";
append map "\n1,0,0,0,1,1,0,0,0,1";
append map "\n0,1,0,0,0,0,0,0,1,0";
append map "\n0,0,1,0,0,0,0,1,0,0";
append map "\n0,0,0,1,0,0,1,0,0,0";
append map "\n0,0,0,0,1,1,0,0,0,0";
append map "\n0,0,0,0,0,0,0,0,0,0";
#
puts stdout [csvContour $map 0];
