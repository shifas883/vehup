class VehicleDetailsData {
  int? id;
  String? uniqueId;
  int? fkUserId;
  int? fkRoleId;
  int? fkVehicleTypeId;
  int? fkCategoryId;
  int? fkSubCategoryId;
  int? fkBrandId;
  int? fkVehicleModelId;
  int? fkVehicleVariantId;
  int? fkVehicleColorId;
  int? fkTransmissionId;
  int? fkFuelTypeId;
  int? fkBodyTypeId;
  dynamic? fkVehicleFeaturesId;
  String? year;
  String? location;
  String? latitude;
  String? longitude;
  String? kmDriven;
  String? price;
  String? type;
  dynamic? description;
  dynamic? dealPrice;
  int? isNewArrival;
  int? isPopular;
  Status status;
  dynamic? vehicleStatus;
  String? isVerified;
  dynamic? remark;
  dynamic? percentage;
  dynamic? totalAmount;
  int? createdBy;
  int? updatedBy;
  UserDetails userDetails;
  dynamic? bookingVehicleStatus;
  bool isFavorite;
  int? listedDays;
  List<Images>? images;
  List<OverviewDetail>? overviewDetails;
  List<SpecificationDetail>? specificationDetails;
  List<VehicleDetailFeatureVehicle>? vehicleDetailFeatureVehicles;
  Brand? brand;
  BodyType? category;
  BodyType? subCategory;
  Brand? vehicleModel;
  BodyType? vehicleVariant;
  Brand? vehicleColor;
  BodyType? transmission;
  BodyType? fuelType;
  BodyType? bodyType;
  BodyType? vehicleType;
  List<VehicleInfoDetail>? vehicleInfoDetails;
  List<OverviewDetail>? vehicleOverviewDetails;

  VehicleDetailsData({
    required this.id,
    required this.uniqueId,
    required this.fkUserId,
    required this.fkRoleId,
    required this.fkVehicleTypeId,
    required this.fkCategoryId,
    required this.fkSubCategoryId,
    required this.fkBrandId,
    required this.fkVehicleModelId,
    required this.fkVehicleVariantId,
    required this.fkVehicleColorId,
    required this.fkTransmissionId,
    required this.fkFuelTypeId,
    required this.fkBodyTypeId,
    required this.fkVehicleFeaturesId,
    required this.year,
    required this.location,
    required this.latitude,
    required this.longitude,
    required this.kmDriven,
    required this.price,
    required this.type,
    required this.description,
    required this.dealPrice,
    required this.isNewArrival,
    required this.isPopular,
    required this.status,
    required this.vehicleStatus,
    required this.isVerified,
    required this.remark,
    required this.percentage,
    required this.totalAmount,
    required this.createdBy,
    required this.updatedBy,
    required this.userDetails,
    required this.bookingVehicleStatus,
    required this.isFavorite,
    required this.listedDays,
    required this.images,
    required this.overviewDetails,
    required this.specificationDetails,
    required this.vehicleDetailFeatureVehicles,
    required this.brand,
    required this.category,
    required this.subCategory,
    required this.vehicleModel,
    required this.vehicleVariant,
    required this.vehicleColor,
    required this.transmission,
    required this.fuelType,
    required this.bodyType,
    required this.vehicleType,
    required this.vehicleInfoDetails,
    required this.vehicleOverviewDetails,
  });

  factory VehicleDetailsData.fromJson(Map<String?, dynamic?> json) {
    return VehicleDetailsData(
      id: json['id']??0,
      uniqueId: json['uniqueId']??0,
      fkUserId: json['fkUserId']??0,
      fkRoleId: json['fkRoleId']??0,
      fkVehicleTypeId: json['fkVehicleTypeId']??0,
      fkCategoryId: json['fkCategoryId']??0,
      fkSubCategoryId: json['fkSubCategoryId']??0,
      fkBrandId: json['fkBrandId']??0,
      fkVehicleModelId: json['fkVehicleModelId']??0,
      fkVehicleVariantId: json['fkVehicleVariantId']??0,
      fkVehicleColorId: json['fkVehicleColorId']??0,
      fkTransmissionId: json['fkTransmissionId']??0,
      fkFuelTypeId: json['fkFuelTypeId']??0,
      fkBodyTypeId: json['fkBodyTypeId']??0,
      fkVehicleFeaturesId: json['fkVehicleFeaturesId']??0,
      year: json['year']??'',
      location: json['location']??'',
      latitude: json['latitude']??'',
      longitude: json['longitude']??'',
      kmDriven: json['kmDriven']??'',
      price: json['price']??'',
      type: json['type']??'',
      description: json['description']??'',
      dealPrice: json['dealPrice']??'',
      isNewArrival: json['isNewArrival']??0,
      isPopular: json['isPopular']??0,
      status: Status.values[json['status']],
      vehicleStatus: json['vehicleStatus']??'',
      isVerified: json['isVerified']??0,
      remark: json['remark']??'',
      percentage: json['percentage']??'',
      totalAmount: json['totalAmount']??'',
      createdBy: json['createdBy']??0,
      updatedBy: json['updatedBy']??0,
      userDetails: UserDetails.fromJson(json['userDetails']),
      bookingVehicleStatus: json['bookingVehicleStatus'],
      isFavorite: json['isFavorite']??false,
      listedDays: json['listedDays']??false,
      images: (json['images'] as List)
          .map((imageJson) => Images.fromJson(imageJson))
          .toList(),
      overviewDetails: (json['overviewDetails'] as List)
          .map((overviewJson) => OverviewDetail.fromJson(overviewJson))
          .toList(),
      specificationDetails: (json['specificationDetails'] as List)
          .map((specificationJson) =>
              SpecificationDetail.fromJson(specificationJson))
          .toList(),
      vehicleDetailFeatureVehicles: (json['vehicleDetailFeatureVehicles']
              as List)
          .map((vehicleDetailFeatureJson) =>
              VehicleDetailFeatureVehicle.fromJson(vehicleDetailFeatureJson))
          .toList(),
      brand: Brand.fromJson(json['brand']),
      category: BodyType.fromJson(json['category']),
      subCategory: BodyType.fromJson(json['subCategory']),
      vehicleModel: Brand.fromJson(json['vehicleModel']),
      vehicleVariant: BodyType.fromJson(json['vehicleVariant']),
      vehicleColor: Brand.fromJson(json['vehicleColor']),
      transmission: BodyType.fromJson(json['transmission']),
      fuelType: BodyType.fromJson(json['fuelType']),
      bodyType: BodyType.fromJson(json['bodyType']),
      vehicleType: BodyType.fromJson(json['vehicleType']),
      vehicleInfoDetails: (json['vehicleInfoDetails'] as List)
          .map((vehicleInfoJson) => VehicleInfoDetail.fromJson(vehicleInfoJson))
          .toList(),
      vehicleOverviewDetails: (json['vehicleOverviewDetails'] as List)
          .map((overviewJson) => OverviewDetail.fromJson(overviewJson))
          .toList(),
    );
  }

  Map<String?, dynamic?> toJson() {
    return {
      'id': id,
      'uniqueId': uniqueId,
      'fkUserId': fkUserId,
      'fkRoleId': fkRoleId,
      'fkVehicleTypeId': fkVehicleTypeId,
      'fkCategoryId': fkCategoryId,
      'fkSubCategoryId': fkSubCategoryId,
      'fkBrandId': fkBrandId,
      'fkVehicleModelId': fkVehicleModelId,
      'fkVehicleVariantId': fkVehicleVariantId,
      'fkVehicleColorId': fkVehicleColorId,
      'fkTransmissionId': fkTransmissionId,
      'fkFuelTypeId': fkFuelTypeId,
      'fkBodyTypeId': fkBodyTypeId,
      'fkVehicleFeaturesId': fkVehicleFeaturesId,
      'year': year,
      'location': location,
      'latitude': latitude,
      'longitude': longitude,
      'kmDriven': kmDriven,
      'price': price,
      'type': type,
      'description': description,
      'dealPrice': dealPrice,
      'isNewArrival': isNewArrival,
      'isPopular': isPopular,
      'status': status.index,
      'vehicleStatus': vehicleStatus,
      'isVerified': isVerified,
      'remark': remark,
      'percentage': percentage,
      'totalAmount': totalAmount,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'userDetails': userDetails.toJson(),
      'bookingVehicleStatus': bookingVehicleStatus,
      'isFavorite': isFavorite,
      'listedDays': listedDays,
      'images': images?.map((image) => image.toJson()).toList(),
      'overviewDetails':
          overviewDetails?.map((overview) => overview.toJson()).toList(),
      'specificationDetails': specificationDetails
          ?.map((specification) => specification.toJson())
          .toList(),
      'vehicleDetailFeatureVehicles': vehicleDetailFeatureVehicles
          ?.map((feature) => feature.toJson())
          .toList(),
      'brand': brand?.toJson(),
      'category': category?.toJson(),
      'subCategory': subCategory?.toJson(),
      'vehicleModel': vehicleModel?.toJson(),
      'vehicleVariant': vehicleVariant?.toJson(),
      'vehicleColor': vehicleColor?.toJson(),
      'transmission': transmission?.toJson(),
      'fuelType': fuelType?.toJson(),
      'bodyType': bodyType?.toJson(),
      'vehicleType': vehicleType?.toJson(),
      'vehicleInfoDetails':
          vehicleInfoDetails?.map((info) => info.toJson()).toList(),
      'vehicleOverviewDetails':
          vehicleOverviewDetails?.map((overview) => overview.toJson()).toList(),
    };
  }
}

