# def threeSum(nums):
#     nums.sort()
#     triplets = {}
#     result = []
#     temp = 0
#     if len(nums) == 3:
#         for i in nums:
#             temp += i
#         if temp == 0:
#             print([nums])
#         else:
#             print(0)
#     else:        
#         for i in range(0, len(nums)):
#             for j in range(i+1, len(nums)):
#                 if nums[i] in triplets.keys():
#                     temp = [nums[i]] + triplets[nums[i]]
#                     temp.sort()
#                     if temp not in result:
#                         result.append(temp)
#                 else:
#                     triplets[(0 - (nums[i] + nums[j]))] = [nums[i], nums[j]]
#         if result:
#             print(result)
#         else:
#             print(0)    



def threeSum(nums):
    result = set()
    p, n, z = [], [], []
    # o(n)
    nums.sort()
    for i in nums:
        if i>0:
            p.append(i)
        elif i == 0:
            z.append(i)   
        else:
            n.append(i)    

    N = set(n)
    P = set(p)
    # o(n)        
    if z:
        for i in P:
            if -1*i in N:
                result.add((-1*i, 0, i))

    if len(z) >= 3: 
        result.add((0,0,0))
    
    for i in range(len(n)):
        for j in range(i+1, len(n)):
            target = -1*(n[i] + n[j])
            if target in P:
                result.add(tuple(sorted([n[i], n[j], target])))

    for i in range(len(p)):
        for j in range(i+1, len(p)):
            target = -1*(p[i] + p[j])
            if target in N:
                result.add(tuple(sorted([p[i], p[j], target])))
    
    return(list(result))

        



nums = [1,2,-2,-1]
threeSum(nums)
nums = [0, 0, 0]
threeSum(nums)
nums = [0, 0, 1]
threeSum(nums)
nums = [-1, 0, 1, -1, 2, 4, -4]
threeSum(nums)
