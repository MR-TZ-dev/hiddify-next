class Route {
  String outboundIfMatch; // direct, direct_with_fragment, block, proxy

  String name;

  List<String> ruleSetUrls;

  List<String> packageNames;

  List<String> processNames;

  List<String> processPaths;

  String network; // all, tcp, udp

  List<String> destinationPorts;

  List<String> sourcePorts;

  List<String> protocols; // tls, http, quic, STUN, DNS, BitTorrent

  List<String> destinationIpCidr;

  List<String> sourceIpCidr;

  List<String> domains;

  List<String> domainSuffixes;

  List<String> domainKeywords;

  List<String> domainRegex;

  Route({
    required this.outboundIfMatch,
    required this.name,
    this.ruleSetUrls = const [],
    this.packageNames = const [],
    this.processNames = const [],
    this.processPaths = const [],
    this.network = 'all',
    this.destinationPorts = const [],
    this.sourcePorts = const [],
    this.protocols = const [],
    this.destinationIpCidr = const [],
    this.sourceIpCidr = const [],
    this.domains = const [],
    this.domainSuffixes = const [],
    this.domainKeywords = const [],
    this.domainRegex = const [],
  });
}
