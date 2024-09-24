object camion{
    const carga = []

    method cargar(algo) = { carga.add(algo) }
    method descargar(algo) = { carga.remove(algo) }

    method cargaTotal() = carga.sum({ c => c.peso() })
    method pesoTotal() = 1000 + self.cargaTotal()
    method pesosDeLaCarga() = carga.map({ c => c.peso() })
    method todoPesoImpar() = self.pesosDeLaCarga().all({ e => e.odd() })
/** 3                                                                                    */
    method algoPesa(unValor) = carga.any({ c => c.peso() == unValor })
    method algoPesaBis(unValor) = self.pesosDeLaCarga().any({ p => p  == unValor })
    method cosaConPeligrosidad(nivel) = carga.find({ c => c.peligrosidad() == nivel})
    
/**Obtener                                                                               */
    method cosasQueSuperanPeligrosidad(nivel) = carga.filter({ c => c.peligrosidad() > nivel })
    method cosasMasPeligrosasQue(unaCosa) = carga.filter({ c => c.peligrosidad() > unaCosa.peligrosidad() })
    method excedidoMaximoPeso() = self.pesoTotal() > 2500
/*  Saber si el camion...                                                                */
    method puedeCircularEnRuta(unValor) = self.cosasQueSuperanPeligrosidad(unValor).peligrosidad()




    
