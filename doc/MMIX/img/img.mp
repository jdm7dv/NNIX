u:=0.5cm;

beginfig(0)
  path p[];
  dx = 3u;
  p[0] = (0,0)--(dx,0)--(dx,u)--(0,u)--cycle;
  p[1] = p[0] shifted (dx,0);
  p[2] = p[1] shifted (dx,0);
  p[3] = p[2] shifted (dx,0);
  for i=0 upto 3:
    draw p[i];
  endfor;
  label(btex OP etex, (dx*0.5,0.5u));
  label(btex X etex, (dx+dx*0.5,0.5u));
  label(btex Y etex, (2*dx+dx*0.5,0.5u));
  label(btex Z etex, (3*dx+dx*0.5,0.5u));
endfig;
