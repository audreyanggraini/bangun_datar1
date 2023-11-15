import 'package:get/get.dart';

class jajargenjangController extends GetxController {
  RxBool isHitungLuas = true.obs;
  int alas = 0;
  int tinggi = 0;
  int sisimiring = 0;
  final hasil = "".obs;

  void hitungLuas() {
    int hitung = alas * tinggi;
    hasil.value =
    "Hasil perhitungan luasnya adalah $alas x $tinggi = $hitung cm2";
    isHitungLuas.value = true;
  }

  void hitungKeliling() {
    int hitung = 2 * (sisimiring + alas);
    hasil.value =
    "Hasil perhitungan kelilingnya adalah 2 x ($sisimiring+$alas) = $hitung cm";
    isHitungLuas.value = false;
  }
}