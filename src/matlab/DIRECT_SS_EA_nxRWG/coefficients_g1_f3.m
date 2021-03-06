function [coef,coefm] = coefficients_g1_f3(r1,r2,r3,r4,ko,AreaT)
%% coefficients_g1_f3

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
% r1,r2,r3, r4 = point vectors of the triangular element's vertices
% Outer triangle P:(rp1,rp2,rp3)=(r1,r2,r3)
% Inner triangle Q:(rq1,rq2,rq3)=(r2,r1,r4)
% ko = wavenumber
% AreaT = Area of outer triangle

% OUTPUT DATA
% coef   
% coefm
%

c  = zeros(11);
cm = zeros(11);
%
bb = r2-r1;
cc = r3-r1;
dd = r4-r1;
j = sqrt(-1);
% 
t1 = 0.1e1 / AreaT;
t2 = bb(2) ^ 2;
t3 = t1 * t2;
t4 = t3 * cc(1);
t5 = cc(2) * dd(3);
t6 = sqrt(0.3e1);
t7 = t5 * t6;
t8 = t4 * t7;
t10 = bb(3) ^ 2;
t11 = t1 * t10;
t12 = t11 * cc(1);
t13 = cc(3) * dd(2);
t14 = t13 * t6;
t15 = t12 * t14;
t17 = t1 * bb(2);
t18 = cc(2) ^ 2;
t19 = t17 * t18;
t20 = bb(3) * dd(1);
t21 = t20 * t6;
t22 = t19 * t21;
t24 = bb(1) * dd(3);
t25 = t24 * t6;
t26 = t19 * t25;
t28 = t1 * bb(3);
t29 = cc(3) ^ 2;
t31 = bb(1) * dd(2);
t32 = t31 * t6;
t33 = t28 * t29 * t32;
t35 = t1 * bb(1);
t36 = cc(1) ^ 2;
t37 = t35 * t36;
t38 = bb(2) * dd(3);
t39 = t38 * t6;
t40 = t37 * t39;
t42 = t3 * cc(3);
t43 = cc(2) * dd(1);
t44 = t43 * t6;
t45 = t42 * t44;
t47 = bb(1) ^ 2;
t48 = t1 * t47;
t49 = t48 * cc(3);
t50 = cc(1) * dd(2);
t51 = t50 * t6;
t52 = t49 * t51;
t54 = bb(3) * dd(2);
t55 = t54 * t6;
t56 = t37 * t55;
t58 = t1 * t29;
t60 = t58 * bb(2) * t21;
t62 = t1 * cc(1);
t63 = t62 * cc(2);
t66 = t63 * t47 * dd(3) * t6;
t68 = t1 * cc(3);
t72 = t68 * cc(2) * t10 * dd(1) * t6;
t74 = t3 * cc(2);
t75 = t74 * t25;
t77 = t48 * cc(1);
t78 = t77 * t55;
t81 = t48 * cc(2) * t21;
t83 = t28 * cc(3);
t84 = cc(2) * bb(1);
t85 = dd(3) * t6;
t87 = t83 * t84 * t85;
t89 = t68 * cc(1);
t90 = bb(2) * bb(3);
t92 = t89 * t90 * t85;
t94 = t35 * cc(1);
t95 = cc(3) * bb(2);
t96 = dd(1) * t6;
t98 = t94 * t95 * t96;
t100 = -t8 / 0.12e2 + t15 / 0.12e2 - t22 / 0.12e2 + t26 / 0.12e2 - t33 / 0.12e2 - t40 / 0.12e2 + t45 / 0.12e2 - t52 / 0.12e2 + t56 / 0.12e2 + t60 / 0.12e2 + t66 / 0.12e2 - t72 / 0.12e2 - t75 / 0.24e2 - t78 / 0.24e2 + t81 / 0.24e2 + t87 / 0.12e2 - t92 / 0.12e2 + t98 / 0.12e2;
t101 = t17 * cc(2);
t102 = cc(3) * bb(1);
t103 = dd(2) * t6;
t105 = t101 * t102 * t103;
t107 = bb(3) * bb(1);
t109 = t63 * t107 * t96;
t112 = t63 * t90 * t103;
t115 = t1 * t47 * bb(1);
t116 = t115 * t7;
t119 = t1 * t2 * bb(2);
t120 = cc(3) * dd(1);
t122 = t119 * t120 * t6;
t124 = cc(1) * dd(3);
t126 = t119 * t124 * t6;
t128 = t115 * t14;
t131 = t1 * t10 * bb(3);
t132 = t131 * t51;
t134 = t131 * t44;
t136 = t4 * t55;
t138 = t42 * t32;
t140 = t77 * t39;
t142 = bb(2) * dd(1);
t143 = t142 * t6;
t144 = t49 * t143;
t146 = t74 * t21;
t148 = t12 * t39;
t151 = t11 * cc(2) * t25;
t153 = t11 * cc(3);
t154 = t153 * t143;
t156 = t153 * t32;
t158 = -t105 / 0.12e2 - t109 / 0.12e2 + t112 / 0.12e2 - t116 / 0.24e2 - t122 / 0.24e2 + t126 / 0.24e2 + t128 / 0.24e2 - t132 / 0.24e2 + t134 / 0.24e2 - t136 / 0.24e2 + t138 / 0.24e2 + t140 / 0.24e2 - t144 / 0.24e2 + t146 / 0.24e2 + t148 / 0.24e2 - t151 / 0.24e2 - t154 / 0.24e2 + t156 / 0.24e2;
t159 = t100 + t158;
t160 = -t75 - t116 - t136 + t140 + t148 + t134 - t154 - t151 + t128 - t132 + t126 - t122 - t144 + t156 + t146 - t78 + t81 + t138;
t174 = -t8 / 0.18e2 + t15 / 0.18e2 - t22 / 0.18e2 + t26 / 0.18e2 - t33 / 0.18e2 - t40 / 0.18e2 + t45 / 0.18e2 - t52 / 0.18e2 + t56 / 0.18e2 + t60 / 0.18e2 + t66 / 0.18e2 - t72 / 0.18e2 - t75 / 0.72e2;
t189 = -t78 / 0.72e2 + t81 / 0.72e2 + t87 / 0.18e2 - t92 / 0.18e2 + t98 / 0.18e2 - t105 / 0.18e2 - t109 / 0.18e2 + t112 / 0.18e2 - t116 / 0.72e2 - t122 / 0.72e2 + t126 / 0.72e2 + t128 / 0.72e2 - t132 / 0.72e2 + t134 / 0.72e2;
t191 = t6 * t1;
t192 = t36 * cc(1);
t197 = t18 * cc(2);
t206 = t29 * cc(3);
t226 = t191 * t192 * bb(2) * dd(3) / 0.18e2 + t191 * t197 * bb(3) * dd(1) / 0.18e2 - t191 * t192 * bb(3) * dd(2) / 0.18e2 + t191 * t206 * bb(1) * dd(2) / 0.18e2 - t191 * t206 * bb(2) * dd(1) / 0.18e2 - t191 * t197 * bb(1) * dd(3) / 0.18e2 - t136 / 0.72e2 + t138 / 0.72e2 + t140 / 0.72e2 - t144 / 0.72e2 + t146 / 0.72e2 + t148 / 0.72e2 - t151 / 0.72e2;
t229 = t191 * t36;
t230 = t84 * dd(3);
t233 = t191 * t29;
t235 = cc(2) * bb(3) * dd(1);
t238 = t191 * t18;
t240 = bb(3) * cc(1) * dd(2);
t246 = bb(2) * cc(1) * dd(3);
t253 = t102 * dd(2);
t256 = t95 * dd(1);
t265 = -t154 / 0.72e2 + t156 / 0.72e2 - t229 * t230 / 0.18e2 + t233 * t235 / 0.18e2 - t238 * t240 / 0.18e2 - t233 * t230 / 0.18e2 + t233 * t246 / 0.18e2 + t229 * t235 / 0.18e2 + t238 * t246 / 0.18e2 + t229 * t253 / 0.18e2 - t238 * t256 / 0.18e2 - t233 * t240 / 0.18e2 + t238 * t253 / 0.18e2 - t229 * t256 / 0.18e2;
t268 = t131 * t50;
t269 = t268 / 0.24e2;
t270 = t119 * t124;
t271 = t270 / 0.24e2;
t272 = t115 * t5;
t273 = t272 / 0.24e2;
t274 = t131 * t43;
t275 = t274 / 0.24e2;
t276 = t119 * t120;
t277 = t276 / 0.24e2;
t278 = t115 * t13;
t279 = t278 / 0.24e2;
t280 = t48 * t240;
t281 = t280 / 0.24e2;
t284 = t62 * cc(2) * t47 * dd(3);
t288 = t68 * cc(2) * t10 * dd(1);
t291 = t58 * t90 * dd(1);
t295 = t17 * t18 * bb(3) * dd(1);
t297 = t3 * t235;
t298 = t297 / 0.24e2;
t299 = t3 * t253;
t300 = t299 / 0.24e2;
t303 = t3 * cc(3) * cc(2) * dd(1);
t305 = t48 * t256;
t306 = t305 / 0.24e2;
t308 = cc(3) * cc(1) * dd(2);
t309 = t48 * t308;
t313 = t35 * t36 * bb(3) * dd(2);
t315 = t11 * t253;
t316 = t315 / 0.24e2;
t317 = t269 - t271 + t273 - t275 + t277 - t279 + t281 - t284 / 0.12e2 + t288 / 0.12e2 - t291 / 0.12e2 + t295 / 0.12e2 - t298 - t300 - t303 / 0.12e2 + t306 + t309 / 0.12e2 - t313 / 0.12e2 - t316;
t320 = t28 * t29 * bb(1) * dd(2);
t322 = t11 * t246;
t323 = t322 / 0.24e2;
t324 = t11 * t308;
t326 = t3 * t240;
t327 = t326 / 0.24e2;
t330 = t3 * cc(1) * cc(2) * dd(3);
t332 = t3 * t230;
t333 = t332 / 0.24e2;
t336 = t17 * t18 * bb(1) * dd(3);
t340 = t35 * t36 * bb(2) * dd(3);
t342 = t48 * t246;
t343 = t342 / 0.24e2;
t344 = t48 * t235;
t345 = t344 / 0.24e2;
t346 = t11 * t230;
t347 = t346 / 0.24e2;
t348 = t11 * t256;
t349 = t348 / 0.24e2;
t350 = t83 * t230;
t352 = t101 * t253;
t355 = t89 * t90 * dd(3);
t358 = t63 * t90 * dd(2);
t360 = t94 * t256;
t363 = t63 * t107 * dd(1);
t365 = t320 / 0.12e2 - t323 - t324 / 0.12e2 + t327 + t330 / 0.12e2 + t333 - t336 / 0.12e2 + t340 / 0.12e2 - t343 - t345 + t347 + t349 - t350 / 0.12e2 + t352 / 0.12e2 + t355 / 0.12e2 - t358 / 0.12e2 - t360 / 0.12e2 + t363 / 0.12e2;
t367 = t276 - t274 - t278 - t322 - t270 + t272 - t344 - t315 + t346 + t268 - t299 + t348 - t342 + t280 + t326 + t332 + t305 - t297;
t375 = t284 / 0.6e1;
t376 = t288 / 0.6e1;
t377 = t291 / 0.6e1;
t378 = t295 / 0.6e1;
t381 = t303 / 0.6e1;
t383 = t309 / 0.6e1;
t384 = t313 / 0.6e1;
t386 = t268 / 0.12e2 - t270 / 0.12e2 + t272 / 0.12e2 - t274 / 0.12e2 + t276 / 0.12e2 - t278 / 0.12e2 + t280 / 0.12e2 - t375 + t376 - t377 + t378 - t297 / 0.12e2 - t299 / 0.12e2 - t381 + t305 / 0.12e2 + t383 - t384 - t315 / 0.12e2;
t387 = t320 / 0.6e1;
t389 = t324 / 0.6e1;
t391 = t330 / 0.6e1;
t393 = t336 / 0.6e1;
t394 = t340 / 0.6e1;
t405 = t387 - t322 / 0.12e2 - t389 + t326 / 0.12e2 + t391 + t332 / 0.12e2 - t393 + t394 - t342 / 0.12e2 - t344 / 0.12e2 + t346 / 0.12e2 + t348 / 0.12e2 - t350 / 0.6e1 + t352 / 0.6e1 + t355 / 0.6e1 - t358 / 0.6e1 - t360 / 0.6e1 + t363 / 0.6e1;
t407 = t1 * t206;
t410 = t1 * t197;
t413 = t1 * t192;
t422 = t269 - t271 + t273 - t275 + t277 - t279 - t407 * t31 / 0.6e1 + t410 * t24 / 0.6e1 - t413 * t38 / 0.6e1 + t407 * t142 / 0.6e1 - t410 * t20 / 0.6e1 + t413 * t54 / 0.6e1 + t281;
t423 = -t375 + t376 - t377 + t378 - t298 - t300 - t381 + t306 + t383 - t384 - t316 + t387 - t323 - t389;
t425 = t1 * t18;
t428 = t1 * t36;
t435 = t327 + t391 + t333 - t393 + t394 - t343 - t345 + t347 + t349 + t425 * t256 / 0.6e1 - t428 * t253 / 0.6e1 - t428 * t235 / 0.6e1 + t425 * t240 / 0.6e1;
t444 = t428 * t230 - t58 * t235 - t58 * t246 + t58 * t230 + t58 * t240 - t425 * t246 - t425 * t253 + t428 * t256 - t350 + t352 + t355 - t358 - t360 + t363;
%
c(1) = t159;
c(2) = t160 / 0.24e2;
c(3) = t160 / 0.24e2;
c(4) = t174 + t189 + t226 + t265;
c(5) = t317 + t365;
c(6) = t367 / 0.8e1;
c(7) = t159;
c(8) = t159;
c(9) = t367 / 0.8e1;
c(10) = t386 + t405;
c(11) = t422 + t423 + t435 + t444 / 0.6e1;
%
t1 = (ko ^ 2);
t3 = (j ^ 2);
t5 = (0.1e1 / t1 / t3);
t7 = 3 * t5 * c(11);
t10 = (0.1e1 / ko / j);
t12 = 2 * t10 * c(9);
t14 = 2 * t10 * c(8);
t21 = 8 / t1 / ko / t3 / j * c(4);
t23 = 3 * t5 * c(5);
t25 = 2 * t10 * c(6);
t27 = 3 * t5 * c(7);
t29 = 4 * t10 * c(4);
t31 = 2 * t10 * c(1);
t33 = 8 * t5 * c(4);
t35 = 2 * t10 * c(2);
t37 = 2 * t10 * c(3);
t39 = 3 * t5 * c(10);
t41 = 3 * t10 * c(11);
%
coef(1) = t7;
coef(2) = -t12;
coef(3) = -t7;
coef(4) = -t14;
coef(5) = t21;
coef(6) = -t21;
coef(7) = t23;
coef(8) = t25;
coef(9) = t27;
coef(10) = t29;
coef(11) = t31;
coef(12) = t33;
coef(13) = t35;
coef(14) = -t33;
coef(15) = t37;
coef(16) = -t29;
coef(17) = -t39;
coef(18) = c(8);
coef(19) = c(9);
coef(20) = c(4);
coef(21) = -c(4);
coef(22) = t14;
coef(23) = t41;
coef(24) = c(11);
coef(25) = -c(11);
coef(26) = t7;
coef(27) = -t7;
coef(28) = 3 * t10 * c(10);
coef(29) = c(10);
coef(30) = -t31;
coef(31) = -t23;
coef(32) = -t27;
coef(33) = t12;
coef(34) = -t41;
coef(35) = -t25;
coef(36) = -t35;
coef(37) = -t37;
coef(38) = t21;
coef(39) = -t21;
coef(40) = 3 * t10 * c(7);
coef(41) = 3 * t10 * c(5);
coef(42) = t39;
coef(43) = c(6);
coef(44) = c(2);
coef(45) = c(1);
coef(46) = c(5);
coef(47) = c(3);
coef(48) = c(7);
%
t1 = 0.1e1 / AreaT;
t2 = bb(2) ^ 2;
t4 = t1 * t2 * bb(2);
t5 = cc(1) * dd(3);
t6 = sqrt(0.3e1);
t7 = t5 * t6;
t8 = t4 * t7;
t9 = bb(1) ^ 2;
t11 = t1 * t9 * bb(1);
t12 = cc(2) * dd(3);
t13 = t12 * t6;
t14 = t11 * t13;
t15 = cc(3) * dd(2);
t16 = t15 * t6;
t17 = t11 * t16;
t18 = t1 * t2;
t19 = t18 * cc(2);
t20 = bb(1) * dd(3);
t21 = t20 * t6;
t22 = t19 * t21;
t23 = bb(3) ^ 2;
t24 = t1 * t23;
t25 = t24 * cc(1);
t26 = bb(2) * dd(3);
t27 = t26 * t6;
t28 = t25 * t27;
t29 = t24 * cc(3);
t30 = bb(2) * dd(1);
t31 = t30 * t6;
t32 = t29 * t31;
t33 = cc(3) * dd(1);
t34 = t33 * t6;
t35 = t4 * t34;
t36 = t1 * t9;
t37 = t36 * cc(1);
t38 = bb(3) * dd(2);
t39 = t38 * t6;
t40 = t37 * t39;
t41 = bb(3) * dd(1);
t42 = t41 * t6;
t43 = t19 * t42;
t44 = t24 * cc(2);
t45 = t44 * t21;
t46 = t37 * t27;
t47 = t36 * cc(3);
t48 = t47 * t31;
t49 = t36 * cc(2);
t50 = t49 * t42;
t51 = t18 * cc(1);
t52 = t51 * t39;
t54 = t1 * t23 * bb(3);
t55 = cc(1) * dd(2);
t56 = t55 * t6;
t57 = t54 * t56;
t58 = bb(1) * dd(2);
t59 = t58 * t6;
t60 = t29 * t59;
t61 = cc(2) * dd(1);
t62 = t61 * t6;
t63 = t54 * t62;
t64 = t18 * cc(3);
t65 = t64 * t59;
t66 = -t8 + t14 - t17 + t22 - t28 + t32 + t35 + t40 - t43 + t45 - t46 + t48 - t50 + t52 + t57 - t60 - t63 - t65;
t67 = t11 * t15;
t68 = t11 * t12;
t69 = t4 * t33;
t71 = cc(1) * bb(2) * dd(3);
t72 = t36 * t71;
t73 = t4 * t5;
t74 = t54 * t61;
t75 = cc(3) * bb(2);
t76 = t75 * dd(1);
t77 = t24 * t76;
t79 = cc(1) * bb(3) * dd(2);
t80 = t18 * t79;
t81 = t54 * t55;
t83 = cc(2) * bb(3) * dd(1);
t84 = t18 * t83;
t85 = cc(2) * bb(1);
t86 = t85 * dd(3);
t87 = t24 * t86;
t88 = t24 * t71;
t89 = t36 * t79;
t90 = cc(3) * bb(1);
t91 = t90 * dd(2);
t92 = t18 * t91;
t93 = t18 * t86;
t94 = t36 * t76;
t95 = t24 * t91;
t96 = t36 * t83;
t97 = -t67 + t68 + t69 - t72 - t73 - t74 + t77 + t80 + t81 - t84 + t87 - t88 + t89 - t92 + t93 + t94 - t95 - t96;
t105 = t1 * cc(3) * cc(1);
t106 = bb(3) * bb(2);
t107 = dd(3) * t6;
t109 = t105 * t106 * t107;
t112 = t1 * cc(2) * cc(1);
t113 = dd(2) * t6;
t115 = t112 * t106 * t113;
t117 = t1 * bb(3);
t118 = t117 * cc(3);
t120 = t118 * t85 * t107;
t122 = t1 * bb(2);
t123 = t122 * cc(2);
t125 = t123 * t90 * t113;
t127 = t1 * bb(1);
t128 = t127 * cc(1);
t129 = dd(1) * t6;
t131 = t128 * t75 * t129;
t133 = bb(1) * bb(3);
t135 = t112 * t133 * t129;
t143 = -t8 / 0.24e2 + t14 / 0.24e2 - t17 / 0.24e2 + t35 / 0.24e2 + t57 / 0.24e2 - t63 / 0.24e2 + t109 / 0.12e2 - t115 / 0.12e2 - t120 / 0.12e2 + t125 / 0.12e2 - t131 / 0.12e2 + t135 / 0.12e2 + t22 / 0.24e2 - t28 / 0.24e2 + t32 / 0.24e2 + t40 / 0.24e2 - t43 / 0.24e2 + t45 / 0.24e2;
t150 = cc(3) ^ 2;
t151 = t1 * t150;
t153 = t151 * bb(1) * t39;
t155 = t25 * t16;
t157 = cc(2) ^ 2;
t158 = t122 * t157;
t159 = t158 * t21;
t161 = t158 * t42;
t163 = t64 * t62;
t165 = cc(1) ^ 2;
t166 = t127 * t165;
t167 = t166 * t39;
t169 = t166 * t27;
t171 = t51 * t13;
t173 = t47 * t56;
t175 = t44 * t34;
t178 = t117 * t150 * t31;
t180 = t49 * t7;
t182 = -t46 / 0.24e2 + t48 / 0.24e2 - t50 / 0.24e2 + t52 / 0.24e2 - t60 / 0.24e2 - t65 / 0.24e2 + t153 / 0.12e2 - t155 / 0.12e2 - t159 / 0.12e2 + t161 / 0.12e2 - t163 / 0.12e2 - t167 / 0.12e2 + t169 / 0.12e2 + t171 / 0.12e2 + t173 / 0.12e2 + t175 / 0.12e2 - t178 / 0.12e2 - t180 / 0.12e2;
t183 = t143 + t182;
t184 = t72 / 0.24e2;
t185 = t77 / 0.24e2;
t186 = t80 / 0.24e2;
t187 = t84 / 0.24e2;
t188 = t87 / 0.24e2;
t189 = t88 / 0.24e2;
t190 = t89 / 0.24e2;
t191 = t92 / 0.24e2;
t192 = t93 / 0.24e2;
t193 = t94 / 0.24e2;
t194 = t95 / 0.24e2;
t195 = t96 / 0.24e2;
t198 = -t184 + t185 + t186 - t187 + t188 - t189 + t190 - t191 + t192 + t193 - t194 - t195 + t151 * t79 / 0.6e1;
t200 = t151 * t133 * dd(2);
t204 = t122 * t157 * bb(1) * dd(3);
t206 = cc(1) * cc(2) * dd(3);
t207 = t18 * t206;
t209 = cc(1) * cc(3) * dd(2);
t210 = t24 * t209;
t213 = t127 * t165 * bb(2) * dd(3);
t214 = t36 * t206;
t216 = cc(2) * cc(3) * dd(1);
t217 = t24 * t216;
t220 = t117 * t150 * bb(2) * dd(1);
t223 = t122 * t157 * bb(3) * dd(1);
t224 = t18 * t216;
t225 = t36 * t209;
t228 = t127 * t165 * bb(3) * dd(2);
t229 = t1 * t157;
t231 = t200 + t151 * t86 - t204 + t207 - t210 + t213 - t214 + t217 - t220 + t223 - t224 + t225 - t228 - t229 * t71;
t235 = t1 * t165;
t253 = t112 * t133 * dd(1);
t254 = t253 / 0.6e1;
t255 = t67 / 0.24e2;
t256 = t68 / 0.24e2;
t257 = t69 / 0.24e2;
t258 = -t229 * t91 / 0.6e1 + t235 * t76 / 0.6e1 + t235 * t86 / 0.6e1 - t151 * t83 / 0.6e1 - t151 * t71 / 0.6e1 + t229 * t79 / 0.6e1 + t229 * t76 / 0.6e1 - t235 * t91 / 0.6e1 - t235 * t83 / 0.6e1 + t254 - t255 + t256 + t257;
t259 = t73 / 0.24e2;
t260 = t74 / 0.24e2;
t261 = t81 / 0.24e2;
t262 = t150 * cc(3);
t263 = t1 * t262;
t266 = t157 * cc(2);
t267 = t1 * t266;
t270 = t165 * cc(1);
t271 = t1 * t270;
t281 = t105 * t106 * dd(3);
t282 = t281 / 0.6e1;
t284 = t112 * t106 * dd(2);
t285 = t284 / 0.6e1;
t286 = t118 * t86;
t287 = t286 / 0.6e1;
t288 = t123 * t91;
t289 = t288 / 0.6e1;
t290 = t128 * t76;
t291 = t290 / 0.6e1;
t292 = -t259 - t260 + t261 - t263 * t58 / 0.6e1 + t267 * t20 / 0.6e1 - t271 * t26 / 0.6e1 + t263 * t30 / 0.6e1 - t267 * t41 / 0.6e1 + t271 * t38 / 0.6e1 + t282 - t285 - t287 + t289 - t291;
t313 = t72 / 0.12e2 - t77 / 0.12e2 - t80 / 0.12e2 + t84 / 0.12e2 - t87 / 0.12e2 + t88 / 0.12e2 - t89 / 0.12e2 + t92 / 0.12e2 - t93 / 0.12e2 - t94 / 0.12e2 + t95 / 0.12e2 + t96 / 0.12e2 - t200 / 0.6e1 + t204 / 0.6e1 - t207 / 0.6e1 + t210 / 0.6e1 - t213 / 0.6e1 + t214 / 0.6e1;
t326 = -t217 / 0.6e1 + t220 / 0.6e1 - t223 / 0.6e1 + t224 / 0.6e1 - t225 / 0.6e1 + t228 / 0.6e1 - t254 + t67 / 0.12e2 - t68 / 0.12e2 - t69 / 0.12e2 + t73 / 0.12e2 + t74 / 0.12e2 - t81 / 0.12e2 - t282 + t285 + t287 - t289 + t291;
t340 = t6 * t1;
t341 = t340 * t157;
t344 = t8 / 0.72e2 - t14 / 0.72e2 + t17 / 0.72e2 - t35 / 0.72e2 - t57 / 0.72e2 + t63 / 0.72e2 - t109 / 0.18e2 + t115 / 0.18e2 + t120 / 0.18e2 - t125 / 0.18e2 + t131 / 0.18e2 - t135 / 0.18e2 - t341 * t79 / 0.18e2;
t345 = t340 * t150;
t348 = t340 * t165;
t367 = t345 * t83 + t345 * t71 - t348 * t76 - t345 * t86 - t345 * t79 - t341 * t76 + t341 * t71 + t348 * t91 + t348 * t83 - t348 * t86 + t341 * t91 + t340 * t262 * bb(1) * dd(2) + t340 * t270 * bb(2) * dd(3) - t340 * t266 * bb(1) * dd(3);
t391 = t340 * t266 * bb(3) * dd(1) / 0.18e2 - t340 * t262 * bb(2) * dd(1) / 0.18e2 - t340 * t270 * bb(3) * dd(2) / 0.18e2 - t22 / 0.72e2 + t28 / 0.72e2 - t32 / 0.72e2 - t40 / 0.72e2 + t43 / 0.72e2 - t45 / 0.72e2 + t46 / 0.72e2 - t48 / 0.72e2 + t50 / 0.72e2 - t52 / 0.72e2;
t406 = t60 / 0.72e2 + t65 / 0.72e2 - t153 / 0.18e2 + t155 / 0.18e2 + t159 / 0.18e2 - t161 / 0.18e2 + t163 / 0.18e2 + t167 / 0.18e2 - t169 / 0.18e2 - t171 / 0.18e2 - t173 / 0.18e2 - t175 / 0.18e2 + t178 / 0.18e2 + t180 / 0.18e2;
t415 = -t184 + t185 + t186 - t187 + t188 - t189 + t190 - t191 + t192 + t193 - t194 - t195 + t200 / 0.12e2 - t204 / 0.12e2 + t207 / 0.12e2 - t210 / 0.12e2 + t213 / 0.12e2 - t214 / 0.12e2;
t428 = t217 / 0.12e2 - t220 / 0.12e2 + t223 / 0.12e2 - t224 / 0.12e2 + t225 / 0.12e2 - t228 / 0.12e2 + t253 / 0.12e2 - t255 + t256 + t257 - t259 - t260 + t261 + t281 / 0.12e2 - t284 / 0.12e2 - t286 / 0.12e2 + t288 / 0.12e2 - t290 / 0.12e2;
%
cm(1) = t66 / 0.24e2;
cm(2) = -t66 / 0.24e2;
cm(3) = t97 / 0.8e1;
cm(4) = t183;
cm(5) = -t183;
cm(6) = -t97 / 0.8e1;
cm(7) = t183;
cm(8) = t198 + t231 / 0.6e1 + t258 + t292;
cm(9) = t313 + t326;
cm(10) = t344 + t367 / 0.18e2 + t391 + t406;
cm(11) = t415 + t428;
%
t1 = (ko ^ 2);
t3 = (j ^ 2);
t5 = (0.1e1 / t1 / t3);
t7 = 3 * t5 * cm(11);
t10 = (0.1e1 / ko / j);
t12 = 2 * t10 * cm(1);
t14 = 4 * t10 * cm(10);
t16 = 2 * t10 * cm(3);
t18 = 3 * t5 * cm(4);
t20 = 2 * t10 * cm(7);
t22 = 2 * t10 * cm(2);
t24 = 8 * t5 * cm(10);
t26 = 3 * t5 * cm(9);
t30 = 3 * t10 * cm(8);
t32 = 2 * t10 * cm(6);
t39 = 8 / t1 / ko / t3 / j * cm(10);
t41 = 2 * t10 * cm(5);
t43 = 3 * t5 * cm(8);
%
coefm(1) = cm(5);
coefm(2) = cm(10);
coefm(3) = cm(6);
coefm(4) = -cm(10);
coefm(5) = t7;
coefm(6) = t12;
coefm(7) = -t14;
coefm(8) = t16;
coefm(9) = t18;
coefm(10) = t14;
coefm(11) = t20;
coefm(12) = t22;
coefm(13) = -t24;
coefm(14) = t24;
coefm(15) = -t26;
coefm(16) = cm(9);
coefm(17) = 3 * t10 * cm(9);
coefm(18) = -t30;
coefm(19) = t32;
coefm(20) = t30;
coefm(21) = -t39;
coefm(22) = t39;
coefm(23) = -t20;
coefm(24) = -t18;
coefm(25) = -t7;
coefm(26) = t41;
coefm(27) = -t12;
coefm(28) = -t22;
coefm(29) = -t16;
coefm(30) = cm(8);
coefm(31) = -cm(8);
coefm(32) = t43;
coefm(33) = -t43;
coefm(34) = t43;
coefm(35) = -t32;
coefm(36) = -t41;
coefm(37) = -t39;
coefm(38) = -t43;
coefm(39) = cm(7);
coefm(40) = cm(2);
coefm(41) = cm(3);
coefm(42) = cm(4);
coefm(43) = cm(11);
coefm(44) = cm(1);
coefm(45) = 3 * t10 * cm(4);
coefm(46) = 3 * t10 * cm(11);
coefm(47) = t26;
coefm(48) = t39;