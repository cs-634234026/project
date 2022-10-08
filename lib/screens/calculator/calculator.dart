class Calculator {
  static int Gropgrab = 0;
  static int track =0;

  static int car({required int Km, required int person}) {
    double tax1 = 0;

    if (Km < 1) {
      tax1 = tax1 + 35;
    } else if (Km >= 1 && Km <= 10) {
      tax1 = Km * 7;
    } else if (Km > 10 && Km <= 20) {
      tax1 = Km * 6;
    } else if (Km > 20 && Km <= 30) {
      tax1 = Km * 5;
    } else if (Km > 30 && Km <= 100) {
      tax1 = Km * 4;
    }

    double reduceTax = 0;
    if (person == 2) {
      reduceTax +=10;
    } else if (person == 3) {
      reduceTax += 30;
    } else if (person == 4) {
      reduceTax += 50;
    }

    Gropgrab = (tax1 + reduceTax).toInt();
    return Gropgrab;
  }

  static int truck({required int Km, required int person}) {
    double tax2 =0;
    if (Km < 1) {
      tax2 = tax2 + 35;
    } else if (Km >= 1 && Km <= 10) {
      tax2 = Km * 7;
    } else if (Km > 10 && Km <= 20) {
      tax2 = Km * 6;
    } else if (Km > 20 && Km <= 30) {
      tax2 = Km * 5;
    } else if (Km > 30 && Km <= 100) {
      tax2 = Km * 4;
    }
    return track;
  }

  static int van(int kl) {
    double tax3;
    if (kl <= 1800) {
      tax3 = 1300;
    } else {
      tax3 = 1600;
    }
    Gropgrab = tax3.toInt();
    return Gropgrab;
  }
}
