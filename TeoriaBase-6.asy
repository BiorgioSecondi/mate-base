if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="TeoriaBase-6";
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

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(8cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -16.152710153148043, xmax = 22.25455019852526, ymin = -10.836351673284168, ymax = 11.489229722064659; /* image dimensions */

/* draw figures */
draw((-8,8)--(14,8), linewidth(1));
draw((-11,3)--(16,3), linewidth(1));
draw((-12,-8)--(18,-8), linewidth(1));
draw((-2.3580419739081058,8)--(-6,-8), linewidth(1));
draw((4.866007941009651,8)--(16.827437322745336,-8.022965399886552), linewidth(1));
/* dots and labels */
dot((-8,8),dotstyle);
label("$A$", (-7.930361883153712,8.18576971072036), NE * labelscalefactor);
dot((14,8),dotstyle);
label("$B$", (14.068503686897348,8.18576971072036), NE * labelscalefactor);
dot((-11,3),dotstyle);
label("$C$", (-10.925256948383435,3.1761270561542823), NE * labelscalefactor);
dot((16,3),dotstyle);
label("$D$", (16.065100397050497,3.1761270561542823), NE * labelscalefactor);
dot((-12,-8),dotstyle);
label("$E$", (-11.92355530346001,-7.823305728871237), NE * labelscalefactor);
dot((18,-8),dotstyle);
label("$F$", (18.079847986386856,-7.823305728871237), NE * labelscalefactor);
dot((-2.3580419739081058,8),dotstyle);
label("$G$", (-2.285438457175264,8.18576971072036), NE * labelscalefactor);
dot((-6,-8),dotstyle);
label("$H$", (-5.933765173000563,-7.823305728871237), NE * labelscalefactor);
dot((4.866007941009651,8),dotstyle);
label("$I$", (4.9386114577424935,8.18576971072036), NE * labelscalefactor);
dot((16.827437322745336,-8.022965399886552),dotstyle);
label("$J$", (16.900040839478176,-7.841456608054448), NE * labelscalefactor);
dot((-3.4961538570618234,3),linewidth(4pt) + dotstyle);
label("$K$", (-3.4289438457175216,3.1398252977878616), NE * labelscalefactor);
dot((8.598597097639916,3),linewidth(4pt) + dotstyle);
label("$L$", (8.677692569483845,3.1398252977878616), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
