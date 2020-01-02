from anti_Helmholtz_eq import anti_H
from numpy import arange as arra
import numpy as np 
from matplotlib import pyplot as plt 
import math

I = 1000 #(A)
a = 0.07 #(m)
d = 0.09 #(m)
m0 = 4*math.pi*math.pow(10,-7)

z = arra(-0.1,0.11,0.001) #(m)
B = np.empty(211)

for i in range(211):
    B[i] = anti_H(I,z[i],a,d)   

plt.text(-7, -4, r'I = 1000A, a = 7cm, d =9cm', {'color': 'b', 'fontsize': 10})
plt.title("anti_Helmholtz coil B_field") 
plt.xlabel("z-axis (cm)") 
plt.ylabel("B-field(G)") 
plt.plot(100*z,B) 
plt.show()