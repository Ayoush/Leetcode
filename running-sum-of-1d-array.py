class Solution(object):
    def runningSum(self, nums):
        temp = 0
        result = []
        for n in nums:
            result.append(temp+n)
            temp=temp+n
        return result