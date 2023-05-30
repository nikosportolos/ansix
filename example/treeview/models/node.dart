import 'package:data_class_plugin/data_class_plugin.dart';

part 'node.gen.dart';

@DataClass(toJson: true)
abstract class Node {
  Node.ctor();

  /// Default constructor
  factory Node({
    required String id,
    Node? child,
    List<Node> nodes,
  }) = _$NodeImpl;

  String get id;

  Node? get child;

  @DefaultValue(<Node>[])
  List<Node> get nodes;

  /// Converts [Node] to a [Map] json
  Map<String, dynamic> toJson();
}
