class IDdata {
final String kind;
final String videoId;

  IDdata({this.kind, this.videoId});
  factory IDdata.fromJson(Map<String,dynamic>json){
    return IDdata(
      kind: json['kind'],
      videoId: json['videoId']
      );
  }
}