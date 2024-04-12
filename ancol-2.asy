if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ancol-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(10cm);
import graph;
draw((0, -0.7)--(0, 2), Arrow(HookHead, 1.5mm));
draw((-0.5, 0)--(5.5, 0), Arrow(HookHead, 1.5mm));

real f(real x)
{
return 0.2 * (-1/3 * x * x * x + x * x + 2 * x + 3);
}

real x;
for (x = 0.5; x < 4.5; x += 0.5)
{
fill((x, 0)--(x + 0.5, 0)--(x + 0.5, min(f(x), f(x + 0.5)))--(x, min(f(x), f(x + 0.5)))--cycle, palecyan);
draw((x, 0)--(x + 0.5, 0)--(x + 0.5, min(f(x), f(x + 0.5)))--(x, min(f(x), f(x + 0.5)))--cycle, 0.5 * currentpen);
// draw((x + 0.3, 0)--(x + 0.3, f(x + 0.3)), dashed);
// dot("${}$", (x + 0.3, f(x + 0.3)), dir(0));
/* % */ label(format("$a_%d$", (int)(2 * x)), (x, -0.2));
}
/* % */ label(format("$a_%d$", (int)(2 * x)), (x, -0.2));

draw(graph(f, -0.3, 5), currentpen + 1);
