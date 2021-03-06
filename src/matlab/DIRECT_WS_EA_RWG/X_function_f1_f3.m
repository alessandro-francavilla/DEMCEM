function X = X_function_f1_f3(theta, Psi, B, Bm, coef, coefm, N, Nm)
%% X_function_f1_f3

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
% theta, Psi, B, Bm, coef, coefm, N, Nm

% OUTPUT DATA
% X   
%
t2 = B ^ 2;
t4 = 0.1e1 / t2 / B;
t7 = cos(Psi);
t9 = t2 ^ 2;
t10 = 0.1e1 / t9;
t13 = sin(Psi);
t14 = t7 * t13;
t18 = t7 ^ 2;
t19 = sin(theta);
t20 = t18 * t19;
t24 = cos(theta);
t25 = t18 * t24;
t28 = 0.1e1 / t9 / B;
t32 = t18 * t13 * t19;
t36 = t25 * t13;
t46 = 0.1e1 / t2;
t182 = N(1) * (t4 * coef(1) * t7 + t10 * coef(17) * t14 + t10 * coef(15) * t20 + t10 * coef(19) * t25 + t28 * coef(36) * t32 + t28 * coef(40) * t36) + N(7) * t4 * t7 * coef(20) + N(5) * (t46 * coef(6) * t36 + t46 * coef(7) * t32) + N(10) * (t4 * coef(8) * t25 + t4 * coef(9) * t20 + t46 * coef(27) * t7 + t4 * coef(4) * t14) + N(12) * (t46 * coef(2) * t25 + t46 * coef(3) * t20 + t46 * coef(5) * t14) + N(4) * (t46 * coef(29) * t20 + t46 * coef(31) * t25 + t4 * coef(12) * t36 + t4 * coef(13) * t32 + t46 * coef(30) * t14) + N(11) * t46 * t7 * coef(22) + N(2) * (t10 * coef(38) * t25 + t10 * coef(39) * t20 + t28 * coef(24) * t32 + t28 * coef(32) * t36 + t4 * coef(18) * t7 + t10 * coef(42) * t14) + N(6) * (t10 * coef(14) * t20 + t10 * coef(37) * t25 + t4 * coef(16) * t7 + t10 * coef(35) * t14) + N(8) * (t10 * coef(25) * t25 + t10 * coef(26) * t20 + t4 * coef(21) * t7 + t10 * coef(23) * t14) + N(9) * t4 * t7 * coef(41) + N(3) * (t4 * coef(33) * t20 + t4 * coef(34) * t25 + t10 * coef(10) * t36 + t10 * coef(11) * t32 + t46 * coef(43) * t7 + t4 * coef(28) * t14);
t184 = Bm ^ 2;
t185 = t184 ^ 2;
t186 = 0.1e1 / t185;
t194 = 0.1e1 / t185 / Bm;
t205 = 0.1e1 / t184 / Bm;
t218 = 0.1e1 / t184;
t353 = Nm(1) * (t186 * coefm(3) * t25 + t186 * coefm(29) * t20 + t194 * coefm(17) * t32 + t194 * coefm(18) * t36 + t186 * coefm(1) * t14 + t205 * coefm(30) * t7) + Nm(10) * (t205 * coefm(10) * t25 + t205 * coefm(11) * t20 + t218 * coefm(38) * t7 + t205 * coefm(6) * t14) + Nm(5) * (t218 * coefm(8) * t32 + t218 * coefm(9) * t36) + Nm(7) * t205 * t7 * coefm(28) + Nm(11) * t218 * t7 * coefm(31) + Nm(9) * t205 * t7 * coefm(22) + Nm(8) * (t186 * coefm(32) * t25 + t186 * coefm(36) * t20 + t205 * coefm(23) * t7 + t186 * coefm(39) * t14) + Nm(6) * (t186 * coefm(19) * t25 + t186 * coefm(20) * t20 + t205 * coefm(27) * t7 + t186 * coefm(16) * t14) + Nm(12) * (t218 * coefm(4) * t25 + t218 * coefm(5) * t20 + t218 * coefm(7) * t14) + Nm(4) * (t218 * coefm(40) * t20 + t218 * coefm(42) * t25 + t205 * coefm(14) * t32 + t205 * coefm(15) * t36 + t218 * coefm(43) * t14) + Nm(2) * (t186 * coefm(25) * t20 + t186 * coefm(26) * t25 + t194 * coefm(35) * t32 + t194 * coefm(37) * t36 + t205 * coefm(2) * t7 + t186 * coefm(21) * t14) + Nm(3) * (t205 * coefm(33) * t20 + t205 * coefm(34) * t25 + t186 * coefm(12) * t32 + t186 * coefm(13) * t36 + t218 * coefm(24) * t7 + t205 * coefm(41) * t14);
% Output
X = t353 + t182;