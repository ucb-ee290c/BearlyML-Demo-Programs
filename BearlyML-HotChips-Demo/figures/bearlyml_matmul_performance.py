import matplotlib.pyplot as plt
import numpy as np

import numpy as np
import matplotlib.pyplot as plt
import matplotlib

matplotlib.rcParams.update({"font.size": 16})


mtime_rocket_int = np.array([403810, 402574, 402575, 402574, 402574, 402574])
mtime_spaccel_int = np.array([125049, 125049, 125049, 125049, 125048, 125049])

cycle_rocket_int = np.array([40381012, 40257391, 40257546, 40257477, 40257447, 40257460])
cycle_spaccel_int = np.array([12504931, 12504893, 12504872, 12504921, 12504867, 12504914])

mtime_rocket_int_avg = np.mean(mtime_rocket_int)
mtime_spaccel_int_avg = np.mean(mtime_spaccel_int)
cycle_rocket_int_avg = np.mean(cycle_rocket_int)
cycle_spaccel_int_avg = np.mean(cycle_spaccel_int)


mtime_rocket_int_avg /= 500
mtime_spaccel_int_avg /= 500

print(mtime_rocket_int_avg, mtime_spaccel_int_avg)

data = {
    "Rocket Core": mtime_rocket_int_avg,
    "SpMat Accelerator": mtime_spaccel_int_avg
    }

width = 1

br1 = np.arange(2) * width * 2

fig = plt.figure()
ax1 = fig.add_subplot(111)

bars = ax1.bar(br1, data.values(), color=["#f44336", "#2196f3", "#FFF6DC"], width=width)
plt.xticks(br1, data.keys())
ax1.bar_label(bars)
ax1.set_ylim(None, 900)

ax1.set_ylabel("Time taken (ms)")
plt.title("MNIST Performance")

plt.show()


data = {
    "Rocket Core": cycle_rocket_int_avg,
    "SpMat Accelerator": cycle_spaccel_int_avg
    }

width = 1

br1 = np.arange(2) * width * 2

fig = plt.figure()
ax1 = fig.add_subplot(111)

bars = ax1.bar(br1, data.values(), color=["#f44336", "#2196f3", "#FFF6DC"], width=width)
plt.xticks(br1, data.keys())
ax1.bar_label(bars, labels=["{:.2E}".format(data) for data in data.values()])
ax1.set_ylim(None, max(data.values())*1.1)
plt.yticks([])
ax1.set_ylabel("Cycles taken")
plt.title("MNIST Performance")

plt.show()
