object tom {
    var energia = 50
    var raton = jerry
    method raton(unRaton) {
        raton = unRaton
    }
    method comer(unRaton) {
        energia = energia + 12 + unRaton.peso()
    }
    method correr(metros) {
        energia = energia - metros / 2
    }
    method velocidadMaxima() {
        return 5 + energia/10
    }
    method puedeCazar(distancia) {
        return (distancia / 2) <= energia
    }
    method cazar(unRaton, distancia) {
        if(self.puedeCazar(distancia)){
            self.correr(distancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
    var edad = 2
    method cumpleAnios() {
        edad = edad + 1
    }
    method peso() {
        return edad * 20
    }
}

object nibbles {
    method peso() {
        return 35
    }
}

// Inventar otro ratón

object raton1 {
    method peso() {
        return 105
    }
}