class BodyType {
  int? id;
  int? fkVehicleTypeId;
  String? name;
  int? createdBy;
  int? updatedBy;
  Status? status;
  int? fkCategoryId;
  int? fkBrandId;
  int? fkVehicleModelId;

  BodyType({
    required this.id,
    this.fkVehicleTypeId,
    required this.name,
    required this.createdBy,
    required this.updatedBy,
    this.status,
    this.fkCategoryId,
    this.fkBrandId,
    this.fkVehicleModelId,
  });

  factory BodyType.fromJson(Map<String?, dynamic?> json) {
    return BodyType(
      id: json['id'],
      fkVehicleTypeId: json['fkVehicleTypeId'],
      name: json['name'],
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      status: json['status'] != null ? Status.values[json['status']] : null,
      fkCategoryId: json['fkCategoryId'],
      fkBrandId: json['fkBrandId'],
      fkVehicleModelId: json['fkVehicleModelId'],
    );
  }

  Map<String?, dynamic?> toJson() {
    return {
      'id': id,
      'fkVehicleTypeId': fkVehicleTypeId,
      'name': name,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'status': status?.index,
      'fkCategoryId': fkCategoryId,
      'fkBrandId': fkBrandId,
      'fkVehicleModelId': fkVehicleModelId,
    };
  }
}

