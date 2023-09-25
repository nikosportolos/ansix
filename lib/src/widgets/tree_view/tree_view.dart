import 'package:ansix/ansix.dart';

export 'node_type.dart';
export 'theme.dart';

/// **AnsiTreeView**
///
/// A tree view is a way to represent data in a hierarchical structure, similar to the branches of a tree.
///
/// It shows the relationships between different elements or categories, where each element can have child elements.
///
/// The tree view provides a visual way to understand the structure and hierarchy of the data,
/// using indentation and/or graphical symbols to indicate levels and connections between the elements.
class AnsiTreeView extends AnsiWidget {
  AnsiTreeView(
    final dynamic data, {
    this.theme = const AnsiTreeViewTheme(),
  }) : _lineLength = theme.compact ? 2 : 4 {
    formattedText = _build(data);
  }

  /// The theme of the tree view that will be used for styling.
  final AnsiTreeViewTheme theme;

  final int _lineLength;
  late final String _horizontalLine;
  late final String _verticalLine;

  @override
  late final String formattedText;

  String _build(final dynamic data) {
    _horizontalLine = (theme.anchorTheme.style.boxDrawingSet.horizontalLine * _lineLength).withForegroundColor(
      theme.anchorTheme.color,
    );

    _verticalLine = theme.anchorTheme.style.boxDrawingSet.verticalLine.withForegroundColor(
      theme.anchorTheme.color,
    );

    final StringBuffer buffer = StringBuffer();
    String prefix = '';

    if (!theme.headerTheme.hideHeader) {
      final String hash = theme.headerTheme.showHash ? '<${data.hashCode.toString().italic()}>'.dim() : '';

      String header = AnsiOutlinedText(
        theme.headerTheme.customHeader.isNullOrEmpty ? '${data.runtimeType}$hash' : theme.headerTheme.customHeader!,
        border: theme.headerTheme.border,
        transparent: true,
        foregroundColor: theme.headerTheme.textTheme.foregroundColor,
        backgroundColor: theme.headerTheme.textTheme.backgroundColor,
        padding: theme.headerTheme.textTheme.padding,
        style: theme.headerTheme.textTheme.style,
        alignment: theme.headerTheme.textTheme.alignment,
        fixedWidth: theme.headerTheme.textTheme.fixedWidth,
      ).formattedText;

      final List<String> headerRows = header.split(AnsiEscapeCodes.newLine).where((String line) {
        return line.isNotEmpty;
      }).toList(growable: false);
      int prefixLength = switch (theme.alignment) {
        AnsiTextAlignment.left => 0,
        AnsiTextAlignment.center => headerRows[0].unformattedLength ~/ 2,
        AnsiTextAlignment.right => headerRows[0].unformattedLength,
      };

      if (prefixLength > 0 && (prefixLength % 2 == 0 || prefixLength >= headerRows[0].unformattedLength)) {
        prefixLength--;
      }

      prefix = ' ' * prefixLength;

      if (headerRows.length > 2 && theme.headerTheme.hasBorder) {
        final String newChar = switch (theme.alignment) {
          AnsiTextAlignment.left => theme.headerTheme.border.style.boxDrawingSet.middleLeftEdge,
          AnsiTextAlignment.center => theme.headerTheme.border.style.boxDrawingSet.middleTopEdge,
          AnsiTextAlignment.right => theme.headerTheme.border.style.boxDrawingSet.middleRightEdge,
        };

        final String temp = newChar.isEmpty
            ? ''
            : headerRows.last.unformatted
                .replaceRange(prefixLength, prefixLength + 1, newChar)
                .colored(foreground: theme.headerTheme.border.color);

        header = <String>[
          ...headerRows.sublist(0, headerRows.length - 1),
          temp,
        ].join(AnsiEscapeCodes.newLine);
      }

      buffer
        ..write(header)
        ..writeln();
    }

    switch (TreeNodeType.getType(data)) {
      case TreeNodeType.primary:
        buffer.write(_parseTreeNode('', data, prefix: prefix, isLast: true, isFirstNode: true));
        break;

      case TreeNodeType.iterable:
        buffer.write(_parseTreeList(data, data.runtimeType.toString(), prefix, true));
        break;

      case TreeNodeType.map:
        buffer.write(_parseTreeMap(data, prefix: prefix, isFirstNode: true));
        break;

      case TreeNodeType.object:
        buffer.write(_parseObject(data, prefix: prefix, isLast: true, isFirstNode: true));
        break;
    }

    return buffer.toString();
  }

