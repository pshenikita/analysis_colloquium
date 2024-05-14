if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ancol-10";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm);
import graph;
draw((0, -0.7)--(0, 5), Arrow(HookHead, 1.5mm));
draw((-0.5, 0)--(5.5, 0), Arrow(HookHead, 1.5mm));

fill((1, 0)--(1, 1)--(2, 1)--(2, 0)--cycle, palecyan);
fill((3, 0)--(3, 2)--(3.25, 2)--(3.25, 0)--cycle, palecyan);
fill((4.25, 0)--(4.25, 4)--(4.3125, 4)--(4.3125, 0)--cycle, palecyan);
draw((0, 0)--(1, 0)--(1, 1)--(2, 1)--(2, 0)--(3, 0)--(3, 2)--(3.25, 2)--(3.25, 0)--(4.25, 0)--(4.25, 4)--(4.3125, 4)--(4.3125, 0)--(5.3125, 0), p=currentpen+1);
