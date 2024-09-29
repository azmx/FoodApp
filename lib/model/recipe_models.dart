class RecipeModel {
  final String name;
  final String imageUrl;
  final double rating;
  final List<Map<String, String>> ingredients;
  final String time;
  final List<String> procedure;

  RecipeModel(
    {
    required this.name,
    required this.imageUrl,
    required this.ingredients,
    required this.procedure, required this.rating,
    required this.time
  });
}
