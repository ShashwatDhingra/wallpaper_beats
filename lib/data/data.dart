import 'package:wallpaper_beats/models/category_model.dart';

List<CategoryModel> getCategory(){
  
  List<CategoryModel> categories =  [];

  CategoryModel categoryModel = CategoryModel(categoryName: 'Street Art', imageUrl: 'https://images.pexels.com/photos/162379/lost-places-pforphoto-leave-factory-162379.jpeg');

  categories.add(categoryModel);

  categoryModel = CategoryModel(categoryName: 'Wild Life', imageUrl: 'https://images.pexels.com/photos/704320/pexels-photo-704320.jpeg');

  categories.add(categoryModel);

  categoryModel = CategoryModel(categoryName: 'Nature', imageUrl: 'https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');

  categories.add(categoryModel);

  categoryModel = CategoryModel(categoryName: 'Aeroplane', imageUrl: 'https://images.pexels.com/photos/358319/pexels-photo-358319.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
  
  categories.add(categoryModel);

  return categories;

}