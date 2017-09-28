package br.com.rolebsb.modelo.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.rolebsb.modelo.entidades.Eventos;

@Repository
public interface EventosRepositorio extends CrudRepository<Eventos, Long> {

}
