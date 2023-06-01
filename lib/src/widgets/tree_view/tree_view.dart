import 'package:ansix/ansix.dart';

export 'theme.dart';

/// **TreeNodeType**
///
/// Enumeration of the possible data types for each element of the tree.
enum TreeNodeType {
  primary,
  map,
  iterable,
  object;

  static TreeNodeType getType(final dynamic object) {
    if (object == null || //
        object is String ||
        object is bool ||
        object is num ||
        object is double ||
        object is int) {
      return TreeNodeType.primary;
    }

    if (object is Map) {
      return TreeNodeType.map;
    }

    if (object is Iterable) {
      return TreeNodeType.iterable;
    }

    return TreeNodeType.object;
  }
}

/// **AnsiTreeView**
///
/// A tree view is a way to represent data in a hierarchical structure, similar to the branches of a tree.
///
/// It shows the relationships between different elements or categories, where each element can have child elements.
///
/// The tree view provides a visual way to understand the structure and hierarchy of the data,
/// using indentation and/or graphical symbols to indicate levels and connections between the elements.
class AnsiTreeView {
  AnsiTreeView({
    this.theme = const AnsiTreeViewTheme(),
  }) : _lineLength = theme.compact ? 2 : 4 {
    _horizontalLine = (theme.anchorTheme.style.boxDrawingSet.horizontalLine * _lineLength).withForegroundColor(
      theme.anchorTheme.color,
    );
    _verticalLine = theme.anchorTheme.style.boxDrawingSet.verticalLine.withForegroundColor(
      theme.anchorTheme.color,
    );
  }

  /// The theme of the tree view that will be used for styling.
  final AnsiTreeViewTheme theme;

  final int _lineLength;
  late final String _horizontalLine;
  late final String _verticalLine;

  String format(final dynamic data) {
    final StringBuffer buffer = StringBuffer();
    final String hash = theme.classTheme.showHash ? '<${data.hashCode.toString().italic()}>'.dim() : '';
    String header = AnsiTable.fromList(
      <AnsiText>[AnsiText.withTheme('${data.runtimeType}$hash', theme.classTheme.textTheme)],
      border: theme.classTheme.border,
    ).formattedText;

    final List<String> headerRows = header.split(AnsiEscapeCodes.newLine);
    int prefixLength = headerRows[0].unformattedLength ~/ 2;
    if (prefixLength % 2 == 0) {
      prefixLength--;
    }
    final String prefix = ' ' * prefixLength;

    if (headerRows.length > 2) {
      final String temp = headerRows[2]
          .unformatted
          .replaceRange(
            prefixLength,
            prefixLength + 1,
            theme.classTheme.border.style.boxDrawingSet.middleTopEdge,
          )
          .colored(foreground: theme.classTheme.border.color);
      header = <String>[
        headerRows[0],
        headerRows[1],
        temp,
      ].join(AnsiEscapeCodes.newLine);
    }

    buffer
      ..write(header)
      ..writeln();

    switch (TreeNodeType.getType(data)) {
      case TreeNodeType.primary:
        buffer.write(_parseTreeNode(
          '',
          data,
          prefix: prefix,
          isLast: true,
        ));
        break;

      case TreeNodeType.iterable:
        buffer.write(_parseTreeList(data, data.runtimeType.toString(), prefix));
        break;

      case TreeNodeType.map:
        buffer.write(_parseTreeMap(data, prefix: prefix));
        break;

      case TreeNodeType.object:
        buffer.write(_parseObject(data, prefix));
        break;
    }

    return buffer.toString();
  }

  String _getAnchor({
    required final bool isLast,
    final String prefix = '',
  }) {
    final StringBuffer buffer = StringBuffer()
      ..write(prefix)
      ..write(isLast
          ? theme.anchorTheme.style == AnsiBorderStyle.ascii
              ? theme.anchorTheme.style.boxDrawingSet.verticalLine
              : theme.anchorTheme.style.boxDrawingSet.bottomLeftCorner
          : theme.anchorTheme.style.boxDrawingSet.middleLeftEdge);
    return buffer.toString().withForegroundColor(theme.anchorTheme.color);
  }

