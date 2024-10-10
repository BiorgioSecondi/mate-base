if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="TeoriaBase-5";
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
real labelscalefactor = 1; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -9.308093138169987, xmax = 16.002626000299237, ymin = -9.089147466033143, ymax = 6.140798147372383; /* image dimensions */


draw((-3.7014955286289815,0.9253738821572454)--(-3.626869410786227,1.2238783535282638)--(-3.9253738821572455,1.2985044713710183)--(-4,1)--cycle, linewidth(1));
draw((0.7824293483799203,0.7824293483799207)--(1,0.5648586967598413)--(1.2175706516200788,0.7824293483799207)--(1,1)--cycle, linewidth(1));
draw((0,-2.692308633704532)--(-0.3076913662954684,-2.692308633704532)--(-0.3076913662954684,-3)--(0,-3)--cycle, linewidth(1));

draw(circle((0,0), 5.8309518948453), linewidth(1));
draw((-3,5)--(-5,-3), linewidth(1));
draw((-5,-3)--(5,-3), linewidth(1));
draw((5,-3)--(-3,5), linewidth(1));
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
draw((-4,1)--(0,0), linewidth(1));
draw((0,0)--(0,-3), linewidth(1));
draw((0,0)--(1,1), linewidth(1));
draw((0,0)--(-5,-3), linewidth(1));
draw((-2.5932826473034423,-1.5559695883820668)--(-2.567163506058478,-1.3880608232358698), linewidth(1));
draw((-2.5932826473034423,-1.5559695883820668)--(-2.43283649394152,-1.6119391767641331), linewidth(1));
draw((-2.4067173526965564,-1.4440304116179343)--(-2.3805982114515922,-1.2761216464717364), linewidth(1));
draw((-2.4067173526965564,-1.4440304116179343)--(-2.2462711993346343,-1.5), linewidth(1));
draw((-2.7798479419103286,-1.6679087651461977)--(-2.7537288006653644,-1.5), linewidth(1));
draw((-2.7798479419103286,-1.6679087651461977)--(-2.6194017885484064,-1.723878353528264), linewidth(1));
draw((0,0)--(-3,5), linewidth(1));
draw((-1.555969588382066,2.593282647303443)--(-1.3880608232358687,2.567163506058479), linewidth(1));
draw((-1.555969588382066,2.593282647303443)--(-1.6119391767641325,2.432836493941521), linewidth(1));
draw((-1.4440304116179332,2.406717352696557)--(-1.2761216464717358,2.3805982114515927), linewidth(1));
draw((-1.4440304116179332,2.406717352696557)--(-1.5,2.2462711993346347), linewidth(1));
draw((-1.667908765146197,2.7798479419103295)--(-1.5,2.7537288006653653), linewidth(1));
draw((-1.667908765146197,2.7798479419103295)--(-1.7238783535282634,2.6194017885484073), linewidth(1));
draw((0,0)--(5,-3), linewidth(1));
draw((2.5932826473034423,-1.5559695883820668)--(2.4328364939415192,-1.6119391767641331), linewidth(1));
draw((2.5932826473034423,-1.5559695883820668)--(2.567163506058478,-1.3880608232358698), linewidth(1));
draw((2.4067173526965564,-1.4440304116179343)--(2.2462711993346334,-1.5), linewidth(1));
draw((2.4067173526965564,-1.4440304116179343)--(2.3805982114515922,-1.276121646471737), linewidth(1));
draw((2.7798479419103295,-1.6679087651461977)--(2.6194017885484064,-1.723878353528264), linewidth(1));
draw((2.7798479419103295,-1.6679087651461977)--(2.7537288006653653,-1.5), linewidth(1));
/* dots and labels */
dot((0,0),linewidth(4pt) + dotstyle);
label("$O$", (-0.125078669046603212,0.19386700309022512), NE * labelscalefactor);
dot((-3,5),dotstyle);
label("$A$", (-3.2306196029157714,5.154477860028025), NE * labelscalefactor);
dot((-5,-3),dotstyle);
label("$B$", (-5.433802568576538,-3.5406833509949487), NE * labelscalefactor);
dot((5,-3),dotstyle);
label("$C$", (5.153102839511284,-3.0261786408869433), NE * labelscalefactor);
dot((0,-3),linewidth(4pt) + dotstyle);
label("$M$", (0.0619495916014285,-2.8811315398068906), NE * labelscalefactor);
dot((1,1),linewidth(4pt) + dotstyle);
label("$N$", (1.0627745890537932,1.122168450002562), NE * labelscalefactor);
dot((-4,1),linewidth(4pt) + dotstyle);
label("$L$", (-4.460454020584147,1.0496448994625356), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
