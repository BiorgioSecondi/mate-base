if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="TeoriaBase-3";
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
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -19.12, xmax = 23.2, ymin = -12.1, ymax = 12.5; /* image dimensions */

/* draw figures */
draw(circle((-1.5456579648375055,2.9893127330847094), 5.760945731745218), linewidth(1.0) + dotted);
draw((-4.28,8.06)--(-6.76,0.54), linewidth(1.0));
draw((-6.76,0.54)--(-0.64,-2.7), linewidth(1.0));
draw((-0.64,-2.7)--(4.078560165264434,1.7416484556662646), linewidth(1.0));
draw((4.078560165264434,1.7416484556662646)--(-4.28,8.06), linewidth(1.0));
draw((-4.28,8.06)--(-0.64,-2.7), linewidth(1.0) + linetype("4 4"));
draw((-6.76,0.54)--(4.078560165264434,1.7416484556662646), linewidth(1.0) + linetype("4 4"));
/* dots and labels */
dot((-4.28,8.06),dotstyle);
label("$A$", (-4.7,8.26), NE * labelscalefactor);
dot((-6.76,0.54),dotstyle);
label("$B$", (-6.98,0.74), W * labelscalefactor);
dot((-0.64,-2.7),dotstyle);
label("$C$", (-0.56,-3.5), NE * labelscalefactor);
dot((4.078560165264434,1.7416484556662646),dotstyle);
label("$D$", (4.16,1.94), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
