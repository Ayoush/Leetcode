class Solution:
    def evenlyDivides(self, n):
        numbers = []
        number = n
        while(n!=0):
            m = n % 10
            n = int(n/10)
            if m!=0 and number%m == 0: # m!=0 is for cases where number last digit is 0 for example 20
                numbers.append(m)

        return len(numbers)

        