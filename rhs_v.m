function rhs=rhs_v(u,v,h,nx,ny,dx,dy,g,f,nifcor,nifwind,nifad)
	x=2:nx+1; y=2:ny+1;
	rhs = nifad*nifwind*(-u(y,x).*(v(y,x+1)-v(y,x-1))/(2*dx) ...
  		                 -v(y,x).*(v(y+1,x)-v(y-1,x))/(2*dy) )...
	      -nifwind*g*(h(y+1,x)-h(y-1,x))/(2*dy) ...
		  -nifcor*f*u(y,x);
end
