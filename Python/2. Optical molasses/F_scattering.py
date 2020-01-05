import math
hbar = 6.626*pow(10,-34)
l = 780.241209*pow(10,-9)
k = 2*math.pi/l
Gamma = 2*math.pi*6.0659*pow(10,6)
A = hbar*k*Gamma/2
G = pow(Gamma,2)/4

def F_scatt(detuning,Rabi_freq):
    s = pow(Rabi_freq,2)/2
    F = A*s/(pow(detuning,2)+s+G)
    return F