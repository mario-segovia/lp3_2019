package unae.lp3.practica.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import unae.lp3.practica.models.Usuario;




public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {

}
