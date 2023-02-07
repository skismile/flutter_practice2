class UserModel

{
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  UserModel(
      {
        required this.albumId,
        required this.id,
        required this.title,
        required this.url,
        required this.thumbnailUrl
        
      }
          );
}
