package br.com.caiser.financa.aplicavel.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.datatables.repository.DataTablesRepository;

import br.com.caiser.financa.aplicavel.models.Categoria;
import br.com.caiser.financa.aplicavel.models.Receita;

public interface ReceitaRepository extends DataTablesRepository<Receita, Long> {
	List<Receita> findByData(Date data);

	List<Receita> findByCategoria(Categoria categoria);

	Categoria findById(Integer id);
}
