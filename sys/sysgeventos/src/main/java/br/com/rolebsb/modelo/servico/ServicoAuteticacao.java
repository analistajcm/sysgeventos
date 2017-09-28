package br.com.rolebsb.modelo.servico;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import br.com.rolebsb.modelo.entidades.Usuario;
import br.com.rolebsb.modelo.repositorios.UsuarioRepositorio;

@Component
public class ServicoAuteticacao implements UserDetailsService {

	@Autowired private UsuarioRepositorio usuarioRepositorio;
	@Autowired private Usuario usuarios;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		
		Usuario usuario = usuarioRepositorio.findOneByEmail(email);
		
		if(usuario == null){
			throw new UsernameNotFoundException("Usuário não encontrado!");
		}
		
		return usuario;
	}

}
