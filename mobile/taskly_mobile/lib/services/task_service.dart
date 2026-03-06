import 'package:dio/dio.dart';
import '../models/task_model.dart';

class TaskService {
  final Dio _dio = Dio(BaseOptions(baseUrl: "http://192.168.1.192:5283/api/"));

  Future<List<Task>> getTasks() async {
    final response = await _dio.get("tasks");

    List data = response.data;

    return data.map((e) => Task.fromJson(e)).toList();
  }
}
