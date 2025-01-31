class PaginationModel<T> {
  int total;
  int page;
  int limit;
  int totalPages;
  List<T> data;

  PaginationModel({
    required this.total,
    required this.page,
    required this.limit,
    required this.totalPages,
    required this.data,
  });

  factory PaginationModel.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    return PaginationModel(
      total: json['total'],
      page: json['page'],
      limit: json['limit'],
      totalPages: json['totalPages'],
      data: List<T>.from(json['data'].map((item) => fromJsonT(item))),
    );
  }

  Map<String, dynamic> toJson(Object Function(T) toJsonT) {
    return {
      'total': total,
      'page': page,
      'limit': limit,
      'totalPages': totalPages,
      'data': data.map((item) => toJsonT(item)).toList(),
    };
  }

  factory PaginationModel.empty() {
    return PaginationModel(
      total: 0,
      page: 0,
      limit: 0,
      totalPages: 0,
      data: [],
    );
  }
}
