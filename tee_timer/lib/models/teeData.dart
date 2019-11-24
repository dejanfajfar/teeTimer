
class TeeData {
  String name;
  int brewTime;
  String imageAsset;

  TeeData(String teeName, int brewTime) {
    this.name = teeName;
    this.brewTime = brewTime;
    this.imageAsset = "images/tea_default.jpg";
  }

  TeeData.black() {
    this.name = "Black tee";
    this.brewTime = 3;
    this.imageAsset = "images/tea_black.jpg";
  }

  TeeData.green() {
    this.name = "Green tee";
    this.brewTime = 3;
    this.imageAsset = "images/tea_green.jpg";
  }

  TeeData.herbal() {
    this.name = "Herbal tee";
    this.brewTime = 8;
    this.imageAsset = "images/tea_herbal.jpg";
  }

  TeeData.fruit() {
    this.name = "Fruit tee";
    this.brewTime = 12;
    this.imageAsset = "images/tea_fruit.jpg";
  }

}