import 'package:flutter/foundation.dart';
import 'package:flutter_application_3/pages/Youtube%20search/Model/itemdata.dart';
import 'package:flutter_application_3/pages/Youtube%20search/Model/page_info.dart';

class YoutubeSearchmodel {
  final String kind;
  final String etag;
  final String nextPageToken;
  final String regionCode;
  final PageinfoData pageInfo;
  final List<ItemData> items;

  YoutubeSearchmodel({
    this.kind,
    this.etag,
    this.nextPageToken,
    this.regionCode,
    this.pageInfo,
    this.items,
    });
    factory YoutubeSearchmodel.fromJson(Map<String,dynamic> json){
      final items=json['items'] as List;
     List<ItemData> itemData=items.map((singleItem) => ItemData.fromJson(singleItem)).toList();
      
      return YoutubeSearchmodel(
        etag:json['kind'],
        kind:json['kind'],
        regionCode: json['regionCode'],
        nextPageToken: json['nextPageToken'],
        pageInfo:PageinfoData.fromJson(json['pageInfo']),
        items: itemData,
      );

    }
}

