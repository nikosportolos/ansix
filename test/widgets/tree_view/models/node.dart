// ignore_for_file: unnecessary_overrides

import 'package:data_class_plugin/data_class_plugin.dart';

part 'node.gen.dart';

@DataClass(toJson: true, hashAndEquals: false)
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

  @override
  int get hashCode => 1;

  @override
  bool operator ==(Object other) {
    return super == other;
  }
}
