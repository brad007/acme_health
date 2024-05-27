abstract class Mapper<V, D> {
  V mapToDTO(D value);

  D mapToDomain(V value);
}
