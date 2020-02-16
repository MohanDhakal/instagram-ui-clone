class Post{
  int _id;
  String _caption;
  List<String>_imageList;
  Post();
  Post.name(this._id, this._caption, this._imageList);

  List<String> get imageList => _imageList;

  set imageList(List<String> value) {
    _imageList = value;
  }


  String get caption => _caption;

  set caption(String value) {
    _caption = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

}