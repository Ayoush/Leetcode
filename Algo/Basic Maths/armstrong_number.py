def armstrong(a):
    count = 0
    temp = a
    sum = 0
    while temp > 0:
        count += 1
        temp //= 10
    
    temp = a
    while temp > 0 :
        sum += pow((temp % 10), count)
        temp //= 10

    return sum == a


print(armstrong(153))