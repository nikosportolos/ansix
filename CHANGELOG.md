## v0.1.0

#### Dependencies

- Bump data_class_plugin from 1.0.2 to 1.0.3 ([#148](https://github.com/nikosportolos/ansix/pull/148))
- Bump collection from 1.17.2 to 1.18.0 ([#149](https://github.com/nikosportolos/ansix/pull/149))
- Bump nikosportolos/dart_package from 0.0.6 to 0.1.0 ([#150](https://github.com/nikosportolos/ansix/pull/150))
- Bump mocktail from 0.3.0 to 1.0.0 ([#152](https://github.com/nikosportolos/ansix/pull/152))
- Bump test from 1.24.4 to 1.24.6 ([#154](https://github.com/nikosportolos/ansix/pull/154))
- Bump test from 1.24.4 to 1.24.6 in /tool/export_docs ([#155](https://github.com/nikosportolos/ansix/pull/155))
- Bump tachyon from 0.0.7 to 0.0.8 ([#156](https://github.com/nikosportolos/ansix/pull/156))
- Bump data_class_plugin from 1.0.3 to 1.0.4 ([#157](https://github.com/nikosportolos/ansix/pull/157))
- Bump min dart SDK to 3.1.0 ([#158](https://github.com/nikosportolos/ansix/pull/158))
- Bump 'dart-package' action to 0.1.1 ([#160](https://github.com/nikosportolos/ansix/pull/160))


#### Documentation

- Update README.md ([#162](https://github.com/nikosportolos/ansix/pull/162))


#### Changes/Improvements

- Modify header theme of AnsiTreeView ([#164](https://github.com/nikosportolos/ansix/pull/164))



## v0.0.9-prerelease

#### Changes/Improvements

- AnsiTable: Set headerTextStyle & footerTextStyle as optional ([#134](https://github.com/nikosportolos/ansix/pull/134))
- Refactor AnsiX class library ([#136](https://github.com/nikosportolos/ansix/pull/136))

#### Dependencies

- Bump tachyon to 0.0.7 ([#142](https://github.com/nikosportolos/ansix/pull/142))
- Bump test to 1.24.4 ([#143](https://github.com/nikosportolos/ansix/pull/143))


## v0.0.8-prerelease

#### Dependencies

- Bump data_class_plugin from 1.0.1 to 1.0.2 ([#122](https://github.com/nikosportolos/ansix/pull/122))

#### Documentation

- Add screenshots & topics in pubspec.yaml ([#126](https://github.com/nikosportolos/ansix/issues/126))

#### AnsiTable

- Fix transparency ([#128](https://github.com/nikosportolos/ansix/issues/128))
  - Add the ANSI reset escape code in every line if the transparent flag is set to true.

- Add default AnsiTextTheme for cell values ([#130](https://github.com/nikosportolos/ansix/issues/130))
  - Provide different `AnsiTextTheme` for headers, footers and all other cells.


## v0.0.7-prerelease

- Refactor extensions ([#67](https://github.com/nikosportolos/ansix/issues/67))
- Migrate to [Tachyon](https://pub.dev/packages/tachyon) ([#71](https://github.com/nikosportolos/ansix/issues/71))
- Enable Dart 3 ([#88](https://github.com/nikosportolos/ansix/issues/88))
  - Bump minimum Dart SDK to 3.0.0
  - Bump lints to 2.1.1
  - AnsiTreeView: Add support for [records](https://dart.dev/language/records)
  - Update GitHub workflows
- **AnsiTreeView**: Add alignment for tree node value ([#105](https://github.com/nikosportolos/ansix/issues/105))
- Create new Widget **AnsiOutlinedText** ([#106](https://github.com/nikosportolos/ansix/issues/106))
- **AnsiOutlinedText**: Add text wrap options ([#115](https://github.com/nikosportolos/ansix/issues/115))
- **AnsiTreeView**: Add wrap options ([#117](https://github.com/nikosportolos/ansix/issues/117))


## v0.0.6-prerelease

#### Bug fixes

- AnsiTable uses external color if no border color is set ([#93](https://github.com/nikosportolos/ansix/issues/93))
- Wrapped lines in AnsiTreeView lose their styling ([#98](https://github.com/nikosportolos/ansix/issues/98))

#### Misc

- Add missing tests ([#94](https://github.com/nikosportolos/ansix/issues/94))
- Add more documentation on public API elements ([#97](https://github.com/nikosportolos/ansix/issues/97))
- Update examples & README.md ([#102](https://github.com/nikosportolos/ansix/issues/102))


## v0.0.5-prerelease

#### AnsiTreeView enhancements & bug fixes 

- Refactor AnsiTreeViewTheme ([#75](https://github.com/nikosportolos/ansix/issues/75))
  - Rename `TreeAnchorTheme` to `AnsiTreeAnchorTheme`
  - Rename `TreeClassTheme` to `AnsiTreeClassTheme`
  - Rename `TreeNodeTheme` to `AnsiTreeNodeTheme`
  - Replace AnsiTreeAnchorTheme's `BoxDrawingSet` property with `AnsiBorderStyle`
- AnsiTreeView - fix border & anchor issues ([#77](https://github.com/nikosportolos/ansix/issues/77))
- Add copyWith on AnsiTreeViewTheme ([#79](https://github.com/nikosportolos/ansix/issues/79))
- AnsiTreeView - fix class header border replacement ([#83](https://github.com/nikosportolos/ansix/issues/83))
- Update AnsiTreeView examples on README.md ([#85](https://github.com/nikosportolos/ansix/issues/85))
- AnsiTreeView: Handle new lines & long text ([#90](https://github.com/nikosportolos/ansix/issues/90))


#### Misc
- Export drawing enums ([#72](https://github.com/nikosportolos/ansix/issues/72))
- AnsiBorder - Set 'none' as default type and 'square' as default style ([#81](https://github.com/nikosportolos/ansix/issues/81))
- Detect terminal size ([#87](https://github.com/nikosportolos/ansix/issues/87))


## v0.0.4-prerelease

#### New features

- Introduced a new widget, `AnsiTreeView` ([#58](https://github.com/nikosportolos/ansix/issues/58),
[#63](https://github.com/nikosportolos/ansix/issues/63))
  
  Read more [here](https://github.com/nikosportolos/ansix#ansitreeview)

#### Bug fixes

- Fix AnsiTable with only one cell ([#59](https://github.com/nikosportolos/ansix/issues/59))
- Export class AnsiTableRow ([#62](https://github.com/nikosportolos/ansix/issues/62))

#### Misc
- AnsiTable - Set default AnsiBorderType to all ([#68](https://github.com/nikosportolos/ansix/issues/68))
- Update CONTRIBUTING.md


## v0.0.3-prerelease

#### Bug fixes

- AnsiTable: Fix cell width calculation for styled/colored text ([#50](https://github.com/nikosportolos/ansix/issues/50))

#### Dependencies

- Bump test from 1.24.2 to 1.24.3 ([#46](https://github.com/nikosportolos/ansix/pull/46))


## v0.0.2-prerelease

#### AnsiX

- ensureSupportsAnsi throws exception on Mac/VSCode  ([#12](https://github.com/nikosportolos/ansix/issues/12))
- Export missing classes ([#13](https://github.com/nikosportolos/ansix/issues/13),
  [#20](https://github.com/nikosportolos/ansix/issues/20))

#### Extensions

- Refactor coloredRgb extension ([#35](https://github.com/nikosportolos/ansix/issues/35))

#### Widgets

- Support AnsiText headers in AnsiTable.fromMap ([#14](https://github.com/nikosportolos/ansix/issues/14))
- Add a space separator between columns in tables with no inside vertical border ([#16](https://github.com/nikosportolos/ansix/issues/16))
- Refactor AnsiText properties ([#24](https://github.com/nikosportolos/ansix/issues/24))
- Remove markdown border style ([#32](https://github.com/nikosportolos/ansix/issues/32))

#### Documentation

- Update README.md ([#15](https://github.com/nikosportolos/ansix/issues/15),
  [#17](https://github.com/nikosportolos/ansix/issues/17))
- Add badges in CONTRIBUTING.md ([#28](https://github.com/nikosportolos/ansix/issues/28))
- Add FAQ.md ([#37](https://github.com/nikosportolos/ansix/issues/37))

#### Testing

- Add missing tests ([#39](https://github.com/nikosportolos/ansix/issues/39))


## v0.0.1-prerelease

- Initial beta release
