class Vector {
  private PVector origen;
  private PVector destino;

  Vector(PVector origen, PVector destino) {
    this.origen = origen;
    this.destino = destino;
  }

  Vector sumar(Vector otro) {
    PVector nuevoDestino = PVector.add(PVector.sub(this.destino, this.origen), otro.destino);
    return new Vector(this.origen, nuevoDestino);
  }

  Vector restar(Vector otro) {
    PVector nuevoDestino = PVector.sub(PVector.sub(this.destino, this.origen), otro.destino);
    return new Vector(this.origen, nuevoDestino);
  }

  void draw() {
    line(origen.x, origen.y, destino.x, destino.y);
  }
}
