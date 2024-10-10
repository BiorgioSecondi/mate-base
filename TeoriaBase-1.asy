if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="TeoriaBase-1";
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
real labelscalefactor = 0.5;
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps);
pen dotstyle = black;
real xmin = -17.86, xmax = 24.46, ymin = -11.56, ymax = 13.04;
pen qqwuqq = rgb(0,0.39215686274509803,0); pen fuqqzz = rgb(0.9568627450980393,0,0.6);
draw(arc((-1.4,-6),0.6,61.92751306414704,180)--(-1.4,-6)--cycle, linewidth(1) + qqwuqq);
draw(arc((3.4,3),0.6,-118.07248693585296,0)--(3.4,3)--cycle, linewidth(1) + qqwuqq);
draw(arc((3.4,3),0.6,61.92751306414704,180)--(3.4,3)--cycle, linewidth(1) + qqwuqq);
draw(arc((-1.4,-6),0.6,-118.07248693585296,0)--(-1.4,-6)--cycle, linewidth(1) + qqwuqq);
draw(arc((-1.4,-6),0.6,0,61.92751306414704)--(-1.4,-6)--cycle, linewidth(1) + fuqqzz);
draw(arc((-1.4,-6),0.6,180,241.92751306414704)--(-1.4,-6)--cycle, linewidth(1) + fuqqzz);
draw(arc((3.4,3),0.6,180,241.92751306414704)--(3.4,3)--cycle, linewidth(1) + fuqqzz);
draw(arc((3.4,3),0.6,0,61.927513064147035)--(3.4,3)--cycle, linewidth(1) + fuqqzz);
draw((-8,3)--(10,3), linewidth(1));
draw((-8,-6)--(10,-6), linewidth(1));
draw((5,6)--(-3,-9), linewidth(1));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
