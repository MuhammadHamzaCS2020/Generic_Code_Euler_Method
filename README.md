# Generic_Code_Euler_Method
This Code written in MATLAB for Euler Method


# Informal geometrical description
Consider the problem of calculating the shape of an unknown curve which starts at a given point and satisfies a given differential equation. Here, a differential equation can be thought of as a formula by which the slope of the tangent line to the curve can be computed at any point on the curve, once the position of that point has been calculated.

The idea is that while the curve is initially unknown, its starting point, which we denote by {\displaystyle A_{0},} A_{0}, is known (see the picture on top right). Then, from the differential equation, the slope to the curve at {\displaystyle A_{0}} A_{0} can be computed, and so, the tangent line.

Take a small step along that tangent line up to a point {\displaystyle A_{1}.} A_{1}. Along this small step, the slope does not change too much, so {\displaystyle A_{1}} A_{1} will be close to the curve. If we pretend that {\displaystyle A_{1}} A_{1} is still on the curve, the same reasoning as for the point {\displaystyle A_{0}} A_{0} above can be used. After several steps, a polygonal curve {\displaystyle A_{0}A_{1}A_{2}A_{3}\dots } A_{0}A_{1}A_{2}A_{3}\dots  is computed. In general, this curve does not diverge too far from the original unknown curve, and the error between the two curves can be made small if the step size is small enough and the interval of computation is finite:[2]

{\displaystyle y'(t)=f(t,y(t)),\qquad y(t_{0})=y_{0}.} {\displaystyle y'(t)=f(t,y(t)),\qquad y(t_{0})=y_{0}.}
Choose a value {\displaystyle h} h for the size of every step and set {\displaystyle t_{n}=t_{0}+nh} t_{n}=t_{0}+nh. Now, one step of the Euler method from {\displaystyle t_{n}} t_{n} to {\displaystyle t_{n+1}=t_{n}+h} t_{n+1}=t_{n}+h is:[3]

{\displaystyle y_{n+1}=y_{n}+hf(t_{n},y_{n}).} y_{n+1}=y_{n}+hf(t_{n},y_{n}).
The value of {\displaystyle y_{n}} y_{n} is an approximation of the solution to the ODE at time {\displaystyle t_{n}} t_{n}: {\displaystyle y_{n}\approx y(t_{n})} y_{n}\approx y(t_{n}). The Euler method is explicit, i.e. the solution {\displaystyle y_{n+1}} y_{n+1} is an explicit function of {\displaystyle y_{i}} y_{i} for {\displaystyle i\leq n} i\leq n.

While the Euler method integrates a first-order ODE, any ODE of order N can be represented as a first-order ODE: to treat the equation

{\displaystyle y^{(N)}(t)=f(t,y(t),y'(t),\ldots ,y^{(N-1)}(t))} y^{(N)}(t)=f(t,y(t),y'(t),\ldots ,y^{(N-1)}(t)),
we introduce auxiliary variables {\displaystyle z_{1}(t)=y(t),z_{2}(t)=y'(t),\ldots ,z_{N}(t)=y^{(N-1)}(t)} z_{1}(t)=y(t),z_{2}(t)=y'(t),\ldots ,z_{N}(t)=y^{(N-1)}(t) and obtain the equivalent equation:

{\displaystyle \mathbf {z} '(t)={\begin{pmatrix}z_{1}'(t)\\\vdots \\z_{N-1}'(t)\\z_{N}'(t)\end{pmatrix}}={\begin{pmatrix}y'(t)\\\vdots \\y^{(N-1)}(t)\\y^{(N)}(t)\end{pmatrix}}={\begin{pmatrix}z_{2}(t)\\\vdots \\z_{N}(t)\\f(t,z_{1}(t),\ldots ,z_{N}(t))\end{pmatrix}}} \mathbf {z} '(t)={\begin{pmatrix}z_{1}'(t)\\\vdots \\z_{N-1}'(t)\\z_{N}'(t)\end{pmatrix}}={\begin{pmatrix}y'(t)\\\vdots \\y^{(N-1)}(t)\\y^{(N)}(t)\end{pmatrix}}={\begin{pmatrix}z_{2}(t)\\\vdots \\z_{N}(t)\\f(t,z_{1}(t),\ldots ,z_{N}(t))\end{pmatrix}}
This is a first-order system in the variable {\displaystyle \mathbf {z} (t)} \mathbf {z} (t) and can be handled by Euler's method or, in fact, by any other scheme for first-order systems.[4]
