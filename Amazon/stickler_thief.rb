


# def maxSum(arr,n):
#   if n==1:
#       return arr[0]
#   if n==2:
#       return (max(arr[0],arr[1]))
#   dp=[0]*n

#   dp[0] = arr[0]
#   dp[1] = max(arr[0],arr[1])

#   for i in range(2,n):
#       dp[i] = max(dp[i-1],dp[i-2]+arr[i])

#   return dp[n-1]

# # space efficient of above
# '''
# def maxSum(arr,n):
#   if n==1:
#       return arr[0]
#   if n==2:
#       return (max(arr[0],arr[1]))

#   i_2 = arr[0]
#   i_1 = max(arr[0],arr[1])

#   ii=0
#   for i in range(2,n):
#       ii = max(i_1,i_2+arr[i])

#       i_2 = i_1
#       i_1 = ii

#   return ii
# '''

# if __name__ == '__main__':
#   T = int(input())