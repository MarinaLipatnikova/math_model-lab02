k=14.1;
fi=3*%pi/4;
function dr=f(tetha,r)
    dr=r/sqrt(15.21);
endfunction
r0=k/2.9;
tetha0=-%pi;
tetha=0:0.01:2*%pi;
r=ode(r0,tetha0,tetha,f);
function xt=f2(t)
    xt=tan(fi)*t;
endfunction
t=0:1:100;
polarplot(tetha,r,style=color('purple'));
plot2d(t,f2(t),style=color('green'));
