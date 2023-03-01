class FeatureList {
  String? image;
  String? feature;

  FeatureList({this.image, this.feature});

  FeatureList.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    feature = json['feature'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['feature'] = this.feature;
    return data;
  }
}
