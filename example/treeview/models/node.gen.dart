// AUTO GENERATED - DO NOT MODIFY

// ignore_for_file: library_private_types_in_public_api, unused_element, unused_field

part of 'node.dart';

class _$NodeImpl extends Node {
  _$NodeImpl({
    required this.id,
    this.child,
    List<Node> nodes = const <Node>[],
  })  : _nodes = nodes,
        super.ctor();

  @override
  final String id;

  @override
  final Node? child;

  @override
  List<Node> get nodes => List<Node>.unmodifiable(_nodes);
  final List<Node> _nodes;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'child': child?.toJson(),
      'nodes': <dynamic>[
        for (final Node i0 in nodes) i0.toJson(),
      ],
    };
  }

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is Node &&
            runtimeType == other.runtimeType &&
            id == other.id &&
            child == other.child &&
            deepEquality(nodes, other.nodes);
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      id,
      child,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'Node{<optimized out>}';
    assert(() {
      toStringOutput = 'Node@<$hexIdentity>{id: $id, child: $child, nodes: $nodes}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => Node;
}

class _$NodeCopyWithProxy {
  _$NodeCopyWithProxy(this._value);

  final Node _value;

  @pragma('vm:prefer-inline')
  Node id(String newValue) => this(id: newValue);
  @pragma('vm:prefer-inline')
  $NodeCopyWithProxyChain<Node>? get child =>
      _value.child == null ? null : $NodeCopyWithProxyChain<Node>(_value.child!, (Node? update) => this(child: update));

  @pragma('vm:prefer-inline')
  Node nodes(List<Node> newValue) => this(nodes: newValue);

  @pragma('vm:prefer-inline')
  Node call({
    final String? id,
    final Object? child = const Object(),
    final List<Node>? nodes,
  }) {
    return _$NodeImpl(
      id: id ?? _value.id,
      child: identical(child, const Object()) ? _value.child : (child as Node?),
      nodes: nodes ?? _value.nodes,
    );
  }
}

class $NodeCopyWithProxyChain<$Result> {
  $NodeCopyWithProxyChain(this._value, this._chain);

  final Node _value;
  final $Result Function(Node update) _chain;

  @pragma('vm:prefer-inline')
  $Result id(String newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  $Result child(Node? newValue) => this(child: newValue);

  @pragma('vm:prefer-inline')
  $Result nodes(List<Node> newValue) => this(nodes: newValue);

  @pragma('vm:prefer-inline')
  $Result call({
    final String? id,
    final Object? child = const Object(),
    final List<Node>? nodes,
  }) {
    return _chain(_$NodeImpl(
      id: id ?? _value.id,
      child: identical(child, const Object()) ? _value.child : (child as Node?),
      nodes: nodes ?? _value.nodes,
    ));
  }
}

extension $NodeExtension on Node {
  _$NodeCopyWithProxy get copyWith => _$NodeCopyWithProxy(this);
}