  String _getAnchor({
    required final bool isLast,
    final bool isFirstNode = false,
    final String prefix = '',
  }) {
    final StringBuffer buffer = StringBuffer()
      ..write(prefix)
      ..write(isLast
          ? isFirstNode && theme.headerTheme.hideHeader
              ? theme.anchorTheme.style.boxDrawingSet.horizontalLine
              : theme.anchorTheme.style == AnsiBorderStyle.ascii
                  ? theme.anchorTheme.style.boxDrawingSet.verticalLine
                  : theme.anchorTheme.style.boxDrawingSet.bottomLeftCorner
          : isFirstNode && theme.headerTheme.hideHeader
              ? theme.anchorTheme.style.boxDrawingSet.topLeftCorner
              : theme.anchorTheme.style.boxDrawingSet.middleLeftEdge);
    return buffer.toString().withForegroundColor(theme.anchorTheme.color);
  }

  String _getTab(final int size) {
    return ' ' * size;
  }

  String _parseTreeNode(
    final dynamic key,
    final Object? value, {
    final bool isLast = false,
    final String prefix = '',
    final bool hasAnchor = false,
    final bool isFirstNode = false,
  }) {
    final StringBuffer buffer = StringBuffer();
    if (!hasAnchor) {
      buffer
        ..write(prefix)
        ..write(_getAnchor(isLast: isLast, isFirstNode: isFirstNode))
        ..write(_horizontalLine);
    }

    if (key.toString().isNotEmpty) {
      buffer
        ..write(' ')
        ..write(key.toString().styled(theme.keyTheme.textStyle, theme.keyTheme.color))
        ..write(':');
    }

    String text = value.toString();
    List<String> lines = text.split(AnsiEscapeCodes.newLine);
    bool isMultiline = lines.length > 1;
    final int bufferLength = buffer.toString().unformattedLength;

    if (theme.valueTheme.wrapText) {
      final int chunkSize = theme.valueTheme.wrapOptions.lineLength ?? AnsiX.size.columns;
      final int length = theme.valueTheme.fixedWidth == null //
          ? chunkSize
          : theme.valueTheme.fixedWidth! - bufferLength - 1;

      text = text
          .wrapText(
            fixedWidth: theme.valueTheme.fixedWidth,
            wrapOptions: theme.valueTheme.wrapOptions.copyWith.lineLength(length),
          )
          .join(AnsiEscapeCodes.newLine);
      isMultiline = text.contains(AnsiEscapeCodes.newLine);
    }

    if (isMultiline) {
      final int newTabSize = bufferLength - prefix.length + 1;
      final String separator = isLast ? _getTab(newTabSize) : '$_verticalLine${_getTab(newTabSize - 1)}';
      buffer.write(' ');
      lines = text.split(AnsiEscapeCodes.newLine);
      for (int i = 0; i < lines.length; i++) {
        final String line = lines[i];
        if (i == 0) {
          buffer
            ..writeStyled(
              line,
              textStyle: theme.valueTheme.textStyle,
              foregroundColor: theme.valueTheme.color,
            )
            ..writeln();
          continue;
        }
        buffer
          ..write(prefix)
          ..write(separator)
          ..writeln(line.styled(
            theme.valueTheme.textStyle,
            theme.valueTheme.color,
          ));
      }
      return buffer.toString();
    }

    buffer
      ..write(' ')
      ..writeln(text.styled(
        theme.valueTheme.textStyle,
        theme.valueTheme.color,
      ));

    return buffer.toString();
  }

