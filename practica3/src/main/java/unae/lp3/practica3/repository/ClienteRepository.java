package unae.lp3.practica3.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import unae.lp3.practica3.models.Cliente;

public interface ClienteRepository extends JpaRepository<Cliente, Integer>{

}
