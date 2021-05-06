class StreamItem{
  // stream source
  final String source;

  //article title
  final String title;
  //article pubDate
  final String pubDate;
  //article abstract info
  final String abstract;
  //article url link
  final String url;

  //Read status
  final bool readFlag;
  final bool favorite;
  //article not to show manually
  final bool hided;
  //article filtered by rules
  final bool filtered;

  StreamItem(this.source, this.title, this.pubDate, this.abstract, this.url,
      this.readFlag, this.favorite, this.hided, this.filtered);
}