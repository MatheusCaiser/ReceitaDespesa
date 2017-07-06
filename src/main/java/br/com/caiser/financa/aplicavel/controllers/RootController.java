package br.com.caiser.financa.aplicavel.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caiser.financa.aplicavel.models.Despesa;
import br.com.caiser.financa.aplicavel.models.Receita;
import br.com.caiser.financa.aplicavel.repositories.DespesaRepository;
import br.com.caiser.financa.aplicavel.repositories.ReceitaRepository;


@Controller
public class RootController {
	@Autowired
	private DespesaRepository despesaRepository;
	
	@Autowired
	private ReceitaRepository receitaRepository;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("salvarDespesa")
	public String salvarDespesa(Despesa despesa, BindingResult result) {
		if(result.hasErrors()) {
			return null;
		}
		despesaRepository.save(despesa);
		return index();
	}
	
	@RequestMapping("salvarReceita")
	public String salvarReceita(Receita receita, BindingResult result) {
		if(result.hasErrors()) {
			return null;
		}
		
		receitaRepository.save(receita);
		return index();
	}
}
