using my.inventarios as my from '../db/schema';

service ConteoInventarioService {
    entity InventarioSet as projection on my.Inventarios;
    entity PosicionSet as projection on my.Posiciones;
}
