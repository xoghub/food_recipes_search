class SearchResult {
  String? id;
  String? name;
  String? image;
  SearchResult({this.id, this.image, this.name});
  factory SearchResult.fromJson(json) {
    return SearchResult(
      id: json['id'].toString(),
      name: json['title'],
      image: json['image'],
    );
  }
}

class SearchResultList {
  final List<SearchResult> list;
  SearchResultList({
    required this.list,
  });

  factory SearchResultList.fromJson(List<dynamic> json) {
    return SearchResultList(
      list: json.map((e) => SearchResult.fromJson(e)).toList(),
    );
  }
}
