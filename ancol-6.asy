if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ancol-6";
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

dot("$A$", a, dir(-90));
dot("$B$", b, dir(45 + 90));
dot("$O$", o, dir(-90));

draw(o--a^^o--b);
draw((-0.1, 0)--(1, 0), Arrow(HookHead, 1.5mm));
markangle(Label("$\varphi_1$", Relative(0.5)), n=1, radius=20, (1, 0), o, a);
markangle(Label("$\varphi_2$", Relative(0.75)), n=2, radius=45, (1, 0), o, b);
