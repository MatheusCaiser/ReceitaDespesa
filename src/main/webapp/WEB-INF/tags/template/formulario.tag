<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel">
	<div class="modal-dialog modal-md" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="exampleModalLabel"></h4>
			</div>
			<div class="modal-body">
				<form action="" id="formulario" method="post">
					<div>
						<div class="form-group">
							<label for="recipient-name" class="control-label">Descrição</label>
							<input type="text" class="form-control" id="recipient-name"
								name="descricao">
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="col-md-1 p-t-10">
										<i class="zmdi zmdi-calendar"></i>
									</div>
									<div class="col-md-10">
										<div class="tp-container fg-line">
											<input class="form-control datepicker" data-val="true"
												data-val-date="O campo Data deve ser uma data."
												data-val-required="The Data field is required."
												id="DataDespesa" name="data" type="text"
												value="01/01/0001 00:00:00">
										</div>
									</div>
									<span class="field-validation-valid"
										data-valmsg-for="DataDespesa" data-valmsg-replace="true"></span>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<div class="input-group ">
										<div class="col-md-1 p-t-10">
											<i class="zmdi zmdi-money tip tooltipstered"
												id="mostrarCalculadora" data-original-title="" title=""></i>
										</div>
										<div class="col-md-8">
											<div class="fg-line">
												<input class="form-control" id="Valor" name="valor"
													type="text" value="0">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>


					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
				<button type="button" class="btn btn-primary">Salvar</button>
			</div>
		</div>
	</div>
</div>
<script>
	$('#Valor').priceFormat({
		prefix : '',
		centsSeparator : ',',
		thousandsSeparator : '.'
	});

	$('#DataDespesa').datepicker({
		format : "dd/mm/yyyy",
		language : "pt-BR", 
		todayHighlight : true
	});

	$('#exampleModal').on('show.bs.modal', function(event) {
		var button = $(event.relatedTarget);
		if (event.relatedTarget != undefined) {
			var recipient = button.data('whatever');
			var actionRecipient = button.data('action');
			var modal = $(this);
			modal.find('.modal-title').text('Nova ' + recipient);
			modal.find('#DataDespesa').val(new Date().toLocaleDateString());
			modal.find("#formulario").attr("action", actionRecipient);
		}
	});

	$('.btn-primary').on('click', function() {
		var form = $('#formulario');
		var valor = $("#Valor").val();
		valor = converteMoedaFloat(valor);
		$("#Valor").val(valor);
		form.submit();
	});

	function converteMoedaFloat(valor) {

		if (valor === "") {
			valor = 0;
		} else {
			valor = valor.replace(".", "");
			valor = valor.replace(",", ".");
			valor = parseFloat(valor);
		}
		return valor;

	}
</script>