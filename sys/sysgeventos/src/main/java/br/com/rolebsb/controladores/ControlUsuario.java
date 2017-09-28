package br.com.rolebsb.controladores;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.org.apache.xml.internal.dtm.ref.DTMDefaultBaseIterators.InternalAxisIteratorBase;

import br.com.rolebsb.modelo.entidades.AdmUsuarios;
import br.com.rolebsb.modelo.entidades.Comentario;
import br.com.rolebsb.modelo.entidades.Eventos;
import br.com.rolebsb.modelo.entidades.Noticia;
import br.com.rolebsb.modelo.entidades.Usuario;
import br.com.rolebsb.modelo.repositorios.AdmUsuariosRepositorio;
import br.com.rolebsb.modelo.repositorios.ComentarioRepositorio;
import br.com.rolebsb.modelo.repositorios.EventosRepositorio;
import br.com.rolebsb.modelo.repositorios.NoticiasRepositorio;
import br.com.rolebsb.modelo.repositorios.UsuarioRepositorio;

@Controller
@RequestMapping("/usuario")
public class ControlUsuario {
	
	@Autowired private EventosRepositorio eventosRepositorio;
	@Autowired private UsuarioRepositorio usuarioRepositorio;
	@Autowired private AdmUsuariosRepositorio admUsuariosRepositorio;
	@Autowired private NoticiasRepositorio noticiasRepositorio;
	@Autowired private ComentarioRepositorio comentarioRepositorio;
	
	// =============== EVENTOS =============
	@RequestMapping(value="/eventos", method=RequestMethod.GET)
	private String listaeventos(Model model) {
		Iterable<Eventos> eventos = eventosRepositorio.findAll();
		model.addAttribute("evento", eventos);
		return "usuario/eventos";
	}
	
	@RequestMapping("/eventos/{idEvento}")
	private String exibirEvento(@PathVariable Long idEvento, Model model){
		Eventos evento = eventosRepositorio.findOne(idEvento);
		Iterable<Comentario> comentarioS = comentarioRepositorio.findAll();
		ArrayList<Comentario> comentarios = new ArrayList<Comentario>();
			for(Comentario comentario : comentarioS){
				if(comentario.getEvento().getId() == evento.getId()){
					comentarios.add(comentario);
				}
			}
		model.addAttribute("comentarios", comentarios);
		model.addAttribute("evento", evento);
		return "usuario/evento";
	}
	
	@RequestMapping(value="/eventos/{idEvento}", method=RequestMethod.POST)
	private String comentario(@PathVariable Long idEvento, HttpServletRequest request, Model model, Comentario comentario){
		Usuario usuario = usuarioRepositorio.findOneByEmail(request.getRemoteUser());
		Eventos evento = eventosRepositorio.findOne(idEvento);
		
		comentario.setEvento(evento);
		comentario.setUsuario(usuario);
		comentario.setDataComentario(new Date(System.currentTimeMillis()));
		
		comentarioRepositorio.save(comentario);
		
		return "redirect:../eventos/{idEvento}?comentariosucesso=true";
	}
	
	@RequestMapping("/eventos/inscrever{idEvento}")
	private String inscricao(@PathVariable Long idEvento, Usuario usuario, HttpServletRequest request, AdmUsuarios admUsuario, Eventos evento){
		usuario = usuarioRepositorio.findOneByEmail(request.getRemoteUser());
		evento = eventosRepositorio.findOne(idEvento);
		Iterable<AdmUsuarios> admUsuarios = admUsuariosRepositorio.findAllByEvento(evento);		
		
		for(AdmUsuarios aUsuarios : admUsuarios){
			if(aUsuarios.getUsario() == usuario){
				return "redirect:../eventos?cadastrado=true";
			}
		}
		
		Integer vaga = Integer.parseInt(evento.getQuantidadeVagas());
		vaga--;
		evento.setQuantidadeVagas(Integer.toString(vaga));
		
		eventosRepositorio.save(evento);
		
		admUsuario.setEvento(evento);
		admUsuario.setUsario(usuario);
		admUsuario.setOrganizador(false);
		admUsuariosRepositorio.save(admUsuario);

		
		
		return "redirect:../eventos?cadastrosucesso=true";
	}


	//================= NOTICIAS ================
	@RequestMapping("/noticias")
	private String noticias(Model model) {
		Iterable<Noticia> noticias = noticiasRepositorio.findAll();
		model.addAttribute("noticias", noticias);
		return "usuario/noticias";
	}
	
	@RequestMapping("/noticias/ver{idNoticia}")
	private String noticias(@PathVariable Long idNoticia, Model model) {
		Noticia noticia = noticiasRepositorio.findOne(idNoticia);
		
		model.addAttribute("noticia", noticia);
		return "usuario/noticia";
	}
	

	//================INSCRICOES===============
	
		@RequestMapping("/inscritos")
		private String inscricao(HttpServletRequest request, Model model) {
			
			Iterable<AdmUsuarios> admUsuarios = admUsuariosRepositorio.findAllByUsuario(usuarioRepositorio.findOneByEmail(request.getRemoteUser()));
			ArrayList<Eventos> eventos = new ArrayList<Eventos>();
			 for(AdmUsuarios admUsuario : admUsuarios){
				 	eventos.add(admUsuario.getEvento());
				 }
			 model.addAttribute("evento", eventos);
			 
			return "usuario/inscricoes";
		}
		
		@RequestMapping("/cetificado{idEvento}")
		private String certificado(HttpServletRequest request, @PathVariable Long idEvento,Model model){
			Usuario usuario = usuarioRepositorio.findOneByEmail(request.getRemoteUser());
			Eventos evento = eventosRepositorio.findOne(idEvento);
			model.addAttribute("evento",evento);
			model.addAttribute("usuario",usuario);
			return "usuario/certificado";
		}
		
		
		@RequestMapping("/inscritos/cancelar{idEvento}")
		private String cancelarInscricao(@PathVariable Long idEvento, Usuario usuario, HttpServletRequest request, AdmUsuarios admUsuario, Eventos evento){
			
			usuario = usuarioRepositorio.findOneByEmail(request.getRemoteUser());
			evento = eventosRepositorio.findOne(idEvento);
			Iterable<AdmUsuarios> admUsuarios = admUsuariosRepositorio.findAllByEvento(evento);		
			
			
			for(AdmUsuarios aUsuarios : admUsuarios){
				if(aUsuarios.getUsario() == usuario){
					Integer vaga = Integer.parseInt(evento.getQuantidadeVagas());
					vaga++;
					evento.setQuantidadeVagas(Integer.toString(vaga));
					eventosRepositorio.save(evento);
					admUsuariosRepositorio.delete(aUsuarios);
				}
			}
			
			
			
			
			return "redirect:../inscritos?cancelar=true";
		}
	
}
