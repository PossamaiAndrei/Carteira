Class Operacao{
   
    [object]$_papel
    [int]$_quantidade
    [float]$_valor_compra

    Operacao($papel, $quantidade, $valor_compra){
        $this._papel = $papel
        $this._quantidade = $quantidade
        $this._valor_compra = $valor_compra
    }

    [string]get_papel(){
        return $this._papel.ToString()
    }

    [int]get_quantidade(){
        return $this._quantidade
    }

    [float]get_valor_compra(){
        return $this._valor_compra
    }

    [string]to_string(){
        return "Indíce: " +  $this._papel.get_codigo_papel + " | Quantidade: " + $this.get_quantidade() + " | Valor: " + $this.get_valor_compra() 
    }

}
