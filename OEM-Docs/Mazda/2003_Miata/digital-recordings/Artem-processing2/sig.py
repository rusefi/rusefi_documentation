import csv
import numpy as np
from matplotlib import pyplot as plt
import time
import os
import sys

path_dir = r'last_data'


all_file_list = os.listdir(path_dir)
csv_list = filter(lambda x: x.endswith('.csv'), all_file_list)
path_csv_list = []


for i in csv_list:
    path_csv_list.append(path_dir + '\\' + i)


t_start = time.time()





def parse_data(path_file_idle):
    data = np.array([[]])
    time_s = []
    crank = []
    with open(path_file_idle) as csvfile:
        reader = csv.reader(csvfile)
        for row in reader:
            time_s.append(row[0])
            crank.append(row[1])

    time_s = np.array(time_s)
    crank = np.array(crank)

    time_s = time_s.astype(float)
    crank = crank.astype(int)

    data = np.vstack((crank, time_s)).T
    print(data.shape)
    return data, time_s




def invert_value(in_val):
    out_val = []
    for i in range(in_val.shape[0]):
        if in_val[i] == 0:
            out_val.append(1)
        else:
            out_val.append(0)
    return out_val

def calc_period(data):
    sig_period = []
    t_0 = data[0, 1]
    t_1 = float()
    print('period in data len --> ', data.shape[0])
    for i in range(data.shape[0]):# 100
        if i == 0:
            crank_current = data[0, 0]
            print('ferst_data')
            pass
        crank_mem = crank_current
        crank_current = data[i, 0]

        if crank_current == crank_mem:
            pass

        if crank_current > crank_mem:
            t_0 = data[i, 1]

        if crank_current < crank_mem:
            t_1 = data[i, 1]
            period = t_1 - t_0
            if period >= 0.002:
                sig_period.append(period)
            else:
                pass
        '''
        if i == 2000:
            break
        '''



    sig_period = np.array(sig_period)

    sig_period = sig_period.astype(float)
    print(sig_period.shape)
    return sig_period



def filt_level(level_tune, data_in):

    data_out = []
    for i in range(data_in.shape[0]):
        if i <= 13:
            pass
        level = (data_in[i] + data_in[i - 1]+ data_in[i - 2]+ data_in[i - 3]+ data_in[i - 4]+ data_in[i - 5]+ data_in[i - 6]+ data_in[i - 7]+ data_in[i - 8]+ data_in[i - 9]+ data_in[i - 10]+ data_in[i - 11]+ data_in[i - 12] )/13
        sig_norm = data_in[i] - level
        if abs(sig_norm) >= level_tune:
            data_out.append(data_in[i])
        else:
            pass
    return data_out

def savitzky_golay(y, window_size, order, deriv=0, rate=1):

    import numpy as np
    from math import factorial

    try:
        window_size = np.abs(int(window_size))
        order = np.abs(int(order))
    except:
        raise ValueError("window_size and order have to be of type int")
    if window_size % 2 != 1 or window_size < 1:
        raise TypeError("window_size size must be a positive odd number")
    if window_size < order + 2:
        raise TypeError("window_size is too small for the polynomials order")
    order_range = range(order+1)
    half_window = (window_size -1) // 2
    # precompute coefficients
    b = np.mat([[k**i for i in order_range] for k in range(-half_window, half_window+1)])
    m = np.linalg.pinv(b).A[deriv] * rate**deriv * factorial(deriv)
    # pad the signal at the extremes with
    # values taken from the signal itself
    firstvals = y[0] - np.abs( y[1:half_window+1][::-1] - y[0] )
    lastvals = y[-1] + np.abs(y[-half_window-1:-1][::-1] - y[-1])
    y = np.concatenate((firstvals, y, lastvals))
    return np.convolve( m[::-1], y, mode='valid')

def sensor(sensor_level, data_in):
    miss = []
    miss_value = []
    print('count_cycle -->', data_in.shape[0])
    for i in range(data_in.shape[0]):
        if i == 0:
            val_current = data_in[0]
            pass
        val_mem = val_current
        val_current = data_in[i]

        if abs(val_current - val_mem) >= sensor_level:
            miss.append(i)
            miss_value.append(abs(val_current - val_mem))
    print('count miss --> ', len(miss))
    if len(miss) <= 30:
        print('numba_of_cycle_miss -->', miss)
        print('numba_of_cycle_miss_value -->', miss_value)
    return miss



