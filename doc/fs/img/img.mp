verbatimtex \documentclass{article}\usepackage{manmac,brackets,danger}\begin{document} etex;
u:=0.5cm;


beginfig(0)
  path p[];
  p[0] = (0,0)--(2u,0)--(2u,10u)--(0,10u)--cycle;
  p[1] = (6u,0)--(8u,0)--(8u,10u)--(6u,10u)--cycle;
  p[2] = (12u,0)--(14u,0)--(14u,10u)--(12u,10u)--cycle;
  label.top(btex $\begin{matrix}$User$\\$File$\ $Descriptor$\\$Table$\end{matrix}$ etex,(u,10u));
  label.top(btex $\begin{matrix}$File$\\ $Table$\end{matrix}$ etex,(7u,10u));
  label.top(btex $\begin{matrix}$Inode$\\ $Table$\end{matrix}$ etex,(13u,10u));
  draw p[0];
  draw p[1];
  draw p[2];
  for i=0 upto 4:
    draw (0,10u-u*i)--(2u,10u-u*i);
    draw (6u,7u-u*i)--(8u,7u-u*i);
  endfor;
  draw (12u,8u)--(14u,8u);
  draw (12u,9u)--(14u,9u);
  draw (12u,3u)--(14u,3u);
  draw (12u,4u)--(14u,4u);
  drawarrow (1.9u,9.5u)--(6.5u,5.5u);
  drawarrow (1.9u,8.5u)--(6.5u,5.5u);
  drawarrow (1.9u,7.5u)--(6.5u,3.5u);
  drawarrow (1.9u,6.5u)--(6.5u,6.5u);

%  drawarrow (7.9u,9.5u)--(12.5u,9.5u);
  drawarrow (7.9u,5.5u)--(12.5u,8.5u);
  drawarrow (7.9u,6.5u)--(12.5u,3.5u);
  drawarrow (7.9u,3.5u)--(12.5u,3.5u);
endfig;

beginfig(1)
  path p[];
  dx = 3u;
  p[0] = (0,0)--(dx,0)--(dx,u)--(0,u)--cycle;
  p[1] = p[0] shifted (dx,0);
  p[2] = p[1] shifted (dx,0); % start of inode list
  p[3] = p[2] shifted (dx,0);
  p[4] = p[3] shifted (dx,0);
  p[5] = p[4] shifted (dx,0); % start of data blocks
  p[6] = p[5] shifted (dx,0);
  p[7] = p[6] shifted (dx,0);
  
  label(btex $\cdots$ etex, (3.5*dx,0.5u));
  label(btex $\cdots$ etex, (6.5*dx,0.5u));

  label.bot(btex inode list etex, (3.5*dx,0));
  label.bot(btex data blocks etex, (6.5*dx,0));


  draw (dx,0)--(dx,u) withpen pencircle scaled 2;
  draw (2*dx,0)--(2*dx,u) withpen pencircle scaled 2;
  draw (5*dx,0)--(5*dx,u) withpen pencircle scaled 2;
%  draw (8*dx,0)--(8*dx,u) withpen pencircle scaled 2;
  for i=0 upto 7:
    draw p[i];
  endfor;
  label.bot(btex $\begin{matrix}$boot$\\$block$\end{matrix}$ etex,(0.5*dx,0));
  label.bot(btex $\begin{matrix}$super$\\$block$\end{matrix}$ etex,(1.5*dx,0));  
endfig;

verbatimtex \end{document} etex;
end;
