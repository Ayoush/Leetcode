def productExceptSelf(nums):
    prefix = [1] * len(nums)
    suffix = [1] * len(nums)
    ans = []
    for i in range(1, len(nums)):
        prefix[i] = prefix[i-1] * nums[i-1]
    reverse_nums = nums
    reverse_nums.reverse()
    for i in range(1, len(reverse_nums)):
        suffix[i] = suffix[i-1] * reverse_nums[i-1]
    suffix.reverse()    
    for i in range(len(nums)):
        ans.append(prefix[i] * suffix[i])
    return ans
# def productExceptSelf(nums):
#         n, ans, suffix_prod = len(nums), [1]*len(nums), 1
#         for i in range(1,n):
#             ans[i] = ans[i-1] * nums[i-1]
#         for i in range(n-1,-1,-1):
#             ans[i] *= suffix_prod
#             suffix_prod *= nums[i]
#         return ans
# def productExceptSelf(nums):
#     ans, suf, pre = [1]*len(nums), 1, 1
#     for i in range(len(nums)):
#         ans[i] *= pre               # prefix product from one end
#         pre *= nums[i]
#         ans[-1-i] *= suf            # suffix product from other end
#         suf *= nums[-1-i]
#     print(ans)

productExceptSelf([1,2,3,4])
