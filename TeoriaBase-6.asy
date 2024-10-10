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

import graph; size(10cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -10.293442854563349, xmax = 14.703567919563243, ymin = -8.541677070151277, ymax = 6.49950419794772; /* image dimensions */


draw(arc((-3,5),0.42974803623140273,-104.03624346792648,-74.51812173396324)--(-3,5)--cycle, linewidth(0.8));
draw(arc((-3,5),0.42974803623140273,-74.51812173396324,-45)--(-3,5)--cycle, linewidth(0.8));
draw(arc((5,-3),0.42974803623140273,135,157.5)--(5,-3)--cycle, linewidth(0.8));
draw(arc((5,-3),0.42974803623140273,157.5,180)--(5,-3)--cycle, linewidth(0.8));
draw(arc((-5,-3),0.42974803623140273,0,37.98187826603676)--(-5,-3)--cycle, linewidth(0.8));
draw(arc((-5,-3),0.42974803623140273,37.98187826603676,75.96375653207352)--(-5,-3)--cycle, linewidth(0.8));
/* draw figures */
draw((-3,5)--(-5,-3), linewidth(0.8));
draw((-5,-3)--(5,-3), linewidth(0.8));
draw((5,-3)--(-3,5), linewidth(0.8));
draw((-4.061636786439457,0.7534528542421726)--(5,-3), linewidth(0.8));
draw((-5,-3)--(0.6155281280883029,1.3844718719116968), linewidth(0.8));
draw((-3,5)--(-0.7841282804125324,-3), linewidth(0.8));
draw(arc((-3,5),0.42974803623140273,-104.03624346792648,-74.51812173396324), linewidth(0.8));
draw((-2.99512077488319,4.6132575448382935)--(-2.9940365026350104,4.527314777024581), linewidth(0.8));
draw(arc((-3,5),0.42974803623140273,-74.51812173396324,-45), linewidth(0.8));
draw((-2.8052065493963054,4.665860740013763)--(-2.7619191159288166,4.591607571127932), linewidth(0.8));
draw(arc((5,-3),0.42974803623140273,135,157.5), linewidth(0.8));
draw((4.678409810234204,-2.785120305034084)--(4.606945323619584,-2.7373692617083254), linewidth(0.8));
draw((4.68934082659393,-2.7695994543389695)--(4.620305454725912,-2.7183993330809613), linewidth(0.8));
draw((4.6682535328096035,-2.8011588197356105)--(4.594532095656181,-2.7569718907879683), linewidth(0.8));
draw(arc((5,-3),0.42974803623140273,157.5,180), linewidth(0.8));
draw((4.62065850660384,-2.9245442855032353)--(4.5363603969602515,-2.907776348948399), linewidth(0.8));
draw((4.624817876470901,-2.9060217703590783)--(4.541444071242215,-2.8851377193277616), linewidth(0.8));
draw((4.617413003620763,-2.943248580072757)--(4.532393671092043,-2.9306371534222575), linewidth(0.8));
draw(arc((-5,-3),0.42974803623140273,0,37.98187826603676), linewidth(0.8));
draw((-4.643419572352858,-2.8501870096379274)--(-4.5641794773201605,-2.816895234001911), linewidth(0.8));
draw((-4.626744624442473,-2.898639464880778)--(-4.54379898542969,-2.8761149015209515), linewidth(0.8));
draw(arc((-5,-3),0.42974803623140273,37.98187826603676,75.96375653207352), linewidth(0.8));
draw((-4.811138111234353,-2.6624726375030954)--(-4.769168802619765,-2.587466556948227), linewidth(0.8));
draw((-4.768176594080766,-2.690401159675539)--(-4.71666028165427,-2.621601417381215), linewidth(0.8));
draw(circle((-1.5337486238747193,-0.293632706854545), 2.7063672931454548), linewidth(0.8));
/* dots and labels */
dot((-3,5),dotstyle);
label("$A$", (-2.9405254007556656,5.13997314992002), NE * labelscalefactor);
dot((-5,-3),dotstyle);
label("$B$", (-5.602175395660395,-3.0521221195908804), NE * labelscalefactor);
dot((5,-3),dotstyle);
label("$C$", (5.051569868755247,-2.8521221195908804), NE * labelscalefactor);
dot((-1.5337486238747193,-0.293632706854545),linewidth(4pt) + dotstyle);
label("$I$", (-1.5122579809016858,-0.11861556001583844), NE * labelscalefactor);
dot((-0.7841282804125324,-3),linewidth(4pt) + dotstyle);
label("$D$", (-0.7243865811441142,-3.3833279264378446), NE * labelscalefactor);
dot((0.6155281280883029,1.3844718719116968),linewidth(4pt) + dotstyle);
label("$E$", (0.6794570038784679,1.5001020431224348), NE * labelscalefactor);
dot((-4.061636786439457,0.7534528542421726),linewidth(4pt) + dotstyle);
label("$F$", (-4.504796591043822,0.8698049233163815), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
