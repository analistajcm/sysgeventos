package br.com.rolebsb.modelo.repositorios;

import org.springframework.data.repository.CrudRepository;

import br.com.rolebsb.modelo.entidades.AdmUsuarios;
import br.com.rolebsb.modelo.entidades.Eventos;
import br.com.rolebsb.modelo.entidades.Usuario;

public interface AdmUsuariosRepositorio extends CrudRepository<AdmUsuarios, Long>{

	public AdmUsuarios findOneByEvento(Eventos evento);

	public Iterable<AdmUsuarios> findAllByEvento(Eventos evento);
	
	public Iterable<AdmUsuarios> findAllByEvento(Long numero);

	public Iterable<AdmUsuarios> findAllByUsuario(Usuario usuario);

	
}
