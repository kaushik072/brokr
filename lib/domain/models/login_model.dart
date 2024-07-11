class LoginModel {
  String? status;
  String? message;
  Data? data;

  LoginModel({this.status, this.message, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  Customer? customer;
  String? token;

  Data({this.customer, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    customer = json['customer'] != null
        ? Customer.fromJson(json['customer'])
        : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (customer != null) {
      data['customer'] = customer!.toJson();
    }
    data['token'] = token;
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
  dynamic avatar;
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