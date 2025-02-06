import '../../../../../util/contants.dart';

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

class PaginationModelRequest {
  int page;
  int limit;
  String sort;
  String? q;

  PaginationModelRequest({
    this.page = 1,
    this.limit = Constants.paginationLimit,
    this.sort = Constants.desc,
    this.q,
  });

  factory PaginationModelRequest.fromJson(Map<String, dynamic> json) {
    return PaginationModelRequest(
      page: json['page'],
      limit: json['limit'],
      sort: json['sort'],
      q: json['q'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'sort': sort,
      'limit': limit,
      if (q != null) 'q': q,
    };
  }

  factory PaginationModelRequest.empty() {
    return PaginationModelRequest(
      page: 0,
      limit: 0,
    );
  }
}
