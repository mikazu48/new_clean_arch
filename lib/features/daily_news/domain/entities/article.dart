import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';

class ArticleEntity extends Equatable {
  final String? id;
  @ignore
  final Source? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  const ArticleEntity({
    this.id,
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  @override
  List<Object?> get props {
    return [
      id,
      source,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content,
    ];
  }
}

class Source {
  final String? id;
  final String? name;

  Source({this.id, this.name});
}

class SourceConverter extends TypeConverter<String, dynamic> {
  @override
  String decode(dynamic value) {
    return value['id'].toString();
  }

  @override
  encode(String value) {
    return jsonEncode(value);
  }
}
