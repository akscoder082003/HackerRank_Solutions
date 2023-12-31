-- You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
-- Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

-- Root: If node is root node.
-- Leaf: If node is leaf node.
-- Inner: If node is neither root nor leaf node.

select N, 
case when P is null then 'Root'
when N in (select P form BST) then 'Inner'
else 'Leaf' end
from BST 
order by N;