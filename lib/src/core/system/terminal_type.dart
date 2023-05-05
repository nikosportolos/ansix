enum TerminalType {
  unknown,
  bash,
  cmd,
  powershell;

  bool get isValid {
    return this == TerminalType.bash || this == TerminalType.powershell;
  }
}
