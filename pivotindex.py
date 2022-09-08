class Solution(object):
    def pivotIndex(self, nums):
        sumR = sum(nums)
        sumL= 0
        for i in range(len(nums)):
            sumR -=  nums[i]
            if sumR == sumL:
                return i
            sumL += nums[i]
        return -1   