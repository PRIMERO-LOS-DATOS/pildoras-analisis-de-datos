import numpy as np
import matplotlib.pyplot as plt

x=np.array(r.cars['speed'])
y=np.array(r.cars['dist'])


plt.clf()
plt.scatter(x,y)
plt.show()
