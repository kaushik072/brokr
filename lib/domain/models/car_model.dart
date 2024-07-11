class CarModel {
  String? status;
  String? message;
  List<CarData>? data;

  CarModel({this.status, this.message, this.data});

  CarModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <CarData>[];
      json['data'].forEach((v) {
        data!.add(CarData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CarData {
  int? id;
  int? idService;
  String? currentStep;
  String? detailableType;
  int? detailableId;
  int? idCustomer;
  String? price;
  dynamic coverPhoto;
  String? country;
  String? street;
  dynamic aptSuite;
  String? city;
  String? state;
  String? zipCode;
  String? lat;
  String? lng;
  String? title;
  String? description;
  String? guidelines;
  String? cancellationPolicy;
  String? securityDeposit;
  String? deliveryToGuestLocation;
  String? deliveryFreeToGuestLocation;
  String? deliveryFreeToGuestLocationValue;
  dynamic deliveryFreeToGuestLocationMin;
  dynamic deliveryFreeToGuestLocationMax;
  String? discount;
  dynamic threeToFiveDiscount;
  dynamic weeklyDiscount;
  dynamic monthlyDiscount;
  String? instantBooking;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? distance;
  String? isFavorite;
  Detailable? detailable;
  List<Features>? features;
  List<dynamic>? customAvailabilities;
  List<Photos>? photos;
  List<dynamic>? customPrices;
  List<dynamic>? deliveryLocationsAndFees;
  List<dynamic>? feeDeliveryToGuestLocations;
  Customer? customer;

  CarData(
      {this.id,
      this.idService,
      this.currentStep,
      this.detailableType,
      this.detailableId,
      this.idCustomer,
      this.price,
      this.coverPhoto,
      this.country,
      this.street,
      this.aptSuite,
      this.city,
      this.state,
      this.zipCode,
      this.lat,
      this.lng,
      this.title,
      this.description,
      this.guidelines,
      this.cancellationPolicy,
      this.securityDeposit,
      this.deliveryToGuestLocation,
      this.deliveryFreeToGuestLocation,
      this.deliveryFreeToGuestLocationValue,
      this.deliveryFreeToGuestLocationMin,
      this.deliveryFreeToGuestLocationMax,
      this.discount,
      this.threeToFiveDiscount,
      this.weeklyDiscount,
      this.monthlyDiscount,
      this.instantBooking,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.distance,
      this.isFavorite,
      this.detailable,
      this.features,
      this.customAvailabilities,
      this.photos,
      this.customPrices,
      this.deliveryLocationsAndFees,
      this.feeDeliveryToGuestLocations,
      this.customer});

  CarData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idService = json['id_service'];
    currentStep = json['current_step'];
    detailableType = json['detailable_type'];
    detailableId = json['detailable_id'];
    idCustomer = json['id_customer'];
    price = json['price'];
    coverPhoto = json['cover_photo'];
    country = json['country'];
    street = json['street'];
    aptSuite = json['apt_suite'];
    city = json['city'];
    state = json['state'];
    zipCode = json['zip_code'];
    lat = json['lat'];
    lng = json['lng'];
    title = json['title'];
    description = json['description'];
    guidelines = json['guidelines'];
    cancellationPolicy = json['cancellation_policy'];
    securityDeposit = json['security_deposit'];
    deliveryToGuestLocation = json['delivery_to_guest_location'];
    deliveryFreeToGuestLocation = json['delivery_free_to_guest_location'];
    deliveryFreeToGuestLocationValue = json['delivery_free_to_guest_location_value'];
    deliveryFreeToGuestLocationMin = json['delivery_free_to_guest_location_min'];
    deliveryFreeToGuestLocationMax = json['delivery_free_to_guest_location_max'];
    discount = json['discount'];
    threeToFiveDiscount = json['three_to_five_discount'];
    weeklyDiscount = json['weekly_discount'];
    monthlyDiscount = json['monthly_discount'];
    instantBooking = json['instant_booking'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    distance = json['distance'];
    isFavorite = json['is_favorite'];
    detailable = json['detailable'] != null ? Detailable.fromJson(json['detailable']) : null;
    if (json['features'] != null) {
      features = <Features>[];
      json['features'].forEach((v) {
        features!.add(Features.fromJson(v));
      });
    }
    if (json['custom_availabilities'] != null) {
      customAvailabilities = <Null>[];
      json['custom_availabilities'].forEach((v) {
        customAvailabilities!.add(v);
      });
    }
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(Photos.fromJson(v));
      });
    }
    if (json['custom_prices'] != null) {
      customPrices = <Null>[];
      json['custom_prices'].forEach((v) {
        customPrices!.add(v);
      });
    }
    if (json['delivery_locations_and_fees'] != null) {
      deliveryLocationsAndFees = <Null>[];
      json['delivery_locations_and_fees'].forEach((v) {
        deliveryLocationsAndFees!.add(v);
      });
    }
    if (json['fee_delivery_to_guest_locations'] != null) {
      feeDeliveryToGuestLocations = <Null>[];
      json['fee_delivery_to_guest_locations'].forEach((v) {
        feeDeliveryToGuestLocations!.add(v);
      });
    }
    customer = json['customer'] != null ? Customer.fromJson(json['customer']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['id_service'] = idService;
    data['current_step'] = currentStep;
    data['detailable_type'] = detailableType;
    data['detailable_id'] = detailableId;
    data['id_customer'] = idCustomer;
    data['price'] = price;
    data['cover_photo'] = coverPhoto;
    data['country'] = country;
    data['street'] = street;
    data['apt_suite'] = aptSuite;
    data['city'] = city;
    data['state'] = state;
    data['zip_code'] = zipCode;
    data['lat'] = lat;
    data['lng'] = lng;
    data['title'] = title;
    data['description'] = description;
    data['guidelines'] = guidelines;
    data['cancellation_policy'] = cancellationPolicy;
    data['security_deposit'] = securityDeposit;
    data['delivery_to_guest_location'] = deliveryToGuestLocation;
    data['delivery_free_to_guest_location'] = deliveryFreeToGuestLocation;
    data['delivery_free_to_guest_location_value'] = deliveryFreeToGuestLocationValue;
    data['delivery_free_to_guest_location_min'] = deliveryFreeToGuestLocationMin;
    data['delivery_free_to_guest_location_max'] = deliveryFreeToGuestLocationMax;
    data['discount'] = discount;
    data['three_to_five_discount'] = threeToFiveDiscount;
    data['weekly_discount'] = weeklyDiscount;
    data['monthly_discount'] = monthlyDiscount;
    data['instant_booking'] = instantBooking;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['distance'] = distance;
    data['is_favorite'] = isFavorite;
    if (detailable != null) {
      data['detailable'] = detailable!.toJson();
    }
    if (features != null) {
      data['features'] = features!.map((v) => v.toJson()).toList();
    }
    if (customAvailabilities != null) {
      data['custom_availabilities'] = customAvailabilities!.map((v) => v.toJson()).toList();
    }
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    if (customPrices != null) {
      data['custom_prices'] = customPrices!.map((v) => v.toJson()).toList();
    }
    if (deliveryLocationsAndFees != null) {
      data['delivery_locations_and_fees'] =
          deliveryLocationsAndFees!.map((v) => v.toJson()).toList();
    }
    if (feeDeliveryToGuestLocations != null) {
      data['fee_delivery_to_guest_locations'] =
          feeDeliveryToGuestLocations!.map((v) => v.toJson()).toList();
    }
    if (customer != null) {
      data['customer'] = customer!.toJson();
    }
    return data;
  }
}

class Detailable {
  int? id;
  int? idListedProperty;
  String? vin;
  String? brandedOrSalvage;
  int? makeId;
  Make? make;
  int? modelId;
  Make? model;
  String? year;
  int? transmissionStyleId;
  Make? transmissionStyle;
  String? color;
  String? mileage;
  String? doors;
  String? seats;
  String? gasTank;
  int? driveTypeId;
  Make? driveType;
  int? vehicleTypeId;
  Make? vehicleType;
  String? fuelType;
  String? licensePlate;
  String? licensePlateState;
  String? ageRequired;
  String? availability;
  int? minHoursToPrepareTrip;
  int? minDaysToTrip;
  int? maxDaysToTrip;
  String? twoDaysMinToTripOnFridayOrSaturday;
  bool? oldCar;
  String? includedDailyMiles;
  int? dailyMilesIncluded;
  int? extraMilesRate;

  Detailable(
      {this.id,
      this.idListedProperty,
      this.vin,
      this.brandedOrSalvage,
      this.makeId,
      this.make,
      this.modelId,
      this.model,
      this.year,
      this.transmissionStyleId,
      this.transmissionStyle,
      this.color,
      this.mileage,
      this.doors,
      this.seats,
      this.gasTank,
      this.driveTypeId,
      this.driveType,
      this.vehicleTypeId,
      this.vehicleType,
      this.fuelType,
      this.licensePlate,
      this.licensePlateState,
      this.ageRequired,
      this.availability,
      this.minHoursToPrepareTrip,
      this.minDaysToTrip,
      this.maxDaysToTrip,
      this.twoDaysMinToTripOnFridayOrSaturday,
      this.oldCar,
      this.includedDailyMiles,
      this.dailyMilesIncluded,
      this.extraMilesRate});

  Detailable.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idListedProperty = json['id_listed_property'];
    vin = json['vin'];
    brandedOrSalvage = json['branded_or_salvage'];
    makeId = json['make_id'];
    make = json['make'] != null ? Make.fromJson(json['make']) : null;
    modelId = json['model_id'];
    model = json['model'] != null ? Make.fromJson(json['model']) : null;
    year = json['year'];
    transmissionStyleId = json['transmission_style_id'];
    transmissionStyle =
        json['transmission_style'] != null ? Make.fromJson(json['transmission_style']) : null;
    color = json['color'];
    mileage = json['mileage'];
    doors = json['doors'];
    seats = json['seats'];
    gasTank = json['gas_tank'];
    driveTypeId = json['drive_type_id'];
    driveType = json['drive_type'] != null ? Make.fromJson(json['drive_type']) : null;
    vehicleTypeId = json['vehicle_type_id'];
    vehicleType = json['vehicle_type'] != null ? Make.fromJson(json['vehicle_type']) : null;
    fuelType = json['fuel_type'];
    licensePlate = json['license_plate'];
    licensePlateState = json['license_plate_state'];
    ageRequired = json['age_required'];
    availability = json['availability'];
    minHoursToPrepareTrip = json['min_hours_to_prepare_trip'];
    minDaysToTrip = json['min_days_to_trip'];
    maxDaysToTrip = json['max_days_to_trip'];
    twoDaysMinToTripOnFridayOrSaturday = json['two_days_min_to_trip_on_friday_or_saturday'];
    oldCar = json['old_car'];
    includedDailyMiles = json['included_daily_miles'];
    dailyMilesIncluded = json['daily_miles_included'];
    extraMilesRate = json['extra_miles_rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['id_listed_property'] = idListedProperty;
    data['vin'] = vin;
    data['branded_or_salvage'] = brandedOrSalvage;
    data['make_id'] = makeId;
    if (make != null) {
      data['make'] = make!.toJson();
    }
    data['model_id'] = modelId;
    if (model != null) {
      data['model'] = model!.toJson();
    }
    data['year'] = year;
    data['transmission_style_id'] = transmissionStyleId;
    if (transmissionStyle != null) {
      data['transmission_style'] = transmissionStyle!.toJson();
    }
    data['color'] = color;
    data['mileage'] = mileage;
    data['doors'] = doors;
    data['seats'] = seats;
    data['gas_tank'] = gasTank;
    data['drive_type_id'] = driveTypeId;
    if (driveType != null) {
      data['drive_type'] = driveType!.toJson();
    }
    data['vehicle_type_id'] = vehicleTypeId;
    if (vehicleType != null) {
      data['vehicle_type'] = vehicleType!.toJson();
    }
    data['fuel_type'] = fuelType;
    data['license_plate'] = licensePlate;
    data['license_plate_state'] = licensePlateState;
    data['age_required'] = ageRequired;
    data['availability'] = availability;
    data['min_hours_to_prepare_trip'] = minHoursToPrepareTrip;
    data['min_days_to_trip'] = minDaysToTrip;
    data['max_days_to_trip'] = maxDaysToTrip;
    data['two_days_min_to_trip_on_friday_or_saturday'] = twoDaysMinToTripOnFridayOrSaturday;
    data['old_car'] = oldCar;
    data['included_daily_miles'] = includedDailyMiles;
    data['daily_miles_included'] = dailyMilesIncluded;
    data['extra_miles_rate'] = extraMilesRate;
    return data;
  }
}

class Make {
  String? id;
  String? name;

  Make({this.id, this.name});

  Make.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Features {
  int? id;
  int? idListedProperty;
  int? idFeature;
  String? status;
  String? createdAt;
  String? updatedAt;
  Feature? feature;

  Features(
      {this.id,
      this.idListedProperty,
      this.idFeature,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.feature});

  Features.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idListedProperty = json['id_listed_property'];
    idFeature = json['id_feature'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    feature = json['feature'] != null ? Feature.fromJson(json['feature']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['id_listed_property'] = idListedProperty;
    data['id_feature'] = idFeature;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (feature != null) {
      data['feature'] = feature!.toJson();
    }
    return data;
  }
}

class Feature {
  int? id;
  int? idCategory;
  int? idService;
  String? name;
  dynamic description;
  String? image;
  dynamic icon;
  String? status;
  String? createdAt;
  String? updatedAt;

  Feature(
      {this.id,
      this.idCategory,
      this.idService,
      this.name,
      this.description,
      this.image,
      this.icon,
      this.status,
      this.createdAt,
      this.updatedAt});

  Feature.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idCategory = json['id_category'];
    idService = json['id_service'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    icon = json['icon'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['id_category'] = idCategory;
    data['id_service'] = idService;
    data['name'] = name;
    data['description'] = description;
    data['image'] = image;
    data['icon'] = icon;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Photos {
  int? id;
  int? idListedProperty;
  String? photo;
  String? thumbnail;
  String? cover;
  String? status;
  String? createdAt;
  String? updatedAt;

  Photos(
      {this.id,
      this.idListedProperty,
      this.photo,
      this.thumbnail,
      this.cover,
      this.status,
      this.createdAt,
      this.updatedAt});

  Photos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idListedProperty = json['id_listed_property'];
    photo = json['photo'];
    thumbnail = json['thumbnail'];
    cover = json['cover'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['id_listed_property'] = idListedProperty;
    data['photo'] = photo;
    data['thumbnail'] = thumbnail;
    data['cover'] = cover;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Customer {
  int? id;
  String? stripeId;
  String? name;
  String? lastName;
  String? email;
  String? phoneCode;
  String? phone;
  String? verifiedPhone;
  String? birthdate;
  String? idCountry;
  dynamic street;
  dynamic city;
  dynamic state;
  dynamic zipCode;
  String? avatar;
  String? os;
  String? socialAuth;
  String? language;
  String? fcmToken;
  String? type;
  String? completedProfile;
  String? verifiedAsBroker;
  String? verifiedAsHost;
  String? verifiedAsAffiliate;
  dynamic additionalData;
  String? verifiedIdentity;
  dynamic rejectionReason;
  dynamic driversLicense;
  String? driversLicenseStatus;
  dynamic insuranceCard;
  String? insuranceCardStatus;
  String? status;
  String? createdAt;
  String? updatedAt;

  Customer(
      {this.id,
      this.stripeId,
      this.name,
      this.lastName,
      this.email,
      this.phoneCode,
      this.phone,
      this.verifiedPhone,
      this.birthdate,
      this.idCountry,
      this.street,
      this.city,
      this.state,
      this.zipCode,
      this.avatar,
      this.os,
      this.socialAuth,
      this.language,
      this.fcmToken,
      this.type,
      this.completedProfile,
      this.verifiedAsBroker,
      this.verifiedAsHost,
      this.verifiedAsAffiliate,
      this.additionalData,
      this.verifiedIdentity,
      this.rejectionReason,
      this.driversLicense,
      this.driversLicenseStatus,
      this.insuranceCard,
      this.insuranceCardStatus,
      this.status,
      this.createdAt,
      this.updatedAt});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stripeId = json['stripe_id'];
    name = json['name'];
    lastName = json['last_name'];
    email = json['email'];
    phoneCode = json['phone_code'];
    phone = json['phone'];
    verifiedPhone = json['verified_phone'];
    birthdate = json['birthdate'];
    idCountry = json['id_country'];
    street = json['street'];
    city = json['city'];
    state = json['state'];
    zipCode = json['zip_code'];
    avatar = json['avatar'];
    os = json['os'];
    socialAuth = json['social_auth'];
    language = json['language'];
    fcmToken = json['fcm_token'];
    type = json['type'];
    completedProfile = json['completed_profile'];
    verifiedAsBroker = json['verified_as_broker'];
    verifiedAsHost = json['verified_as_host'];
    verifiedAsAffiliate = json['verified_as_affiliate'];
    additionalData = json['additional_data'];
    verifiedIdentity = json['verified_identity'];
    rejectionReason = json['rejection_reason'];
    driversLicense = json['drivers_license'];
    driversLicenseStatus = json['drivers_license_status'];
    insuranceCard = json['insurance_card'];
    insuranceCardStatus = json['insurance_card_status'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['stripe_id'] = stripeId;
    data['name'] = name;
    data['last_name'] = lastName;
    data['email'] = email;
    data['phone_code'] = phoneCode;
    data['phone'] = phone;
    data['verified_phone'] = verifiedPhone;
    data['birthdate'] = birthdate;
    data['id_country'] = idCountry;
    data['street'] = street;
    data['city'] = city;
    data['state'] = state;
    data['zip_code'] = zipCode;
    data['avatar'] = avatar;
    data['os'] = os;
    data['social_auth'] = socialAuth;
    data['language'] = language;
    data['fcm_token'] = fcmToken;
    data['type'] = type;
    data['completed_profile'] = completedProfile;
    data['verified_as_broker'] = verifiedAsBroker;
    data['verified_as_host'] = verifiedAsHost;
    data['verified_as_affiliate'] = verifiedAsAffiliate;
    data['additional_data'] = additionalData;
    data['verified_identity'] = verifiedIdentity;
    data['rejection_reason'] = rejectionReason;
    data['drivers_license'] = driversLicense;
    data['drivers_license_status'] = driversLicenseStatus;
    data['insurance_card'] = insuranceCard;
    data['insurance_card_status'] = insuranceCardStatus;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
