class Product {
  Product({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.handle,
    required this.weight,
    required this.height,
    required this.width,
    required this.length,
    required this.hsCode,
    required this.originCountry,
    required this.midCode,
    required this.material,
    required this.metadata,
    required this.createdAt,
    required this.updatedAt,
    required this.tags,
    required this.brandId,
    required this.status,
    required this.createdById,
    required this.productCategoryId,
    required this.thumbnail,
    required this.productAttributeGroupId,
    required this.metaTitle,
    required this.metaDescription,
    required this.count,
    required this.productImages,
    required this.prices,
    required this.productCategory,
    required this.productCollections,
    required this.variants,
    required this.reviews,
    required this.averageRating,
    required this.priceStart,
    required this.priceEnd,
  });

  final String? id;
  final String? title;
  final dynamic subtitle;
  final String? description;
  final String? handle;
  final dynamic weight;
  final dynamic height;
  final dynamic width;
  final dynamic length;
  final dynamic hsCode;
  final dynamic originCountry;
  final dynamic midCode;
  final dynamic material;
  final Metadata? metadata;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<dynamic> tags;
  final String? brandId;
  final String? status;
  final dynamic createdById;
  final String? productCategoryId;
  final String? thumbnail;
  final String? productAttributeGroupId;
  final String? metaTitle;
  final String? metaDescription;
  final Count? count;
  final List<dynamic> productImages;
  final List<Price> prices;
  final ProductCategory? productCategory;
  final List<ProductCollection> productCollections;
  final List<Variant> variants;
  final List<dynamic> reviews;
  final dynamic averageRating;
  final int? priceStart;
  final dynamic priceEnd;

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json["title"],
      subtitle: json["subtitle"],
      description: json["description"],
      handle: json["handle"],
      weight: json["weight"],
      height: json["height"],
      width: json["width"],
      length: json["length"],
      hsCode: json["hs_code"],
      originCountry: json["origin_country"],
      midCode: json["mid_code"],
      material: json["material"],
      metadata:
          json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]),
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      tags: json["tags"] == null
          ? []
          : List<dynamic>.from(json["tags"]!.map((x) => x)),
      brandId: json["brandId"],
      status: json["status"],
      createdById: json["createdById"],
      productCategoryId: json["productCategoryId"],
      thumbnail: json["thumbnail"],
      productAttributeGroupId: json["productAttributeGroupId"],
      metaTitle: json["metaTitle"],
      metaDescription: json["metaDescription"],
      count: json["_count"] == null ? null : Count.fromJson(json["_count"]),
      productImages: json["productImages"] == null
          ? []
          : List<dynamic>.from(json["productImages"]!.map((x) => x)),
      prices: json["prices"] == null
          ? []
          : List<Price>.from(json["prices"]!.map((x) => Price.fromJson(x))),
      productCategory: json["productCategory"] == null
          ? null
          : ProductCategory.fromJson(json["productCategory"]),
      productCollections: json["productCollections"] == null
          ? []
          : List<ProductCollection>.from(json["productCollections"]!
              .map((x) => ProductCollection.fromJson(x))),
      variants: json["variants"] == null
          ? []
          : List<Variant>.from(
              json["variants"]!.map((x) => Variant.fromJson(x))),
      reviews: json["reviews"] == null
          ? []
          : List<dynamic>.from(json["reviews"]!.map((x) => x)),
      averageRating: json["averageRating"],
      priceStart: json["priceStart"],
      priceEnd: json["priceEnd"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "subtitle": subtitle,
        "description": description,
        "handle": handle,
        "weight": weight,
        "height": height,
        "width": width,
        "length": length,
        "hs_code": hsCode,
        "origin_country": originCountry,
        "mid_code": midCode,
        "material": material,
        "metadata": metadata?.toJson(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "tags": tags.map((x) => x).toList(),
        "brandId": brandId,
        "status": status,
        "createdById": createdById,
        "productCategoryId": productCategoryId,
        "thumbnail": thumbnail,
        "productAttributeGroupId": productAttributeGroupId,
        "metaTitle": metaTitle,
        "metaDescription": metaDescription,
        "_count": count?.toJson(),
        "productImages": productImages.map((x) => x).toList(),
        "prices": prices.map((x) => x.toJson()).toList(),
        "productCategory": productCategory?.toJson(),
        "productCollections":
            productCollections.map((x) => x.toJson()).toList(),
        "variants": variants.map((x) => x.toJson()).toList(),
        "reviews": reviews.map((x) => x).toList(),
        "averageRating": averageRating,
        "priceStart": priceStart,
        "priceEnd": priceEnd,
      };
}

