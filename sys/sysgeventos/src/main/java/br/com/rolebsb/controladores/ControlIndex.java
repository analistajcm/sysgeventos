package br.com.rolebsb.controladores;



import java.util.HashSet;
import java.util.Set;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.rolebsb.enums.Estados;
import br.com.rolebsb.modelo.entidades.Eventos;
import br.com.rolebsb.modelo.entidades.Noticia;
import br.com.rolebsb.modelo.entidades.Permissoes;
import br.com.rolebsb.modelo.entidades.Usuario;
import br.com.rolebsb.modelo.repositorios.EventosRepositorio;
import br.com.rolebsb.modelo.repositorios.NoticiasRepositorio;
import br.com.rolebsb.modelo.repositorios.PermissoesRepositorio;
import br.com.rolebsb.modelo.repositorios.UsuarioRepositorio;

@Controller
@RequestMapping("/rolebsb")
public class ControlIndex {

	@Autowired private EventosRepositorio eventosRepositorio;
	@Autowired private UsuarioRepositorio usuarioRepositorio;
	@Autowired private PermissoesRepositorio permissoesRepositorio;
	@Autowired private NoticiasRepositorio noticiasRepositorio;
	
	@RequestMapping("/home")
	public String index(Model model){
		Iterable<Eventos> eventos = eventosRepositorio.findAll();
		model.addAttribute("evento", eventos);
		return "index";	
	}
	
	@RequestMapping("/eventos/{idEvento}")
	private String exibirEvento(@PathVariable Long idEvento, Model model){
		Eventos evento = eventosRepositorio.findOne(idEvento);
		model.addAttribute("evento", evento);
		return "pag/evento";
	}
	
	@RequestMapping("/sobre")
	public String sobre(){
		return "pag/sobre";	
	}
	
	@RequestMapping("/noticias")
	public String noticias(Model model){
		Iterable<Noticia> noticias = noticiasRepositorio.findAll();
		model.addAttribute("noticia", noticias);
		return "pag/noticias";	
	}
	
	@RequestMapping("/noticias/{idNoticia}")
	public String verNoticias(@PathVariable Long idNoticia, Model model){
		Noticia noticia = noticiasRepositorio.findOne(idNoticia);
		model.addAttribute("noticia", noticia);
		return "pag/noticia";	
	}
	
	@RequestMapping("/cadastro")
	public String cadastro(Model model){
		
		model.addAttribute("estados", Estados.values());
		
		return "pag/cadastroUsuario";	
	}
	
	
	@RequestMapping("/login")
	public String login(){
		
		return "login";
	}
	
	
	@RequestMapping(value = "cadastro", method=RequestMethod.POST)
	public String postar(@Valid @ModelAttribute Usuario usuario, BindingResult result){
		
		if (result.hasErrors()) {
			return "redirect:cadastro?cadastroerro=true";
		}
		
		if (usuarioRepositorio.findOneByEmail(usuario.getEmail()) == null){
			Set<Permissoes> permitir = new HashSet<Permissoes>();
			
			if(usuario.getOrganizador() == true){
				permitir.add(permissoesRepositorio.findOne("ROLE_ORGANIZADOR"));
				usuario.setPermissoes(permitir);
			}else{
				permitir.add(permissoesRepositorio.findOne("ROLE_USUARIO"));
				usuario.setPermissoes(permitir);
			}
			

			usuarioRepositorio.save(usuario);

			return "redirect:login?sucesso=true";	
		}
		
		
		return "redirect:cadastro?emailExiste=true";
		
	}

	
	
}
