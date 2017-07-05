package br.com.caiser.financa.aplicavel.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.datatables.repository.DataTablesRepository;

import br.com.caiser.financa.aplicavel.models.Categoria;
import br.com.caiser.financa.aplicavel.models.Despesa;

public interface DespesaRepository extends DataTablesRepository<Despesa, Long> {
	List<Despesa> findByData(Date data);

	List<Despesa> findByCategoria(Categoria categoria);

	Despesa findById(Integer id);
}
