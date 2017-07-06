package br.com.caiser.financa.aplicavel.controllers;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.datatables.mapping.DataTablesInput;
import org.springframework.data.jpa.datatables.mapping.DataTablesOutput;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import br.com.caiser.financa.aplicavel.models.Despesa;
import br.com.caiser.financa.aplicavel.repositories.DespesaRepository;

@RestController
public class FinancasController {

	private static final Logger log = LoggerFactory.getLogger(FinancasController.class);

	@Autowired
	private DespesaRepository despesaRepository;

	@RequestMapping(value = "/data/financas", method = RequestMethod.POST)
	public DataTablesOutput<Despesa> getDespesas(@Valid @RequestBody DataTablesInput input) {
		log.info("Passando pelo controller de Finanças!!");
		return despesaRepository.findAll(input);
	}

}
