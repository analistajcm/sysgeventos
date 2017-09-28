package br.com.rolebsb.modelo.repositorios;

import org.springframework.data.repository.CrudRepository;

import br.com.rolebsb.modelo.entidades.Noticia;

public interface NoticiasRepositorio extends CrudRepository<Noticia, Long> {

}
