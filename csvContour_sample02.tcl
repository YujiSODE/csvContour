#csvContour_sample02.tcl
#sample codes for `csvContour.tcl`
source -encoding utf-8 csvContour.tcl;
#
set map {};
append map "0,0,0,0,0,0,0,0,0,0";
append map "\n1,1,1,1,1,2,2,2,2,2";
append map "\n1,1,1,1,1,2,2,2,2,2";
append map "\n1,1,1,1,1,2,2,2,2,2";
append map "\n1,1,1,1,1,2,2,2,2,2";
append map "\n0,0,0,3,3,3,3,3,2.5,2.5";
append map "\n0,0,0,3,3,3,3,3,2.5,2.5";
append map "\n0,0,0,3,0,0,0,3,2.5,2.5";
append map "\n0,0,0,3,0,0,0,3,2.5,2.5";
append map "\n0,0,0,3,0,4,0,3,0,0";
append map "\n0,0,0,3,0,4,0,3,0,0";
append map "\n0,0,0,3,0,4,0,3,0,0";
#
puts stdout [csvContour $map 100];
#
#================================
#output:
#⡤⡤⡤⡤⡤⡤⡤⡤⡤⡼
#⠀⠀⠀⠀⠸⠀⠀⠀⠀⠸
#⠀⠀⠀⠀⠸⠀⠀⠀⠀⠸
#⠀⠀⠀⠀⠸⠀⠀⠀⠀⠸
#⡤⡤⡤⡤⡼⡤⡤⡤⡤⡼
#⠀⠀⠸⠀⠀⠀⠀⠸⠀⠸
#⠀⠀⠸⠠⡤⡤⡄⠸⠀⠸
#⠀⠀⠸⠸⠀⠀⠸⠸⠀⠸
#⠀⠀⠸⠸⠠⡄⠸⠸⡤⡼
#⠀⠀⠸⠸⠸⠸⠸⠸⠀⠸
#⠀⠀⠸⠸⠸⠸⠸⠸⠀⠸
#⡤⡤⡼⡼⡼⡼⡼⡼⡤⡼
