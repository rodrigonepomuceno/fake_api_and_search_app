class NewsModel {
  late String id;
  late int type;
  late String title;
  late String contents;
  late String postImage;
  late bool liked;
  late List<Comments> comments;
  late Author author;
  late String tag;
  late String dimensions;
  NewsModel({
    required this.id,
    required this.type,
    required this.title,
    required this.contents,
    required this.postImage,
    required this.liked,
    required this.comments,
    required this.author,
    required this.dimensions,
  });

  NewsModel.empty();

  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    title = json['title'];
    contents = json['contents'];
    postImage = json['post_image'];
    liked = json['liked'];
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments.add(Comments.fromJson(v));
      });
    }
    author = (json['author'] != null ? Author.fromJson(json['author']) : null)!;
    tag = json['tag'];
    dimensions = json['dimensions'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['title'] = title;
    data['contents'] = contents;
    data['post_image'] = postImage;
    data['liked'] = liked;
    data['comments'] = comments.map((v) => v.toJson()).toList();
    data['author'] = author.toJson();
    data['tag'] = tag;
    data['dimensions'] = dimensions;
    return data;
  }
}

class Comments {
  late String email;
  late String comment;
  late int stars;

  Comments({email, comment, stars});

  Comments.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    comment = json['comment'];
    stars = json['stars'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['comment'] = comment;
    data['stars'] = stars;
    return data;
  }
}

class Author {
  late String name;
  late String slogan;
  late String avatar;
  late String country;

  Author({
    required name,
    required slogan,
    required avatar,
    required country,
    required tag,
  });

  Author.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slogan = json['slogan'];
    avatar = json['avatar'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['slogan'] = slogan;
    data['avatar'] = avatar;
    data['country'] = country;

    return data;
  }
}
