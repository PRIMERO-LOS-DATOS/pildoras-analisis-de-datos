import numpy as np
import matplotlib.pyplot as plt

x = np.array(r.BOD["Time"])
y= np.array(r.BOD["demand"])


plt.clf()
plt.plot(x,y)
plt.show()
