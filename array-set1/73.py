class Solution(object):
    def setZeroes(matrix):
        matrix_len = len(matrix[0])
        zero_positions = []
        j = 0
        for k in range(0, len(matrix)):
            if 0 in matrix[k]:
                indices = [i for i, x in enumerate(matrix[k]) if x == 0]
                for m in indices:
                    zero_positions += [[j, m]]
            j+=1
        
        rows = sorted(set([row for row, col in zero_positions]))
        cols = sorted(set([col for row, col in zero_positions]))
        i = 0
        for k in range(0, len(matrix)):
            for j in range(0, matrix_len):
                if i in rows or j in cols:
                    matrix[i][j] =0
            i+=1
        print(matrix)