Time_s_all = {}
Crank_all = {}
for i in range(len(path_csv_list)):
    path_file = path_csv_list[i]
    data, Time_s = parse_data(path_file)
    sig_period = calc_period(data)

    level = 0.002
    filt_level_data = filt_level(level, sig_period)

    filt_and_diff_level_data = np.diff(filt_level_data)

    sensor_level = 0.00007
    miss = sensor(sensor_level, filt_and_diff_level_data)

    Time_s_all.update({path_file: Time_s})
    Crank_all.update({path_file: data[:, 0]})


'''
plt.figure('diff time')
for i in range(len(dict.keys(Time_s_all))):
    k = list(dict.keys(Time_s_all))
    plt.plot(np.diff(Time_s_all[k[i]]), label=str(k[i]))
    plt.legend()
'''

k = list(dict.keys(Time_s_all))
#plt.plot(np.diff(Time_s_all[k[0]]), label=str(k[0]))

def sense_plot(key, window_size, order, min_lim, max_lim):

    diff_time = np.diff(Time_s_all[k[key]])
    diff_diff_time = np.diff(diff_time)


    #plt.figure('diff_diff_time miss')
    #plt.plot(diff_diff_time, label=str(k[1]))
    #plt.legend()

    list_time, = np.where(diff_diff_time<0.00143)
    diff_diff_time_positive = np.delete(diff_diff_time, list_time)
    #plt.figure('diff_diff_time_positive miss')
    #plt.plot(diff_diff_time_positive, label=str(k[0]))
    #plt.legend()

    filt_diff_diff_time_positive = savitzky_golay(diff_diff_time_positive, window_size, order) # window size 51, polynomial order 3
    filt_diff_diff_time_positive = np.flip(filt_diff_diff_time_positive)
    filt_diff_diff_time_positive = savitzky_golay(filt_diff_diff_time_positive, window_size, order)
    filt_diff_diff_time_positive = np.flip(filt_diff_diff_time_positive)

    #plt.figure('diff_diff_time_positive miss and filt')
    #plt.plot(diff_diff_time_positive, label=str(k[key]))
    #plt.plot(filt_diff_diff_time_positive)
    #plt.legend()

    list_time, = np.where(diff_diff_time_positive<filt_diff_diff_time_positive)
    filt_filt_diff_diff_time_positive = np.delete(filt_diff_diff_time_positive, list_time)

    plt.figure(str(k[key]))
    plt.plot(np.clip(filt_filt_diff_diff_time_positive, min_lim , max_lim), label='period')

    filt_sig = savitzky_golay(filt_filt_diff_diff_time_positive, window_size, order)
    filt_sig = np.flip(filt_sig)
    filt_sig = savitzky_golay(filt_sig, window_size, 1)
    filt_sig = np.flip(filt_sig)
    plt.plot(np.clip(filt_sig, min_lim ,max_lim) , label='filt period')

    sense = ((filt_filt_diff_diff_time_positive - filt_sig)*30 + np.mean(filt_filt_diff_diff_time_positive))
    sense = np.clip(sense, min_lim , max_lim)

    plt.plot(sense, label='sense miss')
    plt.legend()

    #plt.figure('ROT')
    #plt.plot(30/filt_filt_diff_diff_time_positive)


    '''
    list_1, = np.where(np.diff(Crank_all[k[0]])==1)
    print('list_1', len(list_1))
    list_2, = np.where(np.diff(Crank_all[k[0]])==-1)
    
    
    plt.figure('filt_and_diff ' + path_file)
    plt.plot(filt_and_diff_level_data, color='blue')
    
    plt.figure('filt ' + path_file)
    plt.plot(filt_level_data, color='green')
    
    plt.figure('period ' + path_file)
    plt.plot(sig_period, color='green')
    '''

#level 0.0004 (0.0008 for full range amplitude) / window size - 3 , order - 1 / sense_plot(0, 3, 1)

sense_plot(0, 3, 1, 0.002, 0.006) #key, window size, order, min lim, max lim
sense_plot(1, 3, 1, 0.002,0.006) #key, window size, order, min lim, max lim
sense_plot(2, 3, 1, 0.002,0.006) #key, window size, order, min lim, max lim

plt.show()