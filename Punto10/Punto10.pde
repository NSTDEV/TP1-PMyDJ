PVector A, B, C;

void setup() {
  size(800, 600);
  background(255);
  
  A = new PVector(-100, -200);
  B = new PVector(400, -100);
  C = new PVector(50, 200);

  translate(200, 250);
  // Dibujar vectores AB, AC y el paralelogramo
  stroke(0, 0, 255); // Color azul para AB
  drawVector(A, B);
  
  stroke(255, 0, 0); // Color rojo para AC
  drawVector(A, C);
  
  PVector D = PVector.add(PVector.sub(B, A), C); // Calcular punto D como la suma de AB y AC
  
  stroke(0, 255, 0); // Color verde para AD
  drawVector(A, D);
  
  // Dibujar el paralelogramo
  drawVector(B, D);
  drawVector(C, D);
}

// Función para dibujar un vector desde el punto start hasta el punto end
void drawVector(PVector start, PVector end) {
  line(start.x, start.y, end.x, end.y);
}
