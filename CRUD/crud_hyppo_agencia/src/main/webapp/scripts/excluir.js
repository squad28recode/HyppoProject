/**
 * Confirmação da exclusão de um contato
 */
 
 function confirmar (){
	let resposta = window.confirm("Deseja excluir este aluno?")
	
	if (resposta === true){
		window.location.href = "delete?cpf" + cpf
	}
}