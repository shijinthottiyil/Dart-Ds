class Graph {
  int vertices;
  late List<List<int>> adjacencyList;
  List<int> sources = [];

  Graph(this.vertices) {
    adjacencyList = List.generate(vertices, (index) => []);
  }

  void addEdge(int source, int destination) {
    if (!sources.contains(source)) {
      sources.add(source);
    }
    if (!sources.contains(destination)) {
      sources.add(destination);
    }
    adjacencyList[source].add(destination);
    adjacencyList[destination].add(source);
  }

  void printGraph() {
    for (int i = 0; i < sources.length; i++) {
      print("source=${sources[i]}");
      for (int j = 0; j < adjacencyList[i].length; j++) {
        print("destination ${adjacencyList[i][j]}");
      }
      print("");
    }
  }
}

void main() {
  Graph graph = Graph(5);

  graph.addEdge(3, 1);
  graph.addEdge(3, 2);
  graph.addEdge(4, 1);
  graph.addEdge(4, 2);
  graph.addEdge(0, 1);
  graph.addEdge(0, 2);

  graph.printGraph();
}
