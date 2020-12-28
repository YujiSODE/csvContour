/* csvContour
* contourChars.js
* ===================================================================
*	Copyright (c) 2020 Yuji SODE <yuji.sode@gmail.com>
*	This software is released under the MIT License.
*	See LICENSE or http://opensource.org/licenses/mit-license.php
* ===================================================================
* Characters list to text contour mapping
* This is implementation of "contourChars.tcl" in JavaScript
* --------------------------------------------------------------------
*
* === Synopsis ===
* - `contourChars();`
*   	function that returns a characters object to text contour mapping
* ===================================================================
*/
//
//function that returns a characters object to text contour mapping
function contourChars(){
	//
	//rule object
	var rules={};
	/*
	* -----------------------------------------
	* right down neighborhood: c0 and c1 to c3
	* [c0|c1]
	* [c2|c3]
	*
	* v_i = {c0!=$c_i?1:0}, and i = 1, 2 and 3
	* rule: rules[`${v_1}${v_2}${v_3}`]
	* -----------------------------------------
	*/
	//U+287c: "⡼"
	rules['111']='\u287c';
	//
	//U+285c: "⡜";
	rules['110']='\u285c';
	//
	//U+2838: "⠸";
	rules['101']='\u2838';
	//
	//U+2818: "⠘";
	rules['100']='\u2818';
	//
	//U+2864: "⡤";
	rules['011']='\u2864';
	//
	//U+2844: "⡄";
	rules['010']='\u2844';
	//
	//U+2820: "⠠";
	rules['001']='\u2820';
	//
	//U+2800: "⠀";
	rules['000']='\u2800';
	//
	return rules;
};
