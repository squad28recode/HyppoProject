/**
 * Validação do formulário 
 */
 
 function validar(){
	let nome = cadastroformulario.nome.value
	let sobrenome = cadastroformulario.sobrenome.value
	let cpf = cadastroformulario.cpf.value
	let cidade = cadastroformulario.cidade.value
	let estado = cadastroformulario.estado.value
	let cep = cadastroformulario.cep.value
	let usuario = cadastroformulario.usuario.value
	let senha = cadastroformulario.senha.value
	
	document.forms["cadastroformulario"].submit()
}