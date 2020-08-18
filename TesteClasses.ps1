. .\Papel.ps1
. .\Operacao.ps1
. .\Usuario.ps1

$papel = [Papel]::new('TEST4', 'Testes', 1.00)
$operacao = [Operacao]::new($papel, 10, 10.00)
$usuario = [Usuario]::new('teste', 'teste', 'teste', 0.00, @(0))

$papel.to_string()
$operacao.to_string()
$usuario.to_string()

Write-Output "adicionando operação ao usuário"

$usuario.add_operacao($operacao)

$usuario.to_string()

