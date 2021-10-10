import 'package:flutter_application_3/pages/Youtube%20search/Model/iddata.dart';

import 'SnippetData.dart';

class ItemData {
  final String kind;
  final String etag;
  final IDdata id;
  final SnippetData snippet;

  ItemData({this.kind, this.etag,this.id,this.snippet});

  factory ItemData.fromJson(Map<String,dynamic>json){
    return ItemData(
      kind: json['kind'],
      etag: json['etag'],
      id: IDdata.fromJson(json["id"]),
      snippet: SnippetData.fromJson(json['snippet']),

      
    );
  }
  
}