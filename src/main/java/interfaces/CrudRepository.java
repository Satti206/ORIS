package interfaces;

import java.util.Optional;
import java.util.List;
public interface CrudRepository<T> {

    void save(T entity);
    List<T> findAll();
    Optional<T> findByLogin(T login);
}