class Count {
  Count({
    required this.lists,
  });

  final int? lists;

  factory Count.fromJson(Map<String, dynamic> json) {
    return Count(
      lists: json["lists"],
    );
  }

  Map<String, dynamic> toJson() => {
        "lists": lists,
      };
}

class Metadata {
  Metadata({
    required this.excerpt,
  });

  final String? excerpt;

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(
      excerpt: json["excerpt"],
    );
  }

  Map<String, dynamic> toJson() => {
        "excerpt": excerpt,
      };
}

class Price {
  Price({
    required this.id,
    required this.priceListId,
    required this.variantId,
    required this.productId,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
    required this.priceList,
  });

  final String? id;
  final String? priceListId;
  final String? variantId;
  final String? productId;
  final int? price;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final PriceList? priceList;

  factory Price.fromJson(Map<String, dynamic> json) {
    return Price(
      id: json["id"],
      priceListId: json["priceListId"],
      variantId: json["variantId"],
      productId: json["productId"],
      price: json["price"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      priceList: json["priceList"] == null
          ? null
          : PriceList.fromJson(json["priceList"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "priceListId": priceListId,
        "variantId": variantId,
        "productId": productId,
        "price": price,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "priceList": priceList?.toJson(),
      };
}

class PriceList {
  PriceList({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.status,
    required this.startDate,
    required this.endDate,
    required this.createdById,
    required this.createdAt,
    required this.updatedAt,
  });

  final String? id;
  final String? name;
  final String? description;
  final String? type;
  final String? status;
  final dynamic startDate;
  final dynamic endDate;
  final String? createdById;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory PriceList.fromJson(Map<String, dynamic> json) {
    return PriceList(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      type: json["type"],
      status: json["status"],
      startDate: json["startDate"],
      endDate: json["endDate"],
      createdById: json["createdById"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "type": type,
        "status": status,
        "startDate": startDate,
        "endDate": endDate,
        "createdById": createdById,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class ProductCategory {
  ProductCategory({
    required this.id,
    required this.name,
    required this.description,
    required this.handle,
    required this.image,
    required this.parentId,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.rank,
    required this.fullPath,
    required this.fullPathHandle,
    required this.metadata,
    required this.createdById,
  });

  final String? id;
  final String? name;
  final String? description;
  final String? handle;
  final String? image;
  final dynamic parentId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final int? rank;
  final String? fullPath;
  final String? fullPathHandle;
  final dynamic metadata;
  final String? createdById;

  factory ProductCategory.fromJson(Map<String, dynamic> json) {
    return ProductCategory(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      handle: json["handle"],
      image: json["image"],
      parentId: json["parentId"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      deletedAt: json["deletedAt"],
      rank: json["rank"],
      fullPath: json["fullPath"],
      fullPathHandle: json["fullPathHandle"],
      metadata: json["metadata"],
      createdById: json["createdById"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "handle": handle,
        "image": image,
        "parentId": parentId,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "deletedAt": deletedAt,
        "rank": rank,
        "fullPath": fullPath,
        "fullPathHandle": fullPathHandle,
        "metadata": metadata,
        "createdById": createdById,
      };
}

class ProductCollection {
  ProductCollection({
    required this.id,
    required this.productId,
    required this.collectionId,
  });

  final String? id;
  final String? productId;
  final String? collectionId;

  factory ProductCollection.fromJson(Map<String, dynamic> json) {
    return ProductCollection(
      id: json["id"],
      productId: json["productId"],
      collectionId: json["collectionId"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "productId": productId,
        "collectionId": collectionId,
      };
}

class Variant {
  Variant({
    required this.id,
    required this.productId,
    required this.title,
    required this.sku,
    required this.barcode,
    required this.ean,
    required this.upc,
    required this.inventoryQuantity,
    required this.allowBackOrder,
    required this.manageInventory,
    required this.hsCode,
    required this.originCountry,
    required this.midCode,
    required this.material,
    required this.weight,
    required this.height,
    required this.length,
    required this.width,
    required this.variantRank,
    required this.price,
    required this.specialPrice,
    required this.specialPriceStartDate,
    required this.specialPriceEndDate,
    required this.inventory,
    required this.metadata,
    required this.createdAt,
    required this.deletedAt,
    required this.updatedAt,
    required this.thumbnail,
    required this.createdById,
    required this.images,
    required this.prices,
    required this.optionValues,
    required this.originalPrice,
    required this.currentPrice,
    required this.salePrices,
  });

  final String? id;
  final String? productId;
  final String? title;
  final String? sku;
  final dynamic barcode;
  final dynamic ean;
  final dynamic upc;
  final int? inventoryQuantity;
  final bool? allowBackOrder;
  final bool? manageInventory;
  final dynamic hsCode;
  final dynamic originCountry;
  final dynamic midCode;
  final dynamic material;
  final dynamic weight;
  final dynamic height;
  final dynamic length;
  final dynamic width;
  final int? variantRank;
  final int? price;
  final int? specialPrice;
  final dynamic specialPriceStartDate;
  final dynamic specialPriceEndDate;
  final int? inventory;
  final dynamic metadata;
  final DateTime? createdAt;
  final dynamic deletedAt;
  final DateTime? updatedAt;
  final String? thumbnail;
  final dynamic createdById;
  final List<dynamic> images;
  final List<Price> prices;
  final List<dynamic> optionValues;
  final int? originalPrice;
  final int? currentPrice;
  final SalePrices? salePrices;

  factory Variant.fromJson(Map<String, dynamic> json) {
    return Variant(
      id: json["id"],
      productId: json["productId"],
      title: json["title"],
      sku: json["sku"],
      barcode: json["barcode"],
      ean: json["ean"],
      upc: json["upc"],
      inventoryQuantity: json["inventoryQuantity"],
      allowBackOrder: json["allowBackOrder"],
      manageInventory: json["manageInventory"],
      hsCode: json["hsCode"],
      originCountry: json["originCountry"],
      midCode: json["midCode"],
      material: json["material"],
      weight: json["weight"],
      height: json["height"],
      length: json["length"],
      width: json["width"],
      variantRank: json["variantRank"],
      price: json["price"],
      specialPrice: json["specialPrice"],
      specialPriceStartDate: json["specialPriceStartDate"],
      specialPriceEndDate: json["specialPriceEndDate"],
      inventory: json["inventory"],
      metadata: json["metadata"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      deletedAt: json["deletedAt"],
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      thumbnail: json["thumbnail"],
      createdById: json["createdById"],
      images: json["images"] == null
          ? []
          : List<dynamic>.from(json["images"]!.map((x) => x)),
      prices: json["prices"] == null
          ? []
          : List<Price>.from(json["prices"]!.map((x) => Price.fromJson(x))),
      optionValues: json["optionValues"] == null
          ? []
          : List<dynamic>.from(json["optionValues"]!.map((x) => x)),
      originalPrice: json["originalPrice"],
      currentPrice: json["currentPrice"],
      salePrices: json["salePrices"] == null
          ? null
          : SalePrices.fromJson(json["salePrices"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "productId": productId,
        "title": title,
        "sku": sku,
        "barcode": barcode,
        "ean": ean,
        "upc": upc,
        "inventoryQuantity": inventoryQuantity,
        "allowBackOrder": allowBackOrder,
        "manageInventory": manageInventory,
        "hsCode": hsCode,
        "originCountry": originCountry,
        "midCode": midCode,
        "material": material,
        "weight": weight,
        "height": height,
        "length": length,
        "width": width,
        "variantRank": variantRank,
        "price": price,
        "specialPrice": specialPrice,
        "specialPriceStartDate": specialPriceStartDate,
        "specialPriceEndDate": specialPriceEndDate,
        "inventory": inventory,
        "metadata": metadata,
        "createdAt": createdAt?.toIso8601String(),
        "deletedAt": deletedAt,
        "updatedAt": updatedAt?.toIso8601String(),
        "thumbnail": thumbnail,
        "createdById": createdById,
        "images": images.map((x) => x).toList(),
        "prices": prices.map((x) => x.toJson()).toList(),
        "optionValues": optionValues.map((x) => x).toList(),
        "originalPrice": originalPrice,
        "currentPrice": currentPrice,
        "salePrices": salePrices?.toJson(),
      };
}

class SalePrices {
  SalePrices({required this.json});
  final Map<String, dynamic> json;

  factory SalePrices.fromJson(Map<String, dynamic> json) {
    return SalePrices(json: json);
  }

  Map<String, dynamic> toJson() => {};
}
