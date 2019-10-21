package unae.lp3.app.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import unae.lp3.app.models.Pelicula;
@Repository
public interface PeliculasRepository extends CrudRepository <Pelicula, Integer> {

}
