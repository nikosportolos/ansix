## v0.3.5

- Bump to Dart SDK `>=3.9.0`
- Dependency updates

## v0.3.4

Dependency updates and source code maintenance.


## v0.3.3

### TreeView enhancements & fixes ([#261](https://github.com/nikosportolos/ansix/pull/261), [#261](https://github.com/nikosportolos/ansix/pull/263), [#263](https://github.com/nikosportolos/ansix/pull/263))
  - Fixed issue when sublists were parsed as maps
  - Fixed various issues with `compact` flag of AnsiTreeViewTheme
  - Added `hideIfEmpty` flag in AnsiTreeAnchorTheme
  - Added more tests

### Dependencies

- Βump meta from 1.11.0 to 1.12.0 ([#258](https://github.com/nikosportolos/ansix/pull/258))
- Βump mocktail from 1.0.2 to 1.0.3 ([#259](https://github.com/nikosportolos/ansix/pull/259))
- Βump test from 1.25.1 to 1.25.2 ([#260](https://github.com/nikosportolos/ansix/pull/260))


## v0.3.2

### Dependencies

- Bump data_class_plugin from 1.2.1 to 1.3.0 ([#256](https://github.com/nikosportolos/ansix/pull/256))
- Bump test from 1.24.9 to 1.25.1 ([#255](https://github.com/nikosportolos/ansix/pull/255))
- Bump mocktail from 1.0.1 to 1.0.2 ([#254](https://github.com/nikosportolos/ansix/pull/254))
- Bump path from 1.8.3 to 1.9.0 ([#253](https://github.com/nikosportolos/ansix/pull/253))
- Bump tachyon from 0.2.2 to 0.3.0 ([#252](https://github.com/nikosportolos/ansix/pull/252))
- Bump data_class_plugin from 1.1.0 to 1.2.1 ([#251](https://github.com/nikosportolos/ansix/pull/251))
- Bump test from 1.24.8 to 1.24.9 ([#250](https://github.com/nikosportolos/ansix/pull/250))
- Bump tachyon from 0.1.0 to 0.2.2 ([#249](https://github.com/nikosportolos/ansix/pull/249))


## v0.3.1

### Dependencies

- Bump lints from 2.1.1 to 3.0.0 ([#241](https://github.com/nikosportolos/ansix/pull/241))
- Bump lints from 2.1.1 to 3.0.0 in /tool/export_docs ([#246](https://github.com/nikosportolos/ansix/pull/246))

### CI/CD

- Bump nikosportolos/dart_package from 0.1.2 to 0.2.0 ([#242](https://github.com/nikosportolos/ansix/pull/242))
- Bump actions/checkout from 4.1.0 to 4.1.1 ([#243](https://github.com/nikosportolos/ansix/pull/243))
- Dependabot: Check github actions weekly ([#244](https://github.com/nikosportolos/ansix/issues/244))
- Bump nikosportolos/dart_package from 0.2.0 to 0.2.1 ([#247](https://github.com/nikosportolos/ansix/pull/247))


## v0.3.0

### Changes/Improvements

- Enhance web support ([#225](https://github.com/nikosportolos/ansix/issues/225))
  - Create custom BrowserDetector ([#236](https://github.com/nikosportolos/ansix/issues/236))
- Enhance printing methods ([#226](https://github.com/nikosportolos/ansix/issues/226))
  - Create method printDataGrid ([#220](https://github.com/nikosportolos/ansix/pull/220))
  - Create Writer to mute all Ansi escape codes ([#221](https://github.com/nikosportolos/ansix/pull/221))
  - Create print method ([#223](https://github.com/nikosportolos/ansix/pull/223))
  - Refactor writer ([#224](https://github.com/nikosportolos/ansix/pull/224))
    - Rename to 'Printer' for consistency
    - Enhance testing
- Add more options in ensureSupportsAnsi() ([#234](https://github.com/nikosportolos/ansix/issues/234))

### Bug fixes

- Fix static instance ([#222](https://github.com/nikosportolos/ansix/pull/222))

### Dependencies

- Bump meta from 1.10.0 to 1.11.0 ([#228](https://github.com/nikosportolos/ansix/issues/228))
- Bump test from 1.24.7 to 1.24.8 ([#229](https://github.com/nikosportolos/ansix/issues/229))

### Testing

- Add missing process manager test ([#238](https://github.com/nikosportolos/ansix/issues/238))


## v0.2.3

### Changes/Improvements

- AnsiOutlinedText: Set default border ([#211](https://github.com/nikosportolos/ansix/issues/211))

### Dependencies

- Bump tachyon from 0.0.9 to 0.1.0 ([#213](https://github.com/nikosportolos/ansix/pull/213))
- Bump data_class_plugin from 1.0.5 to 1.1.0 ([#214](https://github.com/nikosportolos/ansix/pull/214))
- Bump test from 1.24.6 to 1.24.7 ([#215](https://github.com/nikosportolos/ansix/pull/215))
- Bump mocktail from 1.0.0 to 1.0.1 ([#216](https://github.com/nikosportolos/ansix/pull/216))

### Misc

- Decrease project line length to 80 ([#217](https://github.com/nikosportolos/ansix/issues/217))



## v0.2.2

### Improvements & Fixes on [AnsiTreeView](https://github.com/nikosportolos/ansix/blob/main/.documentation/features/widgets.md#ansitreeview)

- Fix tree alignment ([#206](https://github.com/nikosportolos/ansix/issues/206))
- Increase the prefix of the last node if it's a List ([#208](https://github.com/nikosportolos/ansix/issues/208))



## v0.2.1

### Changes/Improvements

- Enable web platform support ([#196](https://github.com/nikosportolos/ansix/issues/196))

  - Conditional import between `dart:io` and `dart:html` depending on the platform  
  - Create separate implementations for io-dependant functions  

### Dependencies

- Bump data_class_plugin from 1.0.4 to 1.0.5 ([#198](https://github.com/nikosportolos/ansix/issues/198))
- Bump nikosportolos/dart_package from 0.1.1 to 0.1.2  ([#201](https://github.com/nikosportolos/ansix/issues/201))
- Bump checkout  from 3.6.0 to 4.1.0  ([#203](https://github.com/nikosportolos/ansix/issues/203))



## v0.2.0

**BREAKING CHANGES**

> **Refactor AnsiTable to AnsiGrid**
> 
> _AnsiTable_ gets deprecated and replaced with 
> [**AnsiGrid**](./.documentation/features/widgets.md#ansigrid) which supports text-wrapping and
> multiple lines of text in each grid cell.


### Changes/Improvements

- AnsiTable: Wrap line if AnsiText.fixedWidth is set ([#3](https://github.com/nikosportolos/ansix/issues/3))
- AnsiTable: Support multiline cells ([#138](https://github.com/nikosportolos/ansix/issues/138))
- Refactor AnsiTreeView ([#171](https://github.com/nikosportolos/ansix/issues/171))
- Create 'AnsiWidget' interface ([#173](https://github.com/nikosportolos/ansix/issues/173))
- Refactor AnsiOutlinedText ([#176](https://github.com/nikosportolos/ansix/issues/176))
- AnsiGridTheme: Remove 'fixedCellWidth' ([#185](https://github.com/nikosportolos/ansix/issues/185))
- Set AnsiBorderType.all as default border type ([#187](https://github.com/nikosportolos/ansix/issues/187))
- Create 'writeTabs' string buffer extension ([#191](https://github.com/nikosportolos/ansix/issues/191))


### Bug fixes

- AnsiGrid: Wrong cell width when keepSameWidth is true with center alignment ([#178](https://github.com/nikosportolos/ansix/issues/178))
- Fix AnsiGrid issues ([#180](https://github.com/nikosportolos/ansix/issues/180))
  - Fix wrong calculation for AnsiText content with horizontal padding and center alignment
  - Fix border color
  - Fix background color with vertical padding
- AnsiTreeView: Fix header issues ([#189](https://github.com/nikosportolos/ansix/issues/189))


### Documentation

- Update badges on README.md ([#181](https://github.com/nikosportolos/ansix/issues/181))
- Update topics and screenshots for [pub.dev](https://pub.dev/packages/ansix)
- Update screenshots ([#194](https://github.com/nikosportolos/ansix/issues/194))
- Update outdated examples & tests


### Dependencies

- Bump ansix from 0.0.9-prerelease to 0.1.0 in /tool/export_docs ([#168](https://github.com/nikosportolos/ansix/pull/168))
- Bump tachyon from 0.0.8 to 0.0.9 ([#169](https://github.com/nikosportolos/ansix/pull/169))
- Bump meta from 1.9.1 to 1.10.0 ([#170](https://github.com/nikosportolos/ansix/pull/170))



## v0.1.0

### Dependencies

- Bump data_class_plugin from 1.0.2 to 1.0.3 ([#148](https://github.com/nikosportolos/ansix/pull/148))
- Bump collection from 1.17.2 to 1.18.0 ([#149](https://github.com/nikosportolos/ansix/pull/149))
- Bump nikosportolos/dart_package from 0.0.6 to 0.1.0 ([#150](https://github.com/nikosportolos/ansix/pull/150))
- Bump mocktail from 0.3.0 to 1.0.0 ([#152](https://github.com/nikosportolos/ansix/pull/152))
- Bump test from 1.24.4 to 1.24.6 ([#154](https://github.com/nikosportolos/ansix/pull/154))
- Bump test from 1.24.4 to 1.24.6 in /tool/export_docs ([#155](https://github.com/nikosportolos/ansix/pull/155))
- Bump tachyon from 0.0.7 to 0.0.8 ([#156](https://github.com/nikosportolos/ansix/pull/156))
- Bump data_class_plugin from 1.0.3 to 1.0.4 ([#157](https://github.com/nikosportolos/ansix/pull/157))
- Bump min dart SDK to 3.1.0 ([#158](https://github.com/nikosportolos/ansix/issues/158))
- Bump 'dart-package' action to 0.1.1 ([#160](https://github.com/nikosportolos/ansix/issues/160))


### Documentation

- Update README.md ([#162](https://github.com/nikosportolos/ansix/issues/162))


### Changes/Improvements

- Modify header theme of AnsiTreeView ([#164](https://github.com/nikosportolos/ansix/issues/164))



## v0.0.9-prerelease

### Changes/Improvements

- AnsiTable: Set headerTextStyle & footerTextStyle as optional ([#134](https://github.com/nikosportolos/ansix/issues/134))
- Refactor AnsiX class library ([#136](https://github.com/nikosportolos/ansix/issues/136))

### Dependencies

- Bump tachyon to 0.0.7 ([#142](https://github.com/nikosportolos/ansix/issues/142))
- Bump test to 1.24.4 ([#143](https://github.com/nikosportolos/ansix/issues/143))


## v0.0.8-prerelease

### Dependencies

- Bump data_class_plugin from 1.0.1 to 1.0.2 ([#122](https://github.com/nikosportolos/ansix/pull/122))

### Documentation

- Add screenshots & topics in pubspec.yaml ([#126](https://github.com/nikosportolos/ansix/issues/126))

### AnsiTable

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

### Bug fixes

- AnsiTable uses external color if no border color is set ([#93](https://github.com/nikosportolos/ansix/issues/93))
- Wrapped lines in AnsiTreeView lose their styling ([#98](https://github.com/nikosportolos/ansix/issues/98))

### Misc

- Add missing tests ([#94](https://github.com/nikosportolos/ansix/issues/94))
- Add more documentation on public API elements ([#97](https://github.com/nikosportolos/ansix/issues/97))
- Update examples & README.md ([#102](https://github.com/nikosportolos/ansix/issues/102))


## v0.0.5-prerelease

### AnsiTreeView enhancements & bug fixes 

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


### Misc
- Export drawing enums ([#72](https://github.com/nikosportolos/ansix/issues/72))
- AnsiBorder - Set 'none' as default type and 'square' as default style ([#81](https://github.com/nikosportolos/ansix/issues/81))
- Detect terminal size ([#87](https://github.com/nikosportolos/ansix/issues/87))


## v0.0.4-prerelease

### New features

- Introduced a new widget, `AnsiTreeView` ([#58](https://github.com/nikosportolos/ansix/issues/58),
[#63](https://github.com/nikosportolos/ansix/issues/63))
  
  Read more [here](https://github.com/nikosportolos/ansix#ansitreeview)

### Bug fixes

- Fix AnsiTable with only one cell ([#59](https://github.com/nikosportolos/ansix/issues/59))
- Export class AnsiTableRow ([#62](https://github.com/nikosportolos/ansix/issues/62))

### Misc
- AnsiTable - Set default AnsiBorderType to all ([#68](https://github.com/nikosportolos/ansix/issues/68))
- Update CONTRIBUTING.md


## v0.0.3-prerelease

### Bug fixes

- AnsiTable: Fix cell width calculation for styled/colored text ([#50](https://github.com/nikosportolos/ansix/issues/50))

### Dependencies

- Bump test from 1.24.2 to 1.24.3 ([#46](https://github.com/nikosportolos/ansix/pull/46))


## v0.0.2-prerelease

### AnsiX

- ensureSupportsAnsi throws exception on Mac/VSCode  ([#12](https://github.com/nikosportolos/ansix/issues/12))
- Export missing classes ([#13](https://github.com/nikosportolos/ansix/issues/13),
  [#20](https://github.com/nikosportolos/ansix/issues/20))

### Extensions

- Refactor coloredRgb extension ([#35](https://github.com/nikosportolos/ansix/issues/35))

### Widgets

- Support AnsiText headers in AnsiTable.fromMap ([#14](https://github.com/nikosportolos/ansix/issues/14))
- Add a space separator between columns in tables with no inside vertical border ([#16](https://github.com/nikosportolos/ansix/issues/16))
- Refactor AnsiText properties ([#24](https://github.com/nikosportolos/ansix/issues/24))
- Remove markdown border style ([#32](https://github.com/nikosportolos/ansix/issues/32))

### Documentation

- Update README.md ([#15](https://github.com/nikosportolos/ansix/issues/15),
  [#17](https://github.com/nikosportolos/ansix/issues/17))
- Add badges in CONTRIBUTING.md ([#28](https://github.com/nikosportolos/ansix/issues/28))
- Add FAQ.md ([#37](https://github.com/nikosportolos/ansix/issues/37))

### Testing

- Add missing tests ([#39](https://github.com/nikosportolos/ansix/issues/39))


## v0.0.1-prerelease

- Initial beta release
