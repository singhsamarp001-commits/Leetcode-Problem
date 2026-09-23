# Definition for a binary tree node.
# class TreeNode(object):
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution(object):
    def generateTrees(self, n):
        def build(left,right):
            if left > right:
                return [None]
            ans = []
            for root in range(left,right + 1):
                left_trees = build(left,root - 1)
                right_trees = build(root + 1,right)
                for l in left_trees:
                    for r in right_trees:
                        node = TreeNode(root)
                        node.left = l
                        node.right = r
                        ans.append(node)
            return ans
        return build(1,n) 
        """
        :type n: int
        :rtype: List[Optional[TreeNode]]
        """
        