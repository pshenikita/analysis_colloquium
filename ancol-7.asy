if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ancol-7";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(5.5cm);
import graph;
import geometry;

real r(real phi)
{
return 2 * phi;
}

path s = polargraph(r, pi / 6, pi / 3);
pair o = (0, 0), a = point(s, 0), b = point(s, 100);
fill(o--s--cycle, palecyan);
draw(s, currentpen + 1);

dot("$A = P_0$", a, dir(-60));
dot("$B = P_m$", b, dir(90));
dot("$P_1$", point(s, 20), dir(0));
dot("$P_{i - 1}$", point(s, 40), dir(0));
dot("$P_i$", point(s, 60), dir(0));
dot("$P_{m - 1}$", point(s, 80), dir(0));
dot("$O$", o, dir(-90));
for (int i = 20; i < 100; i += 20)
draw(o--point(s, i));

draw(o--a^^o--b);
draw((-0.1, 0)--(1, 0), Arrow(HookHead, 1.5mm));
