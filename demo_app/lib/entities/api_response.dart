final class ApiResponse {
  final int total;
  final List<Map<String, dynamic>> list;

  const ApiResponse({
    required this.list,
    required this.total,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      list: List<Map<String, dynamic>>.from(json["list"]),
      total: json['total'],
    );
  }
}
