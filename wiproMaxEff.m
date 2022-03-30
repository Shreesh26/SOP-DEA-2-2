x = optimvar("x", "LowerBound",0);
y = optimvar("y", "LowerBound",0);
z = optimvar("z", "LowerBound",0);
%Wipro max efficiency optimization problem
prob = optimproblem;
prob.Objective =(2.583*z);
prob.Constraints.cons = (6.533*x+2.317*y )==1;
prob.Constraints.cons1 = (4.616*z)-(6.533*x+2.317*y ) <= 0;
prob.Constraints.cons3 = (8.303*z)-(6.533*x+2.317*y ) <= 0;
prob.Constraints.cons5 = (2.583*z)-(6.533*x+2.317*y ) <= 0;
prob.Constraints.cons7 = (16.169*z)-(6.533*x+2.317*y ) <= 0;
prob.Constraints.cons9 = (0.973*z)-(6.533*x+2.317*y ) <= 0;

sol = solve(prob)