// To parse this JSON data, do
//
//     final pdtListModel = pdtListModelFromJson(jsonString);

import 'dart:convert';

PdtListModel pdtListModelFromJson(String str) =>
    PdtListModel.fromJson(json.decode(str));

String pdtListModelToJson(PdtListModel data) => json.encode(data.toJson());

class PdtListModel {
  PdtListModel({
    this.pdtImage,
    this.pdtName,
    this.orgPrice,
  });

  String? pdtImage;

  String? pdtName;
  String? orgPrice;

  factory PdtListModel.fromJson(Map<String, dynamic> json) => PdtListModel(
        pdtImage: json["pdtImage"],
        pdtName: json["pdtName"],
        orgPrice: json["orgPrice"],
      );

  Map<String, dynamic> toJson() => {
        "pdtImage": pdtImage,
        "pdtName": pdtName,
        "orgPrice": orgPrice,
      };
}
