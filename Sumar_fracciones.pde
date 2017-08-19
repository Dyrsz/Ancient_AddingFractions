void setup () {
   size(500, 200);
   textFont(createFont("Georgia", 36));
   noLoop();
}

void draw() {
 background(0);
 int num1 = 4295;
 int den1 = 21;
 int num2 = -11743;
 int den2 = 90;
 
 int dem = den1 * den2;
 int num = num1*den2 + num2*den1;
 
  int top = 0;
  if (abs(num) < abs(dem)) {
    top = abs(dem);
  } else {
    top = abs(num);
  }
  int num_r = num;
  int dem_r = dem;
  for (int i = 2; i <= sqrt(top); i++) {
    if (num_r % i == 0) {
      if (dem_r % i == 0) {
        num_r = num_r/i;
        dem_r = dem_r/i;
        i = 1;
      }
    }
  }

 text("Num: " + num_r, 40, 60);
 text("Den: " + dem_r, 40, 100);
 
}
