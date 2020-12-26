/*csvCountour
* csvContour.js
*===================================================================
*	Copyright (c) 2020 Yuji SODE <yuji.sode@gmail.com>
*
*	This software is released under the MIT License.
*	See LICENSE or http://opensource.org/licenses/mit-license.php
*===================================================================
* Tool to draw text contour map
* This is implementation of "csvContour.tcl" in JavaScript
*--------------------------------------------------------------------
*
*=== Synopsis ===
* - `csvContour(csvMap?,void?);`
*   	function that returns a text contour map
*   	- csvMap: a numerical csv text map, that is composed of numerical values, comma (`,`) and newline character (Unicode U+000A)
*   	- void: an optional value to express void, and 0.0 is default value
*===================================================================
*/
//
//function that returns a text contour map
function csvContour(csvMap,VOID){
	// - csvMap: a numerical csv text map, that is composed of numerical values, comma (`,`) and newline character (Unicode U+000A)
	// - VOID: an optional value to express void, and 0.0 is default value
	//======
	VOID=!VOID?0.0:VOID;
	var slf=this.window,d=csvMap.split(/\n/),map=[],c0=0,c1=0,c2=0,c3=0,h=d.length,w=d[0].split(/,/).length,x=0,y=0,rules={},R='';
	//
	rules=contourChars();
	//map is 2d array
	while(y<h){
		map.push(d[y].split(/,/));
		y+=1;
	};
	y=0;
	/*
	* -----------------------------------------
	* right down neighborhood: c0 and c1 to c3
	* [c0|c1]
	* [c2|c3]
	*
	* Vi = {c0!=ci?1:0}, and i = 1, 2 and 3
	* rule: rules(`${V1}${V2}${V3}`)
	* -----------------------------------------
	*/
	while(y<h){
		x=0;while(x<w){
			//
			c0=map[y][x];
			c0=!c0?VOID:c0;
			c1=x<w-1?map[y][x+1]:VOID;
			c1=!c1?VOID:c1;
			c2=y<h-1?map[y+1][x]:VOID;
			c2=!c2?VOID:c2;
			c3=(y<h-1&&x<w-1)?map[y+1][x+1]:VOID;
			c3=!c3?VOID:c3;
			R+=rules[`${c0!=c1?1:0}${c0!=c2?1:0}${c0!=c3?1:0}`];
			//
			x+=1;
		};
		R+=y<h-1?'\n':'';
		y+=1;
	};
	//
	slf=d=map=c0=c1=c2=c3=h=w=x=y=rules=null;
	return R;
}
