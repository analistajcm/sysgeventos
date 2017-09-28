package br.com.rolebsb.modelo.repositorios;

import org.springframework.data.repository.CrudRepository;

import br.com.rolebsb.modelo.entidades.Arquivo;

public interface ArquivoRepositorio extends CrudRepository<Arquivo, Long> {

}
