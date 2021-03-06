<meta charset="utf-8">
<?php
	/**
	*	@author: Vandreh Esmeraldo;
	*	@package: /view/list_common.php
	*
	* 	Este arquivo controla a criação e a 
	*   visualização de dados
	* 	em uma tabela. 
	*
	***/


	//Testar se existe conteúdo!
	#Se não existir, ele mostra a label 
	if($table_content == false){
		echo '<button class="btn btn-warning">';
			 echo ' <i class="fa fa-thumbs-down"></i>';
			 echo ' No existen resultados';
		echo '</button><br><br>';
		#se existir conteúdo, ele cria a tabela
	}else{
?>

<script type="text/javascript">
	$(document).ready(function(){
		$('[data-toggle="tooltip"]').tooltip();
	});

	//função para guardar o id no filtro
	function delete_reg(filter){
		$('#value').val(filter);
	}
</script>

<!-- modal para excluir -->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Excluir????</h5>
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h4>Esta operación no pode ser desecha. ¿Tienes Certeza?</h4>
        <form action="<?=$GLOBALS['project_index'].$delete_destiny;?>" method="POST">
      			<input type="hidden" name="filter" id="value">
      			<button type="" class="btn btn-danger">
      				<span class="glyphicon glyphicon-ok-sign"></span>
      				Si, Excluir.	
      			</button>

      			<button type="button" class="btn btn-default" data-dismiss="modal" aria-lavel="Close">
      				<span class="glyphicon glyphicon-remove-sign"></span>
      				No, Cancelar.
      			</button>

      	</form>
      </div>      
    </div>
  </div>
</div>
<h3>
	<i class="fa fa-<?=$table_icon;?>"></i>
	<?php echo $table_header; ?>		
</h3>

<table class="table table-hover table-striped" id="tableGeral">
	<thead style="background-color: <?=$table_color;?>; color: white;" class="text-left">
	<?php
		//Imprimindo os títulos
		echo '<tr>';
			foreach ($table_titles as $key => $value) {
				echo '<th>',$value,'</th>';
			}
	?>
			<th> Acciones </th>
		</tr>
	</thead>

	<tbody>
		<?php
			foreach ($table_content as $key => $value) {
				echo '<tr>';
				foreach ($table_titles as $k => $v) {
					echo '<td>',$value[$k],'</td>';
				}
				
					echo '<td>';
					if(isset($update) && $update == true){
						echo '<a href="'.$update_destiny.'&filter='.base64_encode($value[$filter]).'" class="btn btn-warning btn-xs" title="Actualizar">';
							echo '<span class="fa fa-edit fa-fw"></span>';
						echo '</a>&nbsp;'; 

					}

					
					if(isset($delete) && $delete == true){				
						echo '<a href="#myModal" class="btn btn-danger btn-xs" data-toggle="modal" id="tooltip" title="Excluir" onclick="delete_reg(\'',$value[$filter],'\');">';
							echo '<span class="fa fa-trash"></span>';
						echo '</a> ';
					}
					

					if(isset($print) && $print == true){
						echo '<a href="'.@$GLOBALS['project_index'].'/models/print.php?&filter='.base64_encode($value[$filter]).'" target="_BLANK" class="btn btn-primary btn-xs">';
							echo '<span class="fa fa-print"></span>';
						echo '</a>&nbsp;';
					}

					if(isset($block) && $block == true){
						echo '<a href="" target="_BLANK" class="btn btn-secondary btn-xs">';
							echo '<span class="fa fa-ban"></span>';
						echo '</a>&nbsp;';
					}


					echo '</td>';
				echo '</tr>';
			}
		?>
	</tbody>
</table>
<?php } ?>
