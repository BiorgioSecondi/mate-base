if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="TeoriaBase-2";
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

import graph; size(8cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -19.12, xmax = 23.2, ymin = -12.1, ymax = 12.5; /* image dimensions */

/* draw figures */
draw(circle((-0.74,1.42), 7.650908442792921), linewidth(1));
draw((-8.371837095064636,0.8801272794488032)--(-2.778440505133518,-5.954358297983019), linewidth(1));
draw((-8.371837095064636,0.8801272794488032)--(4.68,-3.98), linewidth(1));
draw((4.490154201729871,7.004074410869484)--(-2.778440505133518,-5.954358297983019), linewidth(1));
draw((4.490154201729871,7.004074410869484)--(4.68,-3.98), linewidth(1));
draw((-0.74,1.42)--(-2.778440505133518,-5.954358297983019), linewidth(1) + linetype("4 4"));
draw((-0.74,1.42)--(4.68,-3.98), linewidth(1) + linetype("4 4"));
/* dots and labels */
dot((-0.74,1.42),dotstyle);
label("$O$", (-0.66,1.62), NE * labelscalefactor);
dot((4.68,-3.98),dotstyle);
label("$B$", (4.76,-4.78), NE * labelscalefactor);
dot((-2.778440505133518,-5.954358297983019),dotstyle);
label("$A$", (-3.18,-6.84), NE * labelscalefactor);
dot((4.490154201729871,7.004074410869484),dotstyle);
label("$P$", (4.58,7.2), NE * labelscalefactor);
dot((-8.371837095064636,0.8801272794488032),dotstyle);
label("$P'$", (-8.3,1.08), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
