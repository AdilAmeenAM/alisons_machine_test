import 'package:json_annotation/json_annotation.dart';

part 'home_api_response_model.g.dart';

@JsonSerializable()
class HomeApiResponseModel {
  @JsonKey(name: "success")
  final int success;
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "banner1")
  final List<Banner> banner1;
  @JsonKey(name: "banner2")
  final List<Banner> banner2;
  @JsonKey(name: "banner3")
  final List<Banner> banner3;
  @JsonKey(name: "banner4")
  final List<Banner> banner4;
  @JsonKey(name: "banner5")
  final List<dynamic> banner5;
  @JsonKey(name: "recentviews")
  final List<BestSeller> recentviews;
  @JsonKey(name: "our_products")
  final List<BestSeller> ourProducts;
  @JsonKey(name: "suggested_products")
  final List<BestSeller> suggestedProducts;
  @JsonKey(name: "best_seller")
  final List<BestSeller> bestSeller;
  @JsonKey(name: "flash_sail")
  final List<BestSeller> flashSail;
  @JsonKey(name: "newarrivals")
  final List<dynamic> newarrivals;
  @JsonKey(name: "categories")
  final List<Ory> categories;
  @JsonKey(name: "top_accessories")
  final List<Ory> topAccessories;
  @JsonKey(name: "featuredbrands")
  final List<Featuredbrand> featuredbrands;
  @JsonKey(name: "cartcount")
  final int cartcount;
  @JsonKey(name: "wishlistcount")
  final int wishlistcount;
  @JsonKey(name: "currency")
  final Currency currency;
  @JsonKey(name: "notification_count")
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

  factory HomeApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeApiResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeApiResponseModelToJson(this);
}

@JsonSerializable()
class Banner {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "link_type")
  final int linkType;
  @JsonKey(name: "link_value")
  final String linkValue;
  @JsonKey(name: "image")
  final String image;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "sub_title")
  final String subTitle;
  @JsonKey(name: "logo")
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

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);

  Map<String, dynamic> toJson() => _$BannerToJson(this);
}

@JsonSerializable()
class BestSeller {
  @JsonKey(name: "productId")
  final int productId;
  @JsonKey(name: "slug")
  final String slug;
  @JsonKey(name: "code")
  final String code;
  @JsonKey(name: "home_img")
  final String? homeImg;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "is_gender")
  final int? isGender;
  @JsonKey(name: "store")
  final String store;
  @JsonKey(name: "manufacturer")
  final String manufacturer;
  @JsonKey(name: "oldprice")
  final String oldprice;
  @JsonKey(name: "price")
  final String price;
  @JsonKey(name: "image")
  final String image;
  @JsonKey(name: "cart")
  final int cart;
  @JsonKey(name: "wishlist")
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

  factory BestSeller.fromJson(Map<String, dynamic> json) =>
      _$BestSellerFromJson(json);

  Map<String, dynamic> toJson() => _$BestSellerToJson(this);
}

@JsonSerializable()
class Ory {
  @JsonKey(name: "category")
  final Featuredbrand category;

  Ory({
    required this.category,
  });

  factory Ory.fromJson(Map<String, dynamic> json) => _$OryFromJson(json);

  Map<String, dynamic> toJson() => _$OryToJson(this);
}

@JsonSerializable()
class Featuredbrand {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "slug")
  final String slug;
  @JsonKey(name: "image")
  final String image;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "description")
  final String? description;

  Featuredbrand({
    required this.id,
    required this.slug,
    required this.image,
    required this.name,
    this.description,
  });

  factory Featuredbrand.fromJson(Map<String, dynamic> json) =>
      _$FeaturedbrandFromJson(json);

  Map<String, dynamic> toJson() => _$FeaturedbrandToJson(this);
}

@JsonSerializable()
class Currency {
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "code")
  final String code;
  @JsonKey(name: "symbol_left")
  final String symbolLeft;
  @JsonKey(name: "symbol_right")
  final String symbolRight;
  @JsonKey(name: "value")
  final String value;
  @JsonKey(name: "status")
  final int status;

  Currency({
    required this.name,
    required this.code,
    required this.symbolLeft,
    required this.symbolRight,
    required this.value,
    required this.status,
  });

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}
