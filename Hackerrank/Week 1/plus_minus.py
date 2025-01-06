def plusMinus(arr):
    length = len(arr)
    positives = 0
    negatives = 0
    zeroes = 0
    for i in arr:
        if i == 0:
            zeroes+=1
        elif i>0:
            positives+=1
        else:
            negatives+=1
    print(round((positives/length), 6))
    print(round((negatives/length), 6))
    print(round((zeroes/length), 6))