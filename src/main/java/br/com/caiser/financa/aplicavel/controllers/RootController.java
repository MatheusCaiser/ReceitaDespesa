package br.com.caiser.financa.aplicavel.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caiser.financa.aplicavel.models.Movimento;
import br.com.caiser.financa.aplicavel.repositories.MovimentoRepository;

@Controller
public class RootController {
	@Autowired
	private MovimentoRepository movimentoRepository;

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("salvarMovimento")
	public String salvarReceita(Movimento movimento, BindingResult result) {
		if (result.hasErrors()) {
			return null;
		}

		movimentoRepository.save(movimento);
		return index();
	}
}