  String _parseTreeNode(
    final String key,
    final Object? value, {
    final bool isLast = false,
    final String prefix = '',
  }) {
    final StringBuffer buffer = StringBuffer();

    final String anchor = _getAnchor(isLast: isLast);

    buffer
      ..write(prefix)
      ..write(anchor)
      ..write(_horizontalLine);

    if (key.isNotEmpty) {
      buffer
        ..write(' ')
        ..write(key.styled(theme.keyTheme.textStyle, theme.keyTheme.color))
        ..write(':');
    }

    final String tab = ' ' * (1 + _lineLength + key.length ~/ 2);
    switch (TreeNodeType.getType(value)) {
      case TreeNodeType.primary:
        buffer
          ..write(' ')
          ..writeln(value.toString().styled(
                theme.valueTheme.textStyle,
                theme.valueTheme.color,
              ));
        break;
      case TreeNodeType.map:
      case TreeNodeType.iterable:
      case TreeNodeType.object:
        buffer.writeln(_parseObject(value, '\n$_verticalLine $tab$tab'));
        break;
    }

    return buffer.toString();
  }

  String _parseTreeMap(
    final Map<String, dynamic> map, {
    final String prefix = '',
    final bool isMemberOfList = false,
    final bool? isLastNode,
  }) {
    final StringBuffer buffer = StringBuffer();
    final List<String> keys = map.keys.toList();

    if (theme.sorted) {
      keys.sort();
    }

    if (keys.isEmpty) {
      buffer.write(
        _parseTreeNode('', '(empty)', isLast: true, prefix: prefix),
      );
      return buffer.toString();
    }

    for (int i = 0; i < keys.length; i++) {
      final String key = keys[i];
      final dynamic value = map[key];

      final bool isLastValue = i == keys.length - 1;
      final bool isLast = isLastNode ?? isLastValue;
      final int tabSize = 1 + _lineLength + key.length ~/ 2;
      final String tab = ' ' * tabSize;
      final String anchor = _getAnchor(isLast: isLast);

      if (!theme.compact) {
        buffer.writeln('$prefix$_verticalLine');
      }

      switch (TreeNodeType.getType(value)) {
        case TreeNodeType.iterable:
          buffer
            ..write(prefix)
            ..write(anchor)
            ..write(_horizontalLine)
            ..write(' ')
            ..writeln(key.styled(theme.keyTheme.textStyle, theme.keyTheme.color))
            ..write(_parseTreeList(
              value.toList(growable: false),
              key,
              isLast ? '$prefix$tab' : '$prefix$_verticalLine$tab',
            ));
          break;

        case TreeNodeType.map:
          buffer
            ..write(prefix)
            ..write(anchor)
            ..write(_horizontalLine)
            ..write(' ')
            ..writeStyled(
              key,
              textStyle: theme.keyTheme.textStyle,
              foregroundColor: theme.keyTheme.color,
            )
            ..writeln();
          buffer.write(_parseTreeMap(
            value,
            prefix: isLast ? '$prefix$tab ' : '$prefix$_verticalLine$tab',
          ));
          break;

        case TreeNodeType.primary:
          buffer.write(
            _parseTreeNode(key, value, isLast: isLast, prefix: prefix),
          );
          break;

        case TreeNodeType.object:
          buffer.write(_parseTreeNode('', value, prefix: '$prefix$_verticalLine$tab'));
          break;
      }
    }

    return buffer.toString();
  }

  String _parseTreeList(
    final List<dynamic> list,
    final String key, [
    final String prefix = '',
  ]) {
    final StringBuffer buffer = StringBuffer();

    final List<dynamic> values = list.isEmpty ? <String>['(empty)'] : list;

    for (int i = 0; i < values.length; i++) {
      final bool isLast = i == values.length - 1;

      switch (TreeNodeType.getType(values[i])) {
        case TreeNodeType.primary:
          if (!theme.compact) {
            buffer.writeln('$prefix$_verticalLine');
          }
          buffer.write(
            _parseTreeNode(
              theme.showListItemIndex && list.isNotEmpty ? '$i' : '',
              values[i],
              isLast: isLast,
              prefix: prefix,
            ),
          );
          break;

        case TreeNodeType.map:
        case TreeNodeType.iterable:
        case TreeNodeType.object:
          buffer.write(_parseTreeMap(
            <String, dynamic>{'$i': values[i]},
            prefix: prefix,
            isLastNode: isLast,
            isMemberOfList: true,
          ));
          break;
      }
    }

    return buffer.toString();
  }

  String _parseObject(
    final dynamic object, [
    final String prefix = '',
  ]) {
    final StringBuffer buffer = StringBuffer();

    try {
      buffer.write(_parseTreeMap(object, prefix: prefix));
      return buffer.toString();
    } catch (_) {}

    try {
      final Map<String, dynamic> map = object.toJson();
      buffer.write(_parseTreeMap(map, prefix: prefix));
      return buffer.toString();
    } catch (_) {}

    try {
      final Map<String, dynamic> map = object.toMap();
      buffer.write(_parseTreeMap(map, prefix: prefix));
      return buffer.toString();
    } catch (_) {}

    return '';
  }
}
