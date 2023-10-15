enum Browser {
  chrome('Google Chrome', true),
  opera('Opera', true),
  edge('Microsoft Edge', true),
  firefox('Mozilla Firefox', false),
  safari('Apple Safari', false),
  unknown('Unknown web browser', false);

  const Browser(
    this.name,
    this.supportsAnsi,
  );

  final String name;
  final bool supportsAnsi;
}

class BrowserDetector {
  const BrowserDetector();

  Browser detect(final String userAgent) {
    if (userAgent.contains('Firefox')) {
      return Browser.firefox;
    }
    if (userAgent.contains('OPR')) {
      return Browser.opera;
    }
    if (userAgent.contains('Edg')) {
      return Browser.edge;
    }
    if (userAgent.contains('Chrome')) {
      return Browser.chrome;
    }
    if (userAgent.contains('Safari')) {
      return Browser.safari;
    }
    return Browser.unknown;
  }
}
