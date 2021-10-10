class PageinfoData {
final int totalResults;
final int resultsPerPage;

  PageinfoData({this.totalResults, this.resultsPerPage});

factory PageinfoData.fromJson(Map<String,dynamic> json){
      return PageinfoData(
        totalResults:json['totalResults'],
        resultsPerPage:json['resultsPerPage'],
      );

    }
}  