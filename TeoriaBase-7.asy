if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="TeoriaBase-7";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

defaultpen(fontsize(10pt));
size(8cm); // set a reasonable default
usepackage("amsmath");
usepackage("amssymb");
settings.tex="pdflatex";
settings.outformat="pdf";
// Replacement for olympiad+cse5 which is not standard
import geometry;
// recalibrate fill and filldraw for conics
void filldraw(picture pic = currentpicture, conic g, pen fillpen=defaultpen, pen drawpen=defaultpen)
{ filldraw(pic, (path) g, fillpen, drawpen); }
void fill(picture pic = currentpicture, conic g, pen p=defaultpen)
{ filldraw(pic, (path) g, p); }
// some geometry
pair foot(pair P, pair A, pair B) { return foot(triangle(A,B,P).VC); }
pair centroid(pair A, pair B, pair C) { return (A+B+C)/3; }
// cse5 abbreviations
path CP(pair P, pair A) { return circle(P, abs(A-P)); }
path CR(pair P, real r) { return circle(P, r); }
pair IP(path p, path q) { return intersectionpoints(p,q)[0]; }
pair OP(path p, path q) { return intersectionpoints(p,q)[1]; }
path Line(pair A, pair B, real a=0.6, real b=a) { return (a*(A-B)+A)--(b*(B-A)+B); }
// cse5 more useful functions
picture CC() {
picture p=rotate(0)*currentpicture;
currentpicture.erase();
return p;
}
pair MP(Label s, pair A, pair B = plain.S, pen p = defaultpen) {
Label L = s;
L.s = "$"+s.s+"$";
label(L, A, B, p);
return A;
}
pair Drawing(Label s = "", pair A, pair B = plain.S, pen p = defaultpen) {
dot(MP(s, A, B, p), p);
return A;
}
path Drawing(path g, pen p = defaultpen, arrowbar ar = None) {
draw(g, p, ar);
return g;
}

import graph; size(10cm);
real labelscalefactor = 1.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -15.29369398668136, xmax = 16.087003116184217, ymin = -11.454266052182685, ymax = 7.428101832062945; /* image dimensions */


draw((-2.618518560691164,-3)--(-2.618518560691164,-2.6185185606911636)--(-3,-2.6185185606911636)--(-3,-3)--cycle, linewidth(0.8));
draw((-4.041673348592239,-0.7395816628519404)--(-3.949150509269711,-0.3694903055618266)--(-4.319241866559825,-0.2769674662392982)--(-4.411764705882353,-0.647058823529412)--cycle, linewidth(0.8));
draw((-0.2697481126320819,2.2697481126320818)--(-0.5394962252641643,2)--(-0.26974811263208204,1.7302518873679171)--(0,2)--cycle, linewidth(0.8));
/* draw figures */
draw(circle((0,0), 5.8309518948453), linewidth(0.8));
draw((-3,5)--(-5,-3), linewidth(0.8));
draw((-5,-3)--(5,-3), linewidth(0.8));
draw((5,-3)--(-3,5), linewidth(0.8));
draw((-3,5)--(-3,-3), linewidth(0.8));
draw((-4.411764705882353,-0.647058823529412)--(5,-3), linewidth(0.8));
draw((-5,-3)--(0,2), linewidth(0.8));
draw((-4.411764705882353,-0.647058823529412)--(-5.823529411764708,-0.29411764705882393), linewidth(0.8) + dotted);
draw((-3,-1)--(-5,3), linewidth(0.8) + dotted);
draw((0,2)--(3,5), linewidth(0.8) + dotted);
draw((-3,-1)--(5,3), linewidth(0.8) + dotted);
draw((-3,-3)--(-3,-5), linewidth(0.8) + dotted);
draw((-3,-1)--(3,-5), linewidth(0.8) + dotted);
/* dots and labels */
dot((-3,5),dotstyle);
label("$A$", (-3.2809113707992954,5.19818410097108), NE * labelscalefactor);
dot((-5,-3),dotstyle);
label("$B$", (-5.720913064347149,-3.1561081455705823), NE * labelscalefactor);
dot((5,-3),dotstyle);
label("$C$", (5.18917936584809,-3.038124938061777), NE * labelscalefactor);
dot((0,-3),linewidth(4pt) + dotstyle);
label("$M$", (0.06396522583852535,-2.858292862973723), NE * labelscalefactor);
dot((1,1),linewidth(4pt) + dotstyle);
label("$N$", (0.9091759787523833,1.259861656542705), NE * labelscalefactor);
dot((-4,1),linewidth(4pt) + dotstyle);
label("$L$", (-4.623937406310014,0.7620463739458461), NE * labelscalefactor);
dot((-3,-1),linewidth(4pt) + dotstyle);
label("$H$", (-3.134860993325712,-0.6082072069699118), NE * labelscalefactor);
dot((-3,-3),linewidth(4pt) + dotstyle);
label("$H_A$", (-3.9607434458873505,-3.789889843185052), NE * labelscalefactor);
dot((0,2),linewidth(4pt) + dotstyle);
label("$H_B$", (-0.24174930181116794,2.374820522088638), NE * labelscalefactor);
dot((-4.411764705882353,-0.647058823529412),linewidth(4pt) + dotstyle);
label("$H_C$", (-5.335366461609401,-1.2161064520227439), NE * labelscalefactor);
dot((-5,3),linewidth(4pt) + dotstyle);
label("$H_L$", (-5.610829101891176,3.2020480674936844), NE * labelscalefactor);
dot((5,3),linewidth(4pt) + dotstyle);
label("$H_N$", (5.063296913286451,3.1480984449672684), NE * labelscalefactor);
dot((3,-5),linewidth(4pt) + dotstyle);
label("$H_M$", (3.111026539879486,-5.396109839118421), NE * labelscalefactor);
dot((3,5),linewidth(4pt) + dotstyle);
label("$H_{AC}$", (3.067160879809042,5.144234478444663), NE * labelscalefactor);
dot((-5.823529411764708,-0.29411764705882393),linewidth(4pt) + dotstyle);
label("$H_{AB}$", (-6.989821552419505,-0.2687109817057508), NE * labelscalefactor);
dot((-3,-5),linewidth(4pt) + dotstyle);
label("$H_{BC}$", (-3.334860993325712,-5.911908329224085), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
