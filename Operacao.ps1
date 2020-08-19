Class _Operacao{
   
    [object]$_papel
    [int]$_quantidade
    [float]$_valor_operacao

    _Operacao($papel, $quantidade){
        $this._papel = $papel
        $this._quantidade = $quantidade
    }

    [string]get_papel(){     
        return $this._papel.get_codigo_papel()
    }

    [int]get_quantidade(){
        return $this._quantidade
    }

    [float]get_valor_operacao(){
        return $this._valor_operacao
    }

    [string]to_string(){
        return "Indíce: " +  $this._papel.get_codigo_papel() + " | Quantidade: " + $this.get_quantidade() + " | Valor: " + $this.get_valor_operacao() 
    }

}

class Compra : _Operacao {

    Compra($papel, $quantidade) : base($papel, $quantidade){
        $this._valor_operacao = -$this.calc_valor_operacao()
    }
    
    [float] calc_valor_operacao(){
        return $this._papel.get_valor() * $this._quantidade
    }

}

class Venda : _Operacao {

    Venda($papel, $quantidade) : base($papel, $quantidade){
        $this._valor_operacao = $this.calc_valor_operacao()
    }

    [float] calc_valor_operacao(){
        return $this._valor_operacao = $this._papel.get_valor() * $this._quantidade
    }

}