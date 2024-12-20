

class VehicleData {
  final int id;
  final String uniqueId;
  final int fkVehicleTypeId;
  final int fkFuelTypeId;
  final int fkBrandId;
  final int fkVehicleModelId;
  final int fkVehicleVariantId;
  final String year;
  final String price;
  final String? dealPrice;
  final int isNewArrival;
  final int isPopular;
  final String? vehicleStatus;
  final String isVerified;
  final String? totalAmount;
  final String createdAt;
  final String location;
  final String kmDriven;
  final int listedDays;
  final bool isBooked;
  final String? bookingId;
  final List<VehicleImage> images;
  final VehicleType vehicleType;
  final FuelType fuelType;
  final Brand brand;
  final VehicleModel vehicleModel;
  final VehicleVariant vehicleVariant;

  VehicleData({
    required this.id,
    required this.uniqueId,
    required this.fkVehicleTypeId,
    required this.fkFuelTypeId,
    required this.fkBrandId,
    required this.fkVehicleModelId,
    required this.fkVehicleVariantId,
    required this.year,
    required this.price,
    this.dealPrice,
    required this.isNewArrival,
    required this.isPopular,
    this.vehicleStatus,
    required this.isVerified,
    this.totalAmount,
    required this.createdAt,
    required this.location,
    required this.kmDriven,
    required this.listedDays,
    required this.isBooked,
    this.bookingId,
    required this.images,
    required this.vehicleType,
    required this.fuelType,
    required this.brand,
    required this.vehicleModel,
    required this.vehicleVariant,
  });

  factory VehicleData.fromJson(Map<String, dynamic> json) {
    return VehicleData(
      id: json['id'],
      uniqueId: json['unique_id'],
      fkVehicleTypeId: json['fk_vehicle_type_id'],
      fkFuelTypeId: json['fk_fuel_type_id'],
      fkBrandId: json['fk_brand_id'],
      fkVehicleModelId: json['fk_vehicle_model_id'],
      fkVehicleVariantId: json['fk_vehicle_variant_id'],
      year: json['year'],
      price: json['price'],
      dealPrice: json['deal_price'],
      isNewArrival: json['is_new_arrival'],
      isPopular: json['is_popular'],
      vehicleStatus: json['vehicle_status'],
      isVerified: json['is_verified'],
      totalAmount: json['total_amount'],
      createdAt: json['created_at'],
      location: json['location'],
      kmDriven: json['km_driven'],
      listedDays: json['listed_days'],
      isBooked: json['is_booked'],
      bookingId: json['booking_id'],
      images: (json['images'] as List<dynamic>)
          .map((image) => VehicleImage.fromJson(image))
          .toList(),
      vehicleType: VehicleType.fromJson(json['vehicle_type']),
      fuelType: FuelType.fromJson(json['fuel_type']),
      brand: Brand.fromJson(json['brand']),
      vehicleModel: VehicleModel.fromJson(json['vehicle_model']),
      vehicleVariant: VehicleVariant.fromJson(json['vehicle_variant']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'unique_id': uniqueId,
      'fk_vehicle_type_id': fkVehicleTypeId,
      'fk_fuel_type_id': fkFuelTypeId,
      'fk_brand_id': fkBrandId,
      'fk_vehicle_model_id': fkVehicleModelId,
      'fk_vehicle_variant_id': fkVehicleVariantId,
      'year': year,
      'price': price,
      'deal_price': dealPrice,
      'is_new_arrival': isNewArrival,
      'is_popular': isPopular,
      'vehicle_status': vehicleStatus,
      'is_verified': isVerified,
      'total_amount': totalAmount,
      'created_at': createdAt,
      'location': location,
      'km_driven': kmDriven,
      'listed_days': listedDays,
      'is_booked': isBooked,
      'booking_id': bookingId,
      'images': images.map((image) => image.toJson()).toList(),
      'vehicle_type': vehicleType.toJson(),
      'fuel_type': fuelType.toJson(),
      'brand': brand.toJson(),
      'vehicle_model': vehicleModel.toJson(),
      'vehicle_variant': vehicleVariant.toJson(),
    };
  }
}

class VehicleImage {
  final int id;
  final int fkVehicleDetailsId;
  final String imageUrl;

  VehicleImage({
    required this.id,
    required this.fkVehicleDetailsId,
    required this.imageUrl,
  });

  factory VehicleImage.fromJson(Map<String, dynamic> json) {
    return VehicleImage(
      id: json['id'],
      fkVehicleDetailsId: json['fk_vehicle_details_id'],
      imageUrl: json['image_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fk_vehicle_details_id': fkVehicleDetailsId,
      'image_url': imageUrl,
    };
  }
}

class VehicleType {
  final int id;
  final String name;

  VehicleType({
    required this.id,
    required this.name,
  });

  factory VehicleType.fromJson(Map<String, dynamic> json) {
    return VehicleType(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class FuelType {
  final int id;
  final String name;

  FuelType({
    required this.id,
    required this.name,
  });

  factory FuelType.fromJson(Map<String, dynamic> json) {
    return FuelType(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class Brand {
  final int id;
  final String name;

  Brand({
    required this.id,
    required this.name,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class VehicleModel {
  final int id;
  final String name;

  VehicleModel({
    required this.id,
    required this.name,
  });

  factory VehicleModel.fromJson(Map<String, dynamic> json) {
    return VehicleModel(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}

class VehicleVariant {
  final int id;
  final String name;

  VehicleVariant({
    required this.id,
    required this.name,
  });

  factory VehicleVariant.fromJson(Map<String, dynamic> json) {
    return VehicleVariant(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
