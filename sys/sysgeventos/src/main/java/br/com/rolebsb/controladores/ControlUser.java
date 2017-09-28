package br.com.rolebsb.controladores;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.rolebsb.modelo.entidades.Usuario;
import br.com.rolebsb.modelo.repositorios.UsuarioRepositorio;


@Controller
@RequestMapping("/app")
public class ControlUser {
	
	@Autowired UsuarioRepositorio usuarioRepositorio;
	
	@RequestMapping(method=RequestMethod.GET)
	public Object direcionar(HttpServletRequest request){
		Usuario usuario = usuarioRepositorio.findOneByEmail(request.getRemoteUser());
		
		if(usuario.getOrganizador() == true){
			return "redirect:app/organizador/eventos";
		}
		
		return "redirect:app/usuario/eventos";
	
	}
}
