package br.com.caiser.financa.aplicavel.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.datatables.repository.DataTablesRepository;

import br.com.caiser.financa.aplicavel.models.Categoria;
import br.com.caiser.financa.aplicavel.models.Movimento;

public interface MovimentoRepository extends DataTablesRepository<Movimento, Long> {
	List<Movimento> findByData(Date data);

	List<Movimento> findByCategoria(Categoria categoria);

	Movimento findById(Integer id);
}
