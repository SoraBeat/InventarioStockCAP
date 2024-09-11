namespace my.inventarios;

entity Inventarios {
  key DocInventario : String(10);  // Número de documento de inventario
  Almacen           : String(4);   // Almacén
  Centro            : String(4);   // Centro
  Fecha             : Date;        // Fecha de creación del inventario
  FechaConteo       : Date;        // Fecha de planificacion conteo
  Estado            : String(10);  // Estado del inventario ("Borrador", "Finalizado")
  Borrado           : Boolean;
  Posiciones        : Composition of many Posiciones on Posiciones.DocInventario = $self;
}

entity Posiciones {
  key DocInventario : Association to Inventarios; // Relación con el documento de inventario
  key PosicionNum   : String(4);                  // Número de posición del inventario
  Material          : String(10);                 // Material
  UnidadMedida      : String(3);                  // Unidad de medida del material
  CantidadContada   : Integer;                    // Cantidad contada del material
  ConteoCero        : Boolean;
  TpS               : String(1);                  // Tipo de stock F(Libre) Q(Calidad) y B(Bloqueado)
}