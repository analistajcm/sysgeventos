package br.com.rolebsb.modelo.repositorios;

import org.springframework.data.repository.CrudRepository;

import br.com.rolebsb.modelo.entidades.Comentario;

public interface ComentarioRepositorio extends CrudRepository<Comentario, Long> {

}
