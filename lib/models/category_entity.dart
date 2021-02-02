class CategoryEntity {
  CategoryEntity({this.category});
  CategoryEntity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      category = <CategoryModel>[];
      (json['data'] as List).forEach((v) {
        category.add(CategoryModel.fromJson(v));
      });
    }
  }
  List<CategoryModel> category;
}

class CategoryModel {
  CategoryModel({this.name, this.id, this.categoryInfoModels});
  factory CategoryModel.fromJson(Map<String, dynamic> parsedJson) {
    final List list = parsedJson['bannerList'] as List;

    final List<CategoryInfoModel> categoryInfoList =
        list.map((i) => CategoryInfoModel.fromJson(i)).toList();
    return CategoryModel(
        id: parsedJson['id'],
        name: parsedJson['name'],
        categoryInfoModels: categoryInfoList);
  }
  String name;
  String id;
  List<CategoryInfoModel> categoryInfoModels;
}

class CategoryInfoModel {
    CategoryInfoModel(
      {this.createBy,
      this.createTime,
      this.idFile,
      this.modifyBy,
      this.modifyTime,
      this.title,
      this.type,
      this.url,
      this.id,
      this.page});

  CategoryInfoModel.fromJson(Map<String, dynamic> json) {
    createBy = json['createBy'];
    createTime = json['createTime'];
    idFile = json['idFile'];
    modifyBy = json['modifyBy'];
    modifyTime = json['modifyTime'];
    title = json['title'];
    type = json['type'];
    url = json['url'];
    id = json['id'];
    page = json['page'];
    param = json['param'];
  }

  String createBy;
  String createTime;
  String idFile;
  String modifyBy;
  String modifyTime;
  String title;
  String type;
  String url;
  String id;
  String page;
  String param;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['createBy'] = createBy;
    data['createTime'] = createTime;
    data['idFile'] = idFile;
    data['modifyBy'] = modifyBy;
    data['modifyTime'] = modifyTime;
    data['title'] = title;
    data['type'] = type;
    data['url'] = url;
    data['id'] = id;
    data['page'] = page;
    return data;
  }
}
