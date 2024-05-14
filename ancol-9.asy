if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ancol-9";
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
return log(x);
}

int x;
for (x = 1; x < 5; x += 1)
{
fill((x, 0)--(x + 1, 0)--(x + 1, f(x + 1))--(x, f(x))--cycle, palecyan);
dot((x, f(x)));
dot((x + 1, f(x + 1)));
draw((x, 0)--(x + 1, 0)--(x + 1, f(x + 1))--(x, f(x))--cycle);
/* % */ label(format("$%d$", x), (x, -0.2));
}

label("$\ldots$", (x, -0.2));

draw(graph(f, 1, 5.2), currentpen + 1);
