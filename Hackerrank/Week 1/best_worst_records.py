def breakingRecords(scores):
    max_score = scores[0]
    min_score = scores[0]
    max_count = 0
    min_count = 0
    for i in scores[1:]:
        if max_score < i:
            max_score = i
            max_count += 1
        if min_score > i:
            min_score = i
            min_count += 1

    return [max_count, min_count]


breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1])
breakingRecords([12, 24, 10, 24])