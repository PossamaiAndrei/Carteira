Class Papel {
    
    [string]$_codigo_papel
    [string]$_empresa
    [float]$_valor

    Papel($codigo_papel, $empresa, $valor){
        $this._codigo_papel = $codigo_papel
        $this._empresa = $empresa
        $this._valor = $valor
    }
    
    [string]get_codigo_papel(){
        return $this._codigo_papel
    }

    [string]get_empresa(){
        return $this._empresa
    }

    [float]get_valor(){
        return $this._valor
    }

    [string]to_string(){
        return "Índice: " + $this.get_codigo_papel() + " | Valor: " + $this.get_valor() + " | Empresa: " + $this.get_empresa() 
    }

    [void]set_valor($valor){
        $this._valor = valor 
    }
}
