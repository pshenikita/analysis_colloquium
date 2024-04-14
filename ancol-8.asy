if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ancol-8";
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
path s1 = arc((0, 0), r=length(a), angle1=60, angle2=30);
path s2 = arc((0, 0), r=length(b), angle1=60, angle2=30);
fill(o--s2--cycle, 0.7 * white + 0.3 * orange);
fill(o--s1--cycle, palecyan);
draw(s, currentpen + 1);

dot("$P_i$", a, dir(-60));
dot("$P_{i + 1}$", b, dir(90));
dot("$O$", o, dir(-90));

draw(s1^^s2);
draw(o--b^^o--point(s2, 100));
draw((-0.1, 0)--(1, 0), Arrow(HookHead, 1.5mm));
