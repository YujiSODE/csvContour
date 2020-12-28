#csvContour_sample03.tcl
#sample codes for `csvContour.tcl`
source -encoding utf-8 csvContour.tcl;
#
set map {};
  append map "0,0,0,0,0,0,1,2,2,2";
append map "\n0,1,1,1,1,1,1,1,2,2";
append map "\n0,1,1,1,2,2,1,1,1,2";
append map "\n1,1,1,2,3,3,2,1,1,1";
append map "\n1,1,2,3,4,4,3,3,1,1";
append map "\n1,2,3,4,4,4,3,3,2,1";
append map "\n1,2,3,3,4,4,3,3,2,1";
append map "\n1,1,2,3,3,3,3,2,1,0";
append map "\n0,1,1,2,3,3,2,1,0,0";
append map "\n0,0,1,1,2,2,1,0,0,1";
append map "\n0,0,0,1,1,1,0,0,1,1";
append map "\n0,0,0,0,0,0,0,1,1,1";
#
puts stdout [csvContour $map 100];
#
#================================
#output:
#⠠⡤⡤⡤⡤⡼⠘⡄⠀⠸
#⠸⠀⠀⠠⡤⡄⠀⠘⡄⠸
#⡼⠀⠠⡼⡤⡜⡄⠀⠘⡼
#⠀⠠⡼⡼⡤⡜⡼⡄⠀⠸
#⠠⡼⡼⡼⠀⠸⠀⠸⡄⠸
#⠸⠸⠘⡄⠀⠸⠀⠸⠸⠸
#⠘⡜⡄⠘⡤⡼⠠⡼⡼⡼
#⡄⠘⡜⡄⠀⠠⡼⡼⡼⠸
#⠘⡄⠘⡜⡤⡼⡼⡼⠠⡼
#⠀⠘⡄⠘⡤⡼⡼⠠⡼⠸
#⠀⠀⠘⡤⡤⡼⠠⡼⠀⠸
#⡤⡤⡤⡤⡤⡤⡼⡤⡤⡼
