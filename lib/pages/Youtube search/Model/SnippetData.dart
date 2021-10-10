import 'package:flutter_application_3/pages/Youtube%20search/Model/thumbnail.dart';
import 'package:flutter_application_3/pages/Youtube%20search/Model/thumbnailData.dart';

class SnippetData {
  final String publishedAt;
  final String channelId;
  final String title;
  final String description;
  final String channelTitle;
  final String liveBroadcastContent;
  final String publishTime;
  final Thumbnails thumbnails;

  SnippetData(
      {this.publishedAt,
      this.channelId,
      this.title,
      this.description,
      this.channelTitle,
      this.liveBroadcastContent,
      this.publishTime,
      this.thumbnails
      });
      factory SnippetData.fromJson(Map<String,dynamic>json){
        return SnippetData(
          publishedAt: json['publishedAt'],
          channelId: json['channelId'],
          title: json['title'],
          description: json['description'],
          channelTitle: json['channelTitle'],
          liveBroadcastContent: json['liveBroadcastContent'],
          publishTime: json['publishTime'],
          thumbnails: Thumbnails.fromJson(json['thumbnails'])
          
        );
      }
}
