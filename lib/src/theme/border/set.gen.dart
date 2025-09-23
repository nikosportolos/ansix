// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
// coverage:ignore-file

part of 'set.dart';

class _$AnsiBorderSetImpl extends AnsiBorderSet {
  const _$AnsiBorderSetImpl({
    this.start = '',
    this.line = '',
    this.separator = '',
    this.end = '',
  }) : super.ctor();

  @override
  final String start;

  @override
  final String line;

  @override
  final String separator;

  @override
  final String end;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is AnsiBorderSet &&
            runtimeType == other.runtimeType &&
            start == other.start &&
            line == other.line &&
            separator == other.separator &&
            end == other.end;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      start,
      line,
      separator,
      end,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiBorderSet{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiBorderSet@<$hexIdentity>{start: $start, line: $line, separator: $separator, end: $end}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiBorderSet;
}

abstract interface class _AnsiBorderSetCopyWithProxy {
  AnsiBorderSet start(String newValue);

  AnsiBorderSet line(String newValue);

  AnsiBorderSet separator(String newValue);

  AnsiBorderSet end(String newValue);

  AnsiBorderSet call({
    final String? start,
    final String? line,
    final String? separator,
    final String? end,
  });
}

class _AnsiBorderSetCopyWithProxyImpl implements _AnsiBorderSetCopyWithProxy {
  _AnsiBorderSetCopyWithProxyImpl(this._value);

  final AnsiBorderSet _value;

  @pragma('vm:prefer-inline')
  @override
  AnsiBorderSet start(String newValue) => this(start: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiBorderSet line(String newValue) => this(line: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiBorderSet separator(String newValue) => this(separator: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiBorderSet end(String newValue) => this(end: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiBorderSet call({
    final String? start,
    final String? line,
    final String? separator,
    final String? end,
  }) {
    return _$AnsiBorderSetImpl(
      start: start ?? _value.start,
      line: line ?? _value.line,
      separator: separator ?? _value.separator,
      end: end ?? _value.end,
    );
  }
}

sealed class $AnsiBorderSetCopyWithProxyChain<$Result> {
  factory $AnsiBorderSetCopyWithProxyChain(
    final AnsiBorderSet value,
    final $Result Function(AnsiBorderSet update) chain,
  ) = _AnsiBorderSetCopyWithProxyChainImpl<$Result>;

  $Result start(String newValue);

  $Result line(String newValue);

  $Result separator(String newValue);

  $Result end(String newValue);

  $Result call({
    final String? start,
    final String? line,
    final String? separator,
    final String? end,
  });
}

class _AnsiBorderSetCopyWithProxyChainImpl<$Result>
    implements $AnsiBorderSetCopyWithProxyChain<$Result> {
  _AnsiBorderSetCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiBorderSet _value;
  final $Result Function(AnsiBorderSet update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result start(String newValue) => this(start: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result line(String newValue) => this(line: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result separator(String newValue) => this(separator: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result end(String newValue) => this(end: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final String? start,
    final String? line,
    final String? separator,
    final String? end,
  }) {
    return _chain(
      _$AnsiBorderSetImpl(
        start: start ?? _value.start,
        line: line ?? _value.line,
        separator: separator ?? _value.separator,
        end: end ?? _value.end,
      ),
    );
  }
}

extension $AnsiBorderSetExtension on AnsiBorderSet {
  _AnsiBorderSetCopyWithProxy get copyWith =>
      _AnsiBorderSetCopyWithProxyImpl(this);
}
