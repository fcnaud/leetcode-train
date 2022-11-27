
# leetcode 练习

## 数据结构

* 146 LRU 缓存算法：双向链表 + 字典
* 235/236 LCA 最近公共祖先

### 并查集

### LCA

**模拟**

从一个节点向上找，并且标记路径。从另一个节点也向上走，碰到标记，就是最近公共祖先

**Tarjan**

在深度遍历的同时，用并查集维护节点之间的关系，当访问到某一个查询点时，如果另一个点已经被访问过了，那么查找他所在并查集的顶点就是最近公共祖先。适合多组查询的时候。

## 图论

### 最短路

**dijkstra**

核心就是使用优先队列来维护，保证每次从当前已知的最短路径进行扩展

* 822 dijkstra

## 数论

* 1979 找出数组的最大公约数： 最大公约数，辗转相除法

## 一些参考资源网站

* [https://oi-wiki.org/](OI Wiki)
* [https://leetcode.cn/](力扣)