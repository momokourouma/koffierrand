class Logement {

  late String? Quartier;
  late int? Distance_de_kofi;
  late bool? Reserved;
  late String? ImageUrl;
  late String? UserInfo;
  late int? price;
  late bool? paid;
  late String? description;
  late List<String>? InteriorImage;
  late DateTime? Month;


  Logement({
    this.Distance_de_kofi,
    this.Quartier,
    this.description,
    this.ImageUrl,
    this.paid = false,
    this.price,
    this.InteriorImage,
    this.Reserved = false,
    this.UserInfo,
    this.Month

  });

  Map<String, dynamic> toMap() {
    return {
      "Distance_de_kofi": Distance_de_kofi,
      "Quartier": Quartier,
      "ImageUrl": ImageUrl,
      "Paid": paid,
      "description" : description,
      "price": price,
      "userinfo": UserInfo,
      "interiorImage": InteriorImage,
      "Reserved": Reserved,
      "Month" : Month
    };
  }


  Map<String, dynamic> Paymentbuilding() {
    return {

      "Paid": paid,
      "userinfo": UserInfo,
      "reserved": Reserved,
      "Month" : Month
    };
  }

}