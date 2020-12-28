# two-point-BVP
exploring the Two Point Boundary-Value Solver for the analysis of the heat diffusion in an infinitesimally thin wire.

Our goal is to solve this problem using a shooting method with a third-order Runge-Kutta method.

After implementing the third-order Runge-Kutta method, we can use it
to solve the corresponding first-order initial-value system taking n=100 spatial
steps. This is accomplished using a series of for loops within the function we create, rk.m. 
