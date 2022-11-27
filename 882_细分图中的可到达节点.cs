/*
    用 dijkstra 做，在找最短路的同时，需要注意到可以走一半 
*/

public class Solution
{
    public int ReachableNodes(int[][] edges, int maxMoves, int n)
    {
        var graph = new Dictionary<int, List<Edge>>();

        // create graph
        foreach (var line in edges)
        {
            var u = line[0];
            var v = line[1];
            var value = line[2];

            if (!graph.ContainsKey(u))
            {
                graph[u] = new List<Edge>();
            }
            if (!graph.ContainsKey(v))
            {
                graph[v] = new List<Edge>();
            }
            var edge1 = new Edge(v, value);
            var edge2 = new Edge(u, value);
            edge1.reverseEdge = edge2;
            edge2.reverseEdge = edge1;
            graph[u].Add(edge1);
            graph[v].Add(edge2);
        }


        // dijkstra
        var queue = new PriorityQueue<Node, int>();
        var visited = new HashSet<int>();
        var dist = new Dictionary<int, int>();

        queue.Enqueue(new Node(0, 0), 0);
        dist[0] = 0;
        while (queue.Count > 0)
        {
            Node node = queue.Dequeue();
            int from = node.u;

            if (!visited.Add(from)) continue;
            if (!graph.ContainsKey(from)) continue;

            foreach (var edge in graph[from])
            {
                var to = edge.to;
                var value = edge.value;
                edge.canUseValue = Math.Clamp(Math.Max(edge.canUseValue, maxMoves - node.maxStep), 0, edge.value);

                int moves = node.maxStep + value + 1;
                if (moves <= maxMoves && (!dist.ContainsKey(to) || moves < dist[to]))
                {
                    dist[to] = moves;
                    queue.Enqueue(new Node(to, dist[to]), dist[to]);
                }
            }
        }

        int sum = visited.Count;
        foreach (var item in graph)
        {
            foreach (var edge in item.Value)
            {
                if (item.Key < edge.to)
                {
                    sum += Math.Min(edge.canUseValue + edge.reverseEdge.canUseValue, edge.value);
                }
            }
        }

        return sum;
    }
}

public class Node
{
    public int u;
    public int maxStep;
    public Node(int u, int maxStep)
    {
        this.u = u;
        this.maxStep = maxStep;
    }
}

public class Edge
{
    public int to;
    public int value;
    public int canUseValue;

    public Edge reverseEdge;

    public Edge(int to, int value)
    {
        this.to = to;
        this.value = value;
        this.canUseValue = 0;
    }
}