// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// coverage:ignore-file

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

abstract interface class _NodeCopyWithProxy {
  Node id(String newValue);

  $NodeCopyWithProxyChain<Node>? get child;

  Node nodes(List<Node> newValue);

  Node call({
    final String? id,
    final Node? child,
    final List<Node>? nodes,
  });
}

class _NodeCopyWithProxyImpl implements _NodeCopyWithProxy {
  _NodeCopyWithProxyImpl(this._value);

  final Node _value;

  @pragma('vm:prefer-inline')
  @override
  Node id(String newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  @override
  $NodeCopyWithProxyChain<Node>? get child =>
      _value.child == null ? null : $NodeCopyWithProxyChain<Node>(_value.child!, (Node? update) => this(child: update));

  @pragma('vm:prefer-inline')
  @override
  Node nodes(List<Node> newValue) => this(nodes: newValue);

  @pragma('vm:prefer-inline')
  @override
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

sealed class $NodeCopyWithProxyChain<$Result> {
  factory $NodeCopyWithProxyChain(final Node value, final $Result Function(Node update) chain) =
      _NodeCopyWithProxyChainImpl<$Result>;

  $Result id(String newValue);

  $Result child(Node? newValue);

  $Result nodes(List<Node> newValue);

  $Result call({
    final String? id,
    final Node? child,
    final List<Node>? nodes,
  });
}

class _NodeCopyWithProxyChainImpl<$Result> implements $NodeCopyWithProxyChain<$Result> {
  _NodeCopyWithProxyChainImpl(this._value, this._chain);

  final Node _value;
  final $Result Function(Node update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result id(String newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result child(Node? newValue) => this(child: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result nodes(List<Node> newValue) => this(nodes: newValue);

  @pragma('vm:prefer-inline')
  @override
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
  _NodeCopyWithProxy get copyWith => _NodeCopyWithProxyImpl(this);
}
