$(document).ready(function() {
	$("#tableFinanceira").DataTable({
		ajax: {
			contentType: "application/json",
			url: '/data/financas',
			type: 'POST',
			data: function(d){
				return JSON.stringify(d)
			}
		},
		serverSide: true,
		language : {
			url : '//cdn.datatables.net/plug-ins/1.10.15/i18n/Portuguese-Brasil.json'
		},
		searching: false
	});
})