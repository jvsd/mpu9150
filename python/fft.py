import numpy as np
import time
import struct
from scipy import fft
import matplotlib.pyplot as plt


def plotspectrum(y,Fs,color):
    """
    Plots a Single-Sided Amplitude Spectrum of y(t)
    """
    #subtract mean
    y_temp=y-y.mean()
    y = np.copy(y_temp)
    n = len(y) # length of the signal
    k = np.arange(n)
    T = n/Fs
    frq = k/T # two sides frequency range
    frq = frq[range(n/2)] # one side frequency range

    Y = fft(y)/n # fft computing and normalization
    Y = Y[range(n/2)]

    plt.plot(frq,abs(Y),color,rasterized=True) # plotting the spectrum
    plt.xlabel('Freq (Hz)')
    plt.ylabel('|Y(freq)|')

data = np.loadtxt('out.txt')
a = data[:,0:3]/4092.
g = data[:,3:6]/65.5
t = data[:,-1]

dt = []
for x in range(len(data)-2):
    dt.append(data[x+1,-1] - data[x,-1])
dt = np.asarray(dt)
Fs = 1/(dt.mean()/1000000.)

plotspectrum(data[:,0],Fs,'b')
