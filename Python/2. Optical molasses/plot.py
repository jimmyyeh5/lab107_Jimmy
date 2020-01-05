from F_scattering import F_scatt
import F_scattering
from numpy import arange as arra
import numpy as np 
from matplotlib import pyplot as plt 
import math

Gamma = 2*math.pi*6.0659*pow(10,6)
l = 780.241209*pow(10,-9)
k = 2*math.pi/l
N = 300
v = arra(-N,N,1) #(m/s)
F_plus = np.empty(2*N)
F_minus = np.empty(2*N)
F_molasses1 = np.empty(2*N)
F_molasses2 = np.empty(2*N)

detuning = -10*Gamma
detuningplus = detuning+k*v
detuningminus = detuning-k*v

Rabi_freq = pow(10,9)

for i in range(2*N):
    F_plus[i] = -F_scatt(detuning + k*v[i],Rabi_freq)
    F_minus[i] = F_scatt(detuning - k*v[i],Rabi_freq)
    F_molasses1[i] =  F_minus[i] + F_plus[i]

detuning = -15*Gamma
detuningplus = detuning+k*v
detuningminus = detuning-k*v

for i in range(2*N):
    F_plus[i] = -F_scatt(detuning + k*v[i],Rabi_freq)
    F_minus[i] = F_scatt(detuning - k*v[i],Rabi_freq)
    F_molasses2[i] =  F_minus[i] + F_plus[i]


plt.title("F-v") 
plt.xlabel("velocity") 
plt.ylabel("Force") 
plt.plot(v,F_molasses1)
plt.plot(v,F_molasses2)
#plt.plot(v,F_minus)
#plt.plot(v,F_plus) 
plt.show()