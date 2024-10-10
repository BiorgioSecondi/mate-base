if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="TeoriaBase-4";
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

import graph; size(9cm);
real labelscalefactor = 0.5;
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps);
pen dotstyle = black; /* point style */
real xmin = -9.308093138169987, xmax = 16.002626000299237, ymin = -9.089147466033143, ymax = 6.140798147372383; /* image dimensions */

/* draw figures */
draw((-3,5)--(-5,-3), linewidth(1));
draw((-5,-3)--(5,-3), linewidth(1));
draw((5,-3)--(-3,5), linewidth(1));
draw((-3,5)--(0,-3), linewidth(1));
draw((-5,-3)--(1,1), linewidth(1));
draw((5,-3)--(-4,1), linewidth(1));
draw((-5,-3)--(0,-3), linewidth(1));
draw((-2.572523550540026,-2.9129717393519696)--(-2.572523550540026,-3.0870282606480326), linewidth(1));
draw((-2.5,-2.9129717393519696)--(-2.5,-3.0870282606480326), linewidth(1));
draw((-2.4274764494599728,-2.9129717393519696)--(-2.4274764494599728,-3.0870282606480326), linewidth(1));
draw((-4,1)--(-5,-3), linewidth(1));
draw((-4.415570185631619,-1.0211074535920956)--(-4.584429814368381,-0.9788925464079057), linewidth(1));
draw((-4,1)--(-3,5), linewidth(1));
draw((-3.584429814368381,3.021107453592095)--(-3.415570185631619,2.9788925464079044), linewidth(1));
draw((-3,5)--(1,1), linewidth(1));
draw((-0.9641026739321941,3.0871792204503827)--(-1.0871792204503823,2.9641026739321954), linewidth(1));
draw((-0.9128207795496173,3.035897326067804)--(-1.0358973260678055,2.9128207795496173), linewidth(1));
draw((1,1)--(5,-3), linewidth(1));
draw((3.035897326067805,-0.9128207795496184)--(2.912820779549617,-1.0358973260678046), linewidth(1));
draw((3.087179220450382,-0.9641026739321966)--(2.9641026739321936,-1.087179220450383), linewidth(1));
draw((0,-3)--(5,-3), linewidth(1));
draw((2.4274764494599728,-2.9129717393519696)--(2.4274764494599728,-3.0870282606480326), linewidth(1));
draw((2.5,-2.9129717393519696)--(2.5,-3.0870282606480326), linewidth(1));
draw((2.572523550540026,-2.9129717393519696)--(2.572523550540026,-3.0870282606480326), linewidth(1));
/* dots and labels */
dot((-3,5),dotstyle);
label("$A$", (-2.9405254007556656,5.13997314992002), NE * labelscalefactor);
dot((-5,-3),dotstyle);
label("$B$", (-5.602175395660395,-3.0521221195908804), NE * labelscalefactor);
dot((5,-3),dotstyle);
label("$C$", (5.051569868755247,-2.8521221195908804), NE * labelscalefactor);
dot((0,-3),linewidth(4pt) + dotstyle);
label("$M$", (0.0619495916014285,-2.8811315398068906), NE * labelscalefactor);
dot((1,1),linewidth(4pt) + dotstyle);
label("$N$", (1.0627745890537932,1.122168450002562), NE * labelscalefactor);
dot((-4,1),linewidth(4pt) + dotstyle);
label("$L$", (-3.9413503982080305,1.122168450002562), NE * labelscalefactor);
dot((-1,-0.33333333333333326),linewidth(4pt) + dotstyle);
label("$G$", (-1.0388754058509362,-0.11226487993392226), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
