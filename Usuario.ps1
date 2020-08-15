class Usuario {
    
    [string]$_nome_completo
    [string]$_login
    [string]$_senha
    [float]$_carteira
    [array]$_operacoes

    Usuario($nome_completo, $login, $senha, $carteira, $operacoes){
        $this._nome_completo = $nome_completo
        $this._login = $login
        $this._senha = $senha
        $this._carteira = $carteira
        $this._operacoes = $operacoes
    }

    [string] get_nome_completo(){
        return $this._nome_completo
    }

    [float] get_carteira(){
        return $this._carteira
    }

    [array] get_operacoes(){
        return $this._operacoes
    }   

    [void] add_operacao([object]$operacao){
        $this._operacoes += $operacao
    } 

    [void] add_carteira([float]$valor){
        $this._carteira += $valor
    }

    [string] to_string(){
        return "Nome: " + $this.get_nome_completo() + " | Carteira: " + $this.get_carteira() + " | Operações: " + $this._operacoes.Count 
    }
}