  String _parseTreeMap(
    final Map<dynamic, dynamic> map, {
    final String prefix = '',
    final bool isMemberOfList = false,
    final bool? isLastNode,
    final bool isFirstNode = false,
  }) {
    final StringBuffer buffer = StringBuffer();
    final List<dynamic> keys = map.keys.map((dynamic e) => e).toList(growable: false);

    if (theme.sorted) {
      keys.sort();
    }

    if (keys.isEmpty) {
      buffer.write(_parseTreeNode('', '(empty)', isLast: true, prefix: prefix));
      return buffer.toString();
    }

    for (int i = 0; i < keys.length; i++) {
      final String key = keys[i].toString();
      final dynamic value = map[keys[i]];
      final bool isFirstNodeAndEntry = i == 0 && isFirstNode;

      final bool isLastValue = i == keys.length - 1;
      final bool isLast = isLastNode ?? isLastValue;
      final int tabSize = switch (theme.valueTheme.alignment ?? theme.alignment) {
        AnsiTextAlignment.left => 1 + _lineLength,
        AnsiTextAlignment.center => 1 + _lineLength + key.length ~/ 2,
        AnsiTextAlignment.right => _lineLength + key.length
      };

      final String tab = ' ' * tabSize;
      final String anchor = _getAnchor(isLast: isLast, isFirstNode: isFirstNodeAndEntry);

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
            isFirstNode: isFirstNodeAndEntry,
          ));
          break;

        case TreeNodeType.primary:
          buffer.write(_parseTreeNode(
            key,
            value,
            isLast: isLast,
            prefix: prefix,
            isFirstNode: isFirstNodeAndEntry,
          ));
          break;

        case TreeNodeType.object:
          buffer
            ..write(prefix)
            ..write(anchor)
            ..write(_horizontalLine)
            ..write(' ')
            ..writeln(key.toString().styled(theme.keyTheme.textStyle, theme.keyTheme.color))
            ..write(_parseObject(
              value,
              isLast: isLast,
              prefix: isLast ? '$prefix$tab ' : '$prefix$_verticalLine$tab',
              isFirstNode: isFirstNodeAndEntry,
            ));
          break;
      }
    }

    return buffer.toString();
  }

  String _parseTreeList(
    final List<dynamic> list,
    final String key, [
    final String prefix = '',
    final bool isFirstNode = false,
  ]) {
    final StringBuffer buffer = StringBuffer();

    final List<dynamic> values = list.isEmpty ? <String>['(empty)'] : list;

    for (int i = 0; i < values.length; i++) {
      final bool isLast = i == values.length - 1;
      final bool isFirstNodeAndEntry = i == 0 && isFirstNode;

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
              isFirstNode: isFirstNodeAndEntry,
            ),
          );
          break;

        case TreeNodeType.map:
        case TreeNodeType.iterable:
        case TreeNodeType.object:
          buffer.write(_parseTreeMap(
            <int, dynamic>{i: values[i]},
            prefix: prefix,
            isLastNode: isLast,
            isMemberOfList: true,
            isFirstNode: isFirstNodeAndEntry,
          ));
          break;
      }
    }

    return buffer.toString();
  }

  String _parseObject(
    final dynamic object, {
    final String prefix = '',
    final bool isLast = false,
    final bool isFirstNode = false,
    final bool hasAnchor = false,
  }) {
    try {
      return _parseTreeMap(
        object.toJson(),
        prefix: prefix,
        isFirstNode: isFirstNode,
      );
    } catch (_) {}

    try {
      return _parseTreeMap(
        object.toMap(),
        prefix: prefix,
        isFirstNode: isFirstNode,
      );
    } catch (_) {}

    try {
      return _parseTreeNode(
        '',
        object.toString(),
        prefix: prefix,
        hasAnchor: hasAnchor,
        isLast: true,
        isFirstNode: isFirstNode,
      );
    } catch (_) {}

    return '';
  }
}
