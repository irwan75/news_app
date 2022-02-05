import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/services/dependency_injection/sized_d_injection.dart';
import 'package:news_app/app/shared/data/models/api/response/list_news_response.dart';
import 'package:news_app/app/shared/data/models/api/response/source_response.dart';

class HomeController extends GetxController {
  //Controller
  TextEditingController textEditingController = new TextEditingController();
  PageController pageController = new PageController();

  //Dependency Injection
  SizedDInjection sizedDInjection = new SizedDInjection();

  //Variabel Dynamic
  var currentPage = 0.0.obs;
  List<ListNewsResponse> news = [
    ListNewsResponse(
      author: "Tom Allard",
      content:
          "An Indonesian student receives her first dose of China's Sinovac Biotech vaccine for the coronavirus disease (COVID-19) at a high school, as the cases surge in Jakarta, Indonesia, July 1, 2021. REUTE… [+4004 chars]",
      description:
          "The scenes in Indonesia's hospitals in the past week have been eerily similar to those in India two months ago - hospital corridors jammed with COVID-19 patients and frantic families trying to find oxygen to treat sick loved-ones.",
      publishedAt: "2021-07-02T08:12:00Z",
      title:
          "Analysis: Indonesia looked to India on lockdown, but didn't adopt its policy - Reuters",
      url:
          "https://www.reuters.com/world/asia-pacific/indonesia-looked-india-lockdown-didnt-adopt-its-policy-2021-07-02/",
      urlToImage: "assets/images/image_04.jpeg",
      source: SourceResponse(id: "reuters", name: "Reuters"),
    ),
    ListNewsResponse(
      author: "Donny Adhiyasa, Isra Berlian",
      content:
          "VIVA  Sosok Maia Estianty diketahui saat ini sudah hidup bahagia dengan sang suami, Irwan Mussry. Cinta yang dipancarkan keduanya pun membuat orang yang melihatnya turut bahagia.\r\nNamun siapa sangka,… [+370 chars]",
      description:
          "Maia Estianty mengaku sebelum bertemu Irwan Mussry hidupnya penuh tangisan. Tapi, Maia enggan memperlihatkan tangisannya tersebut.",
      publishedAt: "2021-07-12T12:54:10Z",
      title: "Lirihnya Hidup Maia Estianty Sebelum Bertemu Irwan Mussry",
      url:
          "https://www.viva.co.id/showbiz/gosip/1386844-lirihnya-hidup-maia-estianty-sebelum-bertemu-irwan-mussry",
      urlToImage: "assets/images/image_03.jpeg",
      source: SourceResponse(id: "", name: "Viva.co.id"),
    ),
    ListNewsResponse(
      author: "Donny Adhiyasa, Isra Berlian",
      content:
          "VIVA  Maia Estianty diketahui telah menjalani rumah tangga dengan pebisnis Irwan Mussry kurang lebih selama tiga tahun lamanya. Keharmonisan biduk rumah tangga Maia dan Irwan sendiri sering terabadik… [+770 chars]",
      description:
          "Berita Maia Estianty Ungkap Perlakuan Irwan Mussry pada Al El Dul terbaru hari ini 2021-07-12 21:07:38 dari sumber yang terpercaya",
      publishedAt: "2021-07-12T14:07:38Z",
      title: "Maia Estianty Ungkap Perlakuan Irwan Mussry pada Al El Dul",
      url:
          "https://www.viva.co.id/showbiz/gosip/1386857-maia-estianty-ungkap-perlakuan-irwan-mussry-pada-al-el-dul",
      urlToImage: "assets/images/image_02.jpeg",
      source: SourceResponse(id: "", name: "Viva.co.id"),
    ),
    ListNewsResponse(
      author: "Agus Rahmat, Anwar Sadat",
      content:
          "VIVA  Anggota DPR RI Fraksi Partai Demokrat, Irwan mengkritik kebijakan Pemberlakuan Pembatasan Kegiatan Masyarakat atau PPKM Darurat, yang dinilai belum maksimal penerapannya. Sebab, di sisi lain ju… [+525 chars]",
      description:
          "Berita TKA Masuk Saat PPKM Darurat, Politisi Partai Demokrat Kritik terbaru hari ini 2021-07-06 00:06:02 dari sumber yang terpercaya",
      publishedAt: "2021-07-05T17:06:02Z",
      title: "TKA Masuk Saat PPKM Darurat, Politisi Partai Demokrat Kritik",
      url:
          "https://www.viva.co.id/berita/nasional/1385133-tka-masuk-saat-ppkm-darurat-politisi-partai-demokrat-kritik",
      urlToImage: "assets/images/image_03.jpeg",
      source: SourceResponse(id: "", name: "Viva.co.id"),
    ),
    ListNewsResponse(
      author: "Sven Hansen",
      content:
          "Indonesiens Regierung versucht, mit einem Teillockdwon die rasante Ausbreitung der Delta-Variante des Coronavirus zu bremsen.\r\nIn Surabaya werden provisorische Särge für Corona-Opfer gezimmert Foto: … [+4877 chars]",
      description:
          "Indonesiens Regierung versucht, mit einem Teillockdwon die rasante Ausbreitung der Delta-Variante des Coronavirus zu bremsen.",
      publishedAt: "2021-07-05T07:45:00Z",
      title:
          "Indonesien ist Südostasiens Hotspot: Eine Coronawelle „wie ein Tsunami“",
      url: "https://taz.de/Indonesien-ist-Suedostasiens-Hotspot/!5780283/",
      urlToImage: "assets/images/image_04.jpeg",
      source: SourceResponse(id: "", name: "taz.de"),
    ),
  ].obs;

  List<ListNewsResponse> newsTopHotline = [
    ListNewsResponse(
      author: "1",
      content: "2",
      description: "3",
      publishedAt: "4",
      title: "5",
      url: "6",
      urlToImage: "assets/images/image_01.png",
      source: SourceResponse(id: "8", name: "9"),
    ),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: news.length - 1);
    currentPage.value = (news.length - 1.0);
    listenerPageController();
  }

  void listenerPageController() {
    pageController.addListener(() {
      currentPage.value = pageController.page!;
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
