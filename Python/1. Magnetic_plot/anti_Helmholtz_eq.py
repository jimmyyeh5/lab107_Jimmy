import math
def anti_H(I,z,a,d):
    m0 = 4*math.pi*pow(10,-7)
    B_anti = m0*I/(2*a)*(pow(1+pow(z/a-d/(2*a),2),-3/2)-pow(1+pow(z/a+d/(2*a),2),-3/2))*10000
    return B_anti