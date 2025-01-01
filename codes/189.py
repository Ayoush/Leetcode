class Solution():
    def rotate( nums, k):
        k = k % len(nums)
        if k == 0:
            return nums
        else:
            nums[-k:] = nums[-k:][::-1]
            nums[:len(nums)-k] = nums[:len(nums)-k][::-1]
            nums.reverse()
            return nums

print(Solution.rotate([1,2 ], 0))