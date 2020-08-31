function program_inz
  clc;                                              
  clear all;
  options = odeset('MaxStep',0.1);
  [t,x]=ode45('F',[0,500],[0,0],options);
  
  a=0.5*(abs(max(x(:,1)))+abs(min(x(:,1))))
  
  amp40=[0.069658  0.074533   0.078840   0.082568   0.089807  0.096618  0.10458   0.11415   0.12648   0.14144   0.16141   0.18905   0.23403   0.30666   0.29414   0.26836   0.23744   0.20644   0.17831   0.15466  0.13483] 
  ww40 = [0.7       0.72      0.74       0.76	      0.78	    0.8	       0.82	    0.84	   0.86	      0.88	    0.9	      0.92	    0.94	    0.96	    0.98	    1.00	    1.02	    1.04	    1.06	    1.08	  1.1]
  
  amp80=[0.14083    0.15055     0.15910   0.16748     0.18283   0.19619   0.21515   0.23658   0.26530   0.30529   0.47905   0.47947   0.46662   0.44680   0.42197   0.39329   0.36258   0.33135   0.30082   0.27176  0.24458]        
  ww80= [0.7        0.72        0.74      0.76	      0.78	    0.8	      0.82	    0.84	    0.86	    0.88	    0.9	      0.92	    0.94	    0.96	    0.98	    1.00	    1.02	    1.04	    1.06	    1.08	   1.1]
  
  amp120=[0.21552    0.23001     0.24269   0.26057    0.28314   0.30779   0.33994   0.38711   0.61342   0.60634   0.59498   0.57886   0.55805   0.53483   0.50905   0.47959   0.45127   0.42014   0.39045   0.36091  0.33161]    
  ww120= [0.7        0.72        0.74      0.76	      0.78	    0.8	      0.82	    0.84	    0.86	    0.88	    0.9	      0.92	    0.94	    0.96	    0.98	    1.00	    1.02	    1.04	    1.06	    1.08	   1.1]
  
  amp160=[0.29598    0.31510     0.33246   0.36593    0.39849   0.44781   0.71962   0.71273   0.70244   0.68884   0.67204   0.65103   0.62938   0.60253   0.57806   0.55026   0.51998   0.49066   0.46265   0.43335  0.40305]
  ww160= [0.7        0.72        0.74      0.76	      0.78	    0.8	      0.82	    0.84	    0.86	    0.88	    0.9	      0.92	    0.94	    0.96	    0.98	    1.00	    1.02	    1.04	    1.06	    1.08	   1.1]
  
  amp200=[0.38476    0.40819     0.44821   0.49467    0.81030   0.80630   0.79757   0.78545   0.77104   0.75325   0.73458   0.71183   0.68585   0.66286   0.63706   0.60901   0.57929   0.54810   0.52130   0.49426  0.46649]
  ww200= [0.7        0.72        0.74      0.76	      0.78	    0.8	      0.82	    0.84	    0.86	    0.88	    0.9	      0.92	    0.94	    0.96	    0.98	    1.00	    1.02	    1.04	    1.06	    1.08	   1.1]
  
  amp240=[0.48468	0.53429 0.60469 0.61100 0.61719 0.62434  0.63488  0.63495   0.63499   0.63504   0.87897   0.87897   0.87990  0.87920  0.88012 0.88451 0.88514 0.88570 0.88697	0.8879 0.88291	0.87364	0.86192	0.84684	0.82871	0.8094	0.78886	0.76434	0.73688	0.71184	0.68738	0.66121	0.63357	0.60496	0.57545	0.54539	0.5148]
  ww240=[0.7      0.72    0.74    0.741   0.742   0.743    0.744    0.744002  0.744003  0.744004  0.7440045 0.744005  0.74402  0.7442   0.745   0.75    0.751   0.752   0.755   0.76	 0.78	    0.8	    0.82	  0.84	  0.86	  0.88	  0.9	  0.92	   0.94	    0.96	  0.98	  1.00	  1.02	  1.04	  1.06	  1.08	  1.1]
  
  ew=[ 40 80 120 160 200 240 ]
  
  maxamp=[ 0.30666 0.47947 0.61342 0.71962 0.81030 0.8879]
  
 %aproksymacja ew=240
  
  wwamp= [ 0.96    0.92     0.86    0.84     0.78  0.76] 
  amp241=[0.48468	0.53429 0.60469 0.61100 0.61719 0.62434  0.63488  0.63495   0.63499   0.63504   0.87897   0.87897   0.87990  0.87920  0.88012 0.88451 0.88514 0.88570 0.88697	0.8879 ];
  ww241=[0.7      0.72    0.74    0.741   0.742   0.743    0.744    0.744002  0.744003  0.744004  0.7440045 0.744005  0.74402  0.7442   0.745   0.75    0.751   0.752   0.755   0.76	 ];
  
  a1=polyfit(amp241,ww241,5);
  x240=linspace(0.6362,0.8788,2e1);
  ww243=polyval(a1,x240);
  
 %approximation ew=200
 
  p1 = 273.17
  p2 = -785.1
  p3 = 885.75
  p4 = -491.55
  p5 = 134.88
  p6 = -13.977
  
  f1=@(x)  p1.*x.^5 + p2.*x.^4 +...
   p3.*x.^3 + p4.*x.^2 +...
   p5.*x + p6 ;
  x200=linspace(0.51,0.81,1e1);
  ww200x=f1(x200) 
  
 %approximation ew=160
  p1 = 177.19
  p2 = -423.16
  p3 = 397.94
  p4 = -186
  p5 = 43.931
  p6 = -3.4815
  
   f1=@(x)  p1.*x.^5 + p2.*x.^4 +...
   p3.*x.^3 + p4.*x.^2 +...
   p5.*x + p6 ;
  x160=linspace(0.45,0.71,1e1);
  ww160x=f1(x160) 
  
 %approximation ew=120
  p1 = 266.79
  p2 = -503.92
  p3 = 373.94
  p4 = -139.16
  p5 = 26.9
  p6 = -1.4148
  
  f1=@(x)  p1.*x.^5 + p2.*x.^4 +...
   p3.*x.^3 + p4.*x.^2 +...
   p5.*x + p6 ;
  x120=linspace(0.39,0.61,1e1);
  ww120x=f1(x120)
  
 %approximation ew=80
  x80=linspace(0.32,0.46,1e1);
  p1 = 736.29;
  p2 = -1079.6;
  p3 = 619.99;
  p4 = -178.1;
  p5 = 26.648;
  p6 = -0.87041;
  f1=@(x)  p1.*x.^5 + p2.*x.^4 +...
      p3.*x.^3 + p4.*x.^2 +...
      p5.*x + p6 ;
  wwx=f1(x80)
  

  
  figure(1)
  hold on
  grid on
  plot(t,x(:,1))
  xlabel('t [s]')
  ylabel('\phi - heel angle [rad]')
  title('Dependence of the heel angle on time t for Ew = 240 tm and \omega/\omega_o=0.92')
  
  figure(2)
  hold on
  grid on
  plot(x(:,1),x(:,2))
  xlabel('\phi - heel angle [rad]')
  ylabel('d\phi - velocity [rad/s]')
  title('Graph of q and dq over time t = 500 s for Ew = 240 tm and \omega/\omega_o=0.92')
  
  figure(3)
  hold on
  grid on
  plot(ww240,amp240,'o')
  plot(ww200,amp200,'o')
  plot(ww160,amp160,'o')
  plot(ww120,amp120,'o')
  plot(ww80,amp80,'o')
  plot(ww40,amp40,'o')
  plot(wwamp,maxamp,'*')
  plot(ww243,x240,'x')
  plot(wwx,x80,'x')
  plot(ww120x,x120,'x')
  plot(ww160x,x160,'x')
  plot(ww200x,x200,'x')
  xlabel('\omega/\omega_o')
  ylabel('a [rad]')
  title('Resonance curve for increasing heeling moment amplitudes')
  legend('Ew = 240 tm','Ew = 200 tm','Ew = 160 tm','Ew = 120 tm','Ew = 80 tm','Ew = 40 tm', 'max. amplitude') 

  figure(4)
  hold on
  grid on
  plot(ew,maxamp,'k')
  plot(ew,maxamp,'o')
  xlabel('Ew - heeling moment amplitude [tn]')
  ylabel('a - amplitude [rad]')
  title('Maximum values of the amplitudes')
  
  
  disp(a);
  

  
  
