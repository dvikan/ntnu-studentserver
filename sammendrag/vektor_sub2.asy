access settings;
settings.batchView=true;
settings.inlineimage=true;
settings.tex="pdflatex";

//Nødvendige Inkluderinger
import graph;
import markers;
import geometry;

//Definisjoner
unitsize(0.5cm);

pair u1 = (0,0);
pair u2 = (3,2);

pair mv1 = (3,2);
pair mv2 = (5,-2);

//draw (v1--v2, Arrow); label("$\vec{v}$",(v1+v2)/2, NE);
draw(u1--u2, Arrow); label("$\vec{u}$", (u1+u2)/2, NW);
draw (mv1--mv2, Arrow); label("$-\vec{v}$",(mv1+mv2)/2, NE);

draw(u1--mv2,red, Arrow); label("$\vec{u} + (-\vec{v})$",(u1 + mv2)/2, SW);