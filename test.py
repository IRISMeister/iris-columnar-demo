import time
time_start = time.perf_counter()
sum=0
for i in range(1, 10000001):
        sum=sum+i
print(sum)
print(time.perf_counter() - time_start)
