function xp=F(t,x)
  D=3472;
  I=8311;
  D1=204,5;
  D12=2453;
  D2=187;
  k1=0.54341088;
  k3=-0.60120237;
  k5=0.3599806;
  
  w0=sqrt(k1*D/I);
  
  xp=zeros(2,1); % since output must be a column vector
  xp(1)=x(2);
  xp(2)=-1/I*(D1+D12*(x(1))^2)*x(2)-D2/I*x(2)*abs(x(2))-D/I*(k1*x(1)+k3*(x(1))^3+k5*(x(1))^5)-240/I*cos(0.92*w0*t);