package unae.lp3.lp3_1ra_segovia.repository; 
import org.springframework.data.jpa.repository.JpaRepository;

import unae.lp3.lp3_1ra_segovia.models.Usuario;


public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {

}
