PVector A, B, C;

void setup() {
  size(800, 600);
  background(0);

  A = new PVector(-1, -2);
  B = new PVector(4, -1);
  C = new PVector(5, 2);

  translate(200, 250);
  scale(50);
  strokeWeight(0.05);
  
  // Crear vectores
  Vector AB = new Vector(A, B);
  Vector AC = new Vector(A, C);
  
  // Dibujar vectores
  stroke(0, 0, 255); //Azul para AB
  AB.draw();
  
  stroke(255, 0, 0); //Rojo para AC
  AC.draw();
  
  //Punto D usando la suma de vectores
  Vector AD = AB.sumar(AC);
  
  stroke(0, 255, 0); //Verde para AD
  AD.draw();
  
  //Paralelogramo
  Vector BD = new Vector(B, AD.destino);
  Vector CD = new Vector(C, AD.destino);
  
  BD.draw();
  CD.draw();
  
  //AB y AC como vectores.
  println("Vector AB: (" + int(B.x - A.x) + ", " + int(B.y - A.y) + ")");
  println("Vector AC: (" + int(C.y - A.y) + ", " + int(C.y - A.y) + ")");
}
