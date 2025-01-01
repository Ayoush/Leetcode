# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def deleteNode(self, node):
        current = None
        while current:
            if current.next and current.next.val == node.val:
                current.next = current.next.next
            current = current.next
        