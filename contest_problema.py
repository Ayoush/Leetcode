class Solution(object):
    def canMakeSquare(grid):
        leftw = [grid[1][1], grid[0][1], grid[0][2], grid[1][2]].count('W')
        rightw = [grid[1][1], grid[0][1], grid[0][0], grid[1][0]].count('W')
        topw = [grid[1][1], grid[2][2], grid[2][1], grid[1][2]].count('W')
        bottomw = [grid[1][1], grid[1][0], grid[2][0], grid[2][1]].count('W')
        leftb = [grid[1][1], grid[0][1], grid[0][2], grid[1][2]].count('B')
        rightb = [grid[1][1], grid[0][1], grid[0][0], grid[1][0]].count('B')
        topb = [grid[1][1], grid[2][2], grid[2][1], grid[1][2]].count('B')
        bottomb = [grid[1][1], grid[1][0], grid[2][0], grid[2][1]].count('B')

        if leftw >=3 or rightw >=3 or topw >=3 or bottomw >=3 or leftb >=3 or rightb >=3 or topb >=3 or bottomb >=3:
            return True
        else:
            return False
        
print(Solution.canMakeSquare([["B","W","B"],["W","B","W"],["B","W","B"]]))