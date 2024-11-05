class HomeApiResponseModel {
  final int success;
  final String message;
  final List<Banner> banner1;
  final List<Banner> banner2;
  final List<Banner> banner3;
  final List<Banner> banner4;
  final List<dynamic> banner5;
  final List<BestSeller> recentviews;
  final List<BestSeller> ourProducts;
  final List<BestSeller> suggestedProducts;
  final List<BestSeller> bestSeller;
  final List<BestSeller> flashSail;
  final List<dynamic> newarrivals;
  final List<Ory> categories;
  final List<Ory> topAccessories;
  final List<Featuredbrand> featuredbrands;
  final int cartcount;
  final int wishlistcount;
  final Currency currency;
  final int notificationCount;

  HomeApiResponseModel({
    required this.success,
    required this.message,
    required this.banner1,
    required this.banner2,
    required this.banner3,
    required this.banner4,
    required this.banner5,
    required this.recentviews,
    required this.ourProducts,
    required this.suggestedProducts,
    required this.bestSeller,
    required this.flashSail,
    required this.newarrivals,
    required this.categories,
    required this.topAccessories,
    required this.featuredbrands,
    required this.cartcount,
    required this.wishlistcount,
    required this.currency,
    required this.notificationCount,
  });
}

class Banner {
  final int id;
  final int linkType;
  final String linkValue;
  final String image;
  final String title;
  final String subTitle;
  final dynamic logo;

  Banner({
    required this.id,
    required this.linkType,
    required this.linkValue,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.logo,
  });
}

class BestSeller {
  final int productId;
  final String slug;
  final String code;
  final String? homeImg;
  final String name;
  final int? isGender;
  final String store;
  final String manufacturer;
  final String oldprice;
  final String price;
  final String image;
  final int cart;
  final int wishlist;

  BestSeller({
    required this.productId,
    required this.slug,
    required this.code,
    required this.homeImg,
    required this.name,
    required this.isGender,
    required this.store,
    required this.manufacturer,
    required this.oldprice,
    required this.price,
    required this.image,
    required this.cart,
    required this.wishlist,
  });
}

class Ory {
  final Featuredbrand category;

  Ory({
    required this.category,
  });
}

class Featuredbrand {
  final int id;
  final String slug;
  final String image;
  final String name;
  final String? description;

  Featuredbrand({
    required this.id,
    required this.slug,
    required this.image,
    required this.name,
    this.description,
  });
}

class Currency {
  final String name;
  final String code;
  final String symbolLeft;
  final String symbolRight;
  final String value;
  final int status;

  Currency({
    required this.name,
    required this.code,
    required this.symbolLeft,
    required this.symbolRight,
    required this.value,
    required this.status,
  });
}
