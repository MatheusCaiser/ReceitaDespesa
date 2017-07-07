$(document).ready(function() {
	$("#tableFinanceira").DataTable({
		ajax : {
			contentType : "application/json",
			url : '/data/financas',
			type : 'POST',
			data : function(d) {
				return JSON.stringify(d)
			}
		},
		serverSide : true,
		language : {
			url : '//cdn.datatables.net/plug-ins/1.10.15/i18n/Portuguese-Brasil.json'
		},
		searching : false,
		columns: [{
			data: 'data',
			render: function(data, type, row) {
				return new Date(data).toLocaleDateString();
			}
		}, {
			data: 'descricao'
		}, {
			data: 'categoria',
			render: function(data, type, row) {
				return data == null ? '' : data.nome; 
			}
		}, {
			data: 'valor',
			render: function(data, type, row) {
				return data == null ? '' : data.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
			}
		},{
			data: 'tipo'
		}]
	});
});
