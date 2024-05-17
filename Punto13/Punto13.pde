PVector v1, v2; // Vectores para definir una línea
PVector pointLocation;
String positionText;

void setup() {
  size(400, 400);
  
  //Puntos que forman la línea
  v1 = new PVector(100, 100);
  v2 = new PVector(300, 300);
  
  //Punto que queremos verificar
  pointLocation = new PVector(200, 200);
}

void draw() {
  background(255);
  
  stroke(0);
  line(v1.x, v1.y, v2.x, v2.y);
  
  stroke(255, 0, 0);
  strokeWeight(5);
  point(pointLocation.x, pointLocation.y);
  
  //Calcular el producto punto
  PVector lineDir = PVector.sub(v2, v1);
  PVector toPoint = PVector.sub(pointLocation, v1);
  float dotProduct = lineDir.x * toPoint.y - lineDir.y * toPoint.x;
  
  if (dotProduct > 0) {
    positionText = "a la izquierda";
  } else if (dotProduct < 0) {
    positionText = "a la derecha";
  } else {
    positionText = "sobre la línea";
  }
  
  fill(0);
  textAlign(CENTER);
  textSize(16);
  text("El punto está " + positionText, width/2, height - 20);
}
