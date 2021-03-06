%% Example for SS_VA_nxRWG

%  Licensing: This code is distributed under the GNU LGPL license. 

%  Modified:  20 September 2011

%  Author:    Athanasios Polimeridis

% References

% A. G. Polimeridis and T. V. Yioultsis, �On the direct evaluation of weakly singular
% integrals in Galerkin mixed potential integral equation formulations,� IEEE Trans.
% Antennas Propag., vol. 56, no. 9, pp. 3011-3019, Sep. 2008.

% A. G. Polimeridis and J. R. Mosig, �Complete semi-analytical treatment of weakly
% singular integrals on planar triangles via the direct evaluation method,� Int. J.
% Numerical Methods Eng., vol. 83, pp. 1625-1650, 2010.

% A. G. Polimeridis, J. M. Tamayo, J. M. Rius and J. R. Mosig, �Fast and accurate
% computation of hyper-singular integrals in Galerkin surface integral equation
% formulations via the direct evaluation method,� IEEE Trans.
% Antennas Propag., vol. 59, no. 6, pp. 2329-2340, Jun. 2011.

% A. G. Polimeridis and J. R. Mosig, �On the direct evaluation of surface integral
% equation impedance matrix elements involving point singularities,� IEEE Antennas
% Wireless Propag. Lett., vol. 10, pp. 599-602, 2011.

% INPUT DATA
% r1,r2,r3,r4,r5 = point vectors of the triangular element's vertices
% Outer triangle P:(rp1,rp2,rp3)=(r1,r2,r3)
% Inner triangle Q:(rq1,rq2,rq3)=(r1,r4,r5)

% global ko = wavenumber
% N_theta_p = order of the GL quadrature for the 1-D smooth integral over theta_p
% N_theta_q = order of the GL quadrature for the 1-D smooth integral over theta_q
% N_psi     = order of the GL quadrature for the 1-D smooth integral over Psi

% OUTPUT DATA
% I_DE(9)   = scalar and potential 4-D strongly singular integrals
%             I_DE(1)  = I_g1_f1
%             I_DE(2)  = I_g1_f2
%             I_DE(3)  = I_g1_f3
%             I_DE(4)  = I_g2_f1
%             I_DE(5)  = I_g2_f2
%             I_DE(6)  = I_g2_f3
%             I_DE(7)  = I_g3_f1
%             I_DE(8)  = I_g3_f2
%             I_DE(9)  = I_g3_f3
%

clc
clear all;
format long;

global ko
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r1 = [1;1;1];
r2 = [2;1;1];
r3 = [1;2;1];
r4 = [0;1;2];
r5 = [0;2;2];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ko    = 1;

Np_1D = 10;

N_theta_p   = Np_1D;
N_theta_q   = Np_1D;
N_psi       = Np_1D;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tic  
for ii=1:100
[I_DE] = DIRECT_SS_VA_nxRWG(r1,r2,r3,r4,r5, N_theta_p, N_theta_q, N_psi);
end
Time = toc/100*1000;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      PRINT RESULTS                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('Np_1D: %d \n', Np_1D)
fprintf('RunTime: %f [msec] \n\n', Time)
fprintf('I_g1_f1: (%4.16e, %4.16e) \n', real(I_DE(1)),imag(I_DE(1)))
fprintf('I_g1_f2: (%4.16e, %4.16e) \n', real(I_DE(2)),imag(I_DE(2)))
fprintf('I_g1_f3: (%4.16e, %4.16e) \n', real(I_DE(3)),imag(I_DE(3)))
fprintf('I_g2_f1: (%4.16e, %4.16e) \n', real(I_DE(4)),imag(I_DE(4)))
fprintf('I_g2_f2: (%4.16e, %4.16e) \n', real(I_DE(5)),imag(I_DE(5)))
fprintf('I_g2_f3: (%4.16e, %4.16e) \n', real(I_DE(6)),imag(I_DE(6)))
fprintf('I_g3_f1: (%4.16e, %4.16e) \n', real(I_DE(7)),imag(I_DE(7)))
fprintf('I_g3_f2: (%4.16e, %4.16e) \n', real(I_DE(8)),imag(I_DE(8)))
fprintf('I_g3_f3: (%4.16e, %4.16e) \n', real(I_DE(9)),imag(I_DE(9)))