enum Status { ACTIVE }

class Brand {
  int? id;
  int? fkVehicleTypeId;
  String? name;
  String? icon;
  Status status;
  int? createdBy;
  int? updatedBy;
  int? fkBrandId;

  Brand({
    required this.id,
    required this.fkVehicleTypeId,
    required this.name,
    this.icon,
    required this.status,
    required this.createdBy,
    required this.updatedBy,
    this.fkBrandId,
  });

  factory Brand.fromJson(Map<String?, dynamic?> json) {
    return Brand(
      id: json['id'],
      fkVehicleTypeId: json['fkVehicleTypeId'],
      name: json['name'],
      icon: json['icon'],
      status: Status.values[json['status']],
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      fkBrandId: json['fkBrandId'],
    );
  }

  Map<String?, dynamic?> toJson() {
    return {
      'id': id,
      'fkVehicleTypeId': fkVehicleTypeId,
      'name': name,
      'icon': icon,
      'status': status.index,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'fkBrandId': fkBrandId,
    };
  }
}

class Images {
  int? id;
  int? fkVehicleDetailsId;
  String? imageUrl;
  int? createdBy;
  int? updatedBy;
  DateTime createdAt;
  DateTime updatedAt;

  Images({
    required this.id,
    required this.fkVehicleDetailsId,
    required this.imageUrl,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Images.fromJson(Map<String?, dynamic?> json) {
    return Images(
      id: json['id'],
      fkVehicleDetailsId: json['fkVehicleDetailsId'],
      imageUrl: json['imageUrl'],
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String?, dynamic?> toJson() {
    return {
      'id': id,
      'fkVehicleDetailsId': fkVehicleDetailsId,
      'imageUrl': imageUrl,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
    };
  }
}

class OverviewDetail {
  int? id;
  int? fkVehicleDetailsId;
  int? fkVehicleOverviewId;
  String? overviewDetails;
  int? createdBy;
  int? updatedBy;
  Brand overview;

  OverviewDetail({
    required this.id,
    required this.fkVehicleDetailsId,
    required this.fkVehicleOverviewId,
    required this.overviewDetails,
    required this.createdBy,
    required this.updatedBy,
    required this.overview,
  });

  factory OverviewDetail.fromJson(Map<String?, dynamic?> json) {
    return OverviewDetail(
      id: json['id'],
      fkVehicleDetailsId: json['fkVehicleDetailsId'],
      fkVehicleOverviewId: json['fkVehicleOverviewId'],
      overviewDetails: json['overviewDetails'],
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      overview: Brand.fromJson(json['overview']),
    );
  }

  Map<String?, dynamic?> toJson() {
    return {
      'id': id,
      'fkVehicleDetailsId': fkVehicleDetailsId,
      'fkVehicleOverviewId': fkVehicleOverviewId,
      'overviewDetails': overviewDetails,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'overview': overview.toJson(),
    };
  }
}

class SpecificationDetail {
  int? id;
  int? fkVehicleDetailsId;
  int? fkSpecificationId;
  String? specificationDetails;
  int? createdBy;
  int? updatedBy;
  BodyType specification;

  SpecificationDetail({
    required this.id,
    required this.fkVehicleDetailsId,
    required this.fkSpecificationId,
    required this.specificationDetails,
    required this.createdBy,
    required this.updatedBy,
    required this.specification,
  });

  factory SpecificationDetail.fromJson(Map<String?, dynamic?> json) {
    return SpecificationDetail(
      id: json['id'],
      fkVehicleDetailsId: json['fkVehicleDetailsId'],
      fkSpecificationId: json['fkSpecificationId'],
      specificationDetails: json['specificationDetails'],
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      specification: BodyType.fromJson(json['specification']),
    );
  }

  Map<String?, dynamic?> toJson() {
    return {
      'id': id,
      'fkVehicleDetailsId': fkVehicleDetailsId,
      'fkSpecificationId': fkSpecificationId,
      'specificationDetails': specificationDetails,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'specification': specification.toJson(),
    };
  }
}

class UserDetails {
  int? id;
  String? name;
  String? countryCode;
  String? mobile;

  UserDetails({
    required this.id,
    required this.name,
    required this.countryCode,
    required this.mobile,
  });

  factory UserDetails.fromJson(Map<String?, dynamic?> json) {
    return UserDetails(
      id: json['id'],
      name: json['name'],
      countryCode: json['countryCode'],
      mobile: json['mobile'],
    );
  }

  Map<String?, dynamic?> toJson() {
    return {
      'id': id,
      'name': name,
      'countryCode': countryCode,
      'mobile': mobile,
    };
  }
}

class VehicleDetailFeatureVehicle {
  int? id;
  int? fkVehicleDetailId;
  int? vehicleFeatureId;
  // DateTime createdAt;
  // DateTime updatedAt;
  BodyType vehicleFeature;

  VehicleDetailFeatureVehicle({
    required this.id,
    required this.fkVehicleDetailId,
    required this.vehicleFeatureId,
    // required this.createdAt,
    // required this.updatedAt,
    required this.vehicleFeature,
  });

  factory VehicleDetailFeatureVehicle.fromJson(Map<String?, dynamic?> json) {
    return VehicleDetailFeatureVehicle(
      id: json['id'],
      fkVehicleDetailId: json['fkVehicleDetailId'],
      vehicleFeatureId: json['vehicleFeatureId'],
      // createdAt: DateTime.parse(json['createdAt']),
      // updatedAt: DateTime.parse(json['updatedAt']),
      vehicleFeature: BodyType.fromJson(json['vehicleFeature']),
    );
  }

  Map<String?, dynamic?> toJson() {
    return {
      'id': id,
      'fkVehicleDetailId': fkVehicleDetailId,
      'vehicleFeatureId': vehicleFeatureId,
      // 'createdAt': createdAt.toIso8601String?(),
      // 'updatedAt': updatedAt.toIso8601String?(),
      'vehicleFeature': vehicleFeature.toJson(),
    };
  }
}

class VehicleInfoDetail {
  int? id;
  int? fkVehicleDetailsId;
  int? fkVehicleInfoId;
  String? infoDetails;
  int? createdBy;
  int? updatedBy;
  // DateTime createdAt;
  // DateTime updatedAt;
  // dynamic? deletedAt;
  Brand vehicleInfo;

  VehicleInfoDetail({
    required this.id,
    required this.fkVehicleDetailsId,
    required this.fkVehicleInfoId,
    required this.infoDetails,
    required this.createdBy,
    required this.updatedBy,
    // required this.createdAt,
    // required this.updatedAt,
    // required this.deletedAt,
    required this.vehicleInfo,
  });

  factory VehicleInfoDetail.fromJson(Map<String?, dynamic?> json) {
    return VehicleInfoDetail(
      id: json['id'],
      fkVehicleDetailsId: json['fkVehicleDetailsId'],
      fkVehicleInfoId: json['fkVehicleInfoId'],
      infoDetails: json['infoDetails'],
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      // createdAt: DateTime.parse(json['createdAt']),
      // updatedAt: DateTime.parse(json['updatedAt']),
      // deletedAt: json['deletedAt'],
      vehicleInfo: Brand.fromJson(json['vehicleInfo']),
    );
  }

  Map<String?, dynamic?> toJson() {
    return {
      'id': id,
      'fkVehicleDetailsId': fkVehicleDetailsId,
      'fkVehicleInfoId': fkVehicleInfoId,
      'infoDetails': infoDetails,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      // 'createdAt': createdAt.toIso8601String?(),
      // 'updatedAt': updatedAt.toIso8601String?(),
      // 'deletedAt': deletedAt,
      'vehicleInfo': vehicleInfo.toJson(),
    };
  }
}
