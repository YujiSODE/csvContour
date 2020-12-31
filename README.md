# csvContour
Tool to draw text contour map  
GitHub: https://github.com/YujiSODE/csvContour  
>Copyright (c) 2020 Yuji SODE \<yuji.sode@gmail.com\>  
>This software is released under the MIT License.  
>See LICENSE or http://opensource.org/licenses/mit-license.php  
______
## 1. Description
`csvContour` is tool to draw text contour map from a numerical csv text map, based on `right down neighborhood`.

## 2. Concept for `right down neighborhood` of cells

    right down neighborhood: c0 and c1 to c3
    [c0|c1]
    [c2|c3]
	
- _V<sub>i</sub>_ = _c<sub>0</sub>_ != _c<sub>i</sub>_ ? 1 : 0, and _i_ = 1, 2 and 3
- rule: _R_(_V<sub>1</sub>_,_V<sub>2</sub>_,_V<sub>3</sub>_)

## 3. Script
### Tcl
- [`csvContour.tcl`](csvContour.tcl): main script
- [`contourChars.tcl`](contourChars.tcl): characters list to text contour mapping

It requires Tcl 8.6+.
