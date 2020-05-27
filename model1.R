'
#Note, the data contain x1-3 and y1-3
#Latent mean Structure with intercepts

kappa =~ 1*x1 + 1*x2 + 1*x3
omega =~ 1*y1 + 1*y2 + 1*y3

x1 ~ mu1*1 #intercepts
x2 ~ mu2*1
x3 ~ mu3*1
y1 ~ pi1*1
y2 ~ pi2*1
y3 ~ pi3*1

kappa ~~ kappa #variance
omega ~~ omega #variance
kappa ~~ omega #covariance

#laten vars for AR and cross-lagged effects
p1 =~ 1*x1 #each factor loading set to 1
p2 =~ 1*x2
p3 =~ 1*x3
q1 =~ 1*y1
q2 =~ 1*y2
q3 =~ 1*y3

#constrain autoregression and cross lagged effects to be the same across both lags.
p3 ~ alpha*p2 + beta*q2
p2 ~ alpha*p1 + beta*q1

q3 ~ delta*q2 + gamma*p2
q2 ~ delta*q1 + gamma*p1

p1 ~~ p1 #variance
p2 ~~ u*p2
p3 ~~ u*p3
q1 ~~ q1 #variance
q2 ~~ v*q2
q3 ~~ v*q3

p1 ~~ q1 #p1 and q1 covariance
p2 ~~ uv*q2 #p2 and q2 covariance should also be constrained to be the same as
p3 ~~ uv*q3 #p3 and q3 covariance'
