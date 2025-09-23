import 'package:ansix/ansix.dart';

import 'models/node.dart';

void main() {
  final Node node1 = Node(
    id: '1231231231',
    nodes: <Node>[
      Node(id: '34454354453'),
    ],
  );
  final Node node2 = Node(id: '5463456343');
  final Node node3 = Node(id: '7845445335', nodes: <Node>[node1]);

  final Node node = Node(
    id: '423423423',
    nodes: <Node>[node1, node3, node1, node2],
    child: Node(
      id: '455565764',
      nodes: <Node>[node1, node2],
      child: Node(
        id: '444354355',
        child: Node(
          id: '868686868',
          nodes: <Node>[node1, node3, node1, node2],
          child: Node(
            id: '0400404004',
            nodes: <Node>[node1, node2, node3],
          ),
        ),
      ),
    ),
  );

  AnsiX.printTreeView(node);
}
