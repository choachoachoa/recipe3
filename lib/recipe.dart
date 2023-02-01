class Recipe{
  String? label;
  String? imageUrl;

  //Recipe 공장
  //this는 생성자고 주문서 개념으로.
  //그럼 instance라는 게 생성이 됨
  // 공장: class, 차량: instance
  Recipe(
      this.label, this.imageUrl
      );
}
