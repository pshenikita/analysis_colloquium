if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ancol-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(10cm);
import graph;
import contour;

draw((0, -0.7)--(0, 2), Arrow(HookHead, 1.5mm));
draw((-0.5, 0)--(5.5, 0), Arrow(HookHead, 1.5mm));

real f(real x)
{
return 0.2 * (-1/3 * x * x * x + x * x + 2 * x + 3);
}

path s = graph(f, 0.5, 4.5);
fill(s--(4.5, 0)--(0.5, 0)--cycle, palecyan);
draw((0.5, 0)--(0.5, f(0.5)), dashed);
draw((4.5, 0)--(4.5, f(4.5)), dashed);
draw(graph(f, -0.3, 5), currentpen + 1);
label("$a$", (0.5, -0.25));
label("$b$", (4.5, -0.25));
