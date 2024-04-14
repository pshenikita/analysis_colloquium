if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ancol-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm);
import geometry;

pair a = (0, 2), b = (3, 0), c = (6, 0), o = (0, 0);

fill(a--b--c--cycle, palecyan);
draw(o--a);
draw(o--b);
draw(b--c, currentpen + 1);
draw(L=Label("$\sqrt{a^2 + b^2}$", position=Relative(0.5), Rotate(b - a)), a--b, currentpen + 1);
draw(L=Label("$\sqrt{a^2 + c^2}$", position=Relative(0.5), Rotate(c - a), align=N), a--c, currentpen + 1);

label("$a$", a / 2 + (-0.2, 0));
label("$b$", b / 2 + (0, -0.25));
label("$|b - c|$", (c + b) / 2 + (0, -0.25));
perpendicular(o, NE, b - o);
