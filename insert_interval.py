def insert(intervals, newInterval):
    left, right = [], []
    s, e = newInterval[0], newInterval[1]
    for i in intervals:
        if i[1] < s:
            left.append(i)
        elif i[0] > e:
            right.append(i)
        else:
            s = min(i[0], s)
            e = max(i[1], e)
    print(left + [[s, e]] + right)    
        



# interval_1 = [[1,3],[6,9]]
# newInterval_1 = [2, 5]
# insert(interval_1, newInterval_1)
# print('==============')
# interval_2 = [[2, 5],[6,9]]
# newInterval_2 = [1,3]
# insert(interval_2, newInterval_2)
# print('==============')
# interval_2 = [[3, 4],[6,9]]
# newInterval_2 = [1,2]
# insert(interval_2, newInterval_2)
# print('==============')
intervals_2 = [[1,2],[3,5],[6,7],[8,10],[12,16]]
newInterval_2 = [4,8]
insert(intervals_2, newInterval_2)
print('==============')
# interval_2 = [[1, 4],[6,7]]
# newInterval_2 = [1,8]
# insert(interval_2, newInterval_2)
# print('==============')
# interval_2 = [[1, 4],[7,8]]
# newInterval_2 = [1,7]
# insert(interval_2, newInterval_2)
# print('==============')
# interval_2 = [[1, 4],[7,8]]
# newInterval_2 = [1,4]
# insert(interval_2, newInterval_2)
# print('==============')
# interval_2 = [[1, 3],[6,9]]
# newInterval_2 = [4, 5]
# insert(interval_2, newInterval_2)
# print('==============')

