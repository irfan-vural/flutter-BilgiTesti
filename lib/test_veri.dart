import 'soru.dart';

class TestVeri {
  int _soruIndex = 0;

  List<Soru> _sorubankasi = [
    Soru(
        soruMetni: 'Titanic gelmiş geçmiş en büyük gemidir', soruYaniti: false),
    Soru(
        soruMetni: 'Dünyadaki tavuk sayısı insan sayısından fazladır',
        soruYaniti: true),
    Soru(soruMetni: 'Kelebeklerin ömrü bir gündür', soruYaniti: false),
    Soru(soruMetni: 'Dünya düzdür', soruYaniti: false),
    Soru(
        soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır',
        soruYaniti: true),
    Soru(
        soruMetni: 'Fatih Sultan Mehmet hiç patates yememiştir',
        soruYaniti: true),
    Soru(soruMetni: 'Fransızlar 80 demek için, 4 - 20 der', soruYaniti: true)
  ];
  void sonrakiSoru() {
    if (_soruIndex + 1 < _sorubankasi.length) {
      _soruIndex++;
    }
  }

  String getSoruMetni() {
    return _sorubankasi[_soruIndex].soruMetni;
  }

  bool gerSoruYaniti() {
    return _sorubankasi[_soruIndex].soruYaniti;
  }

  bool testBittiMi() {
    if (_soruIndex + 1 >= _sorubankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiResetle() {
    _soruIndex = 0;
  }
}
