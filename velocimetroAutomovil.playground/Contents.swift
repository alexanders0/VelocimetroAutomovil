
enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInincial : Velocidades) {
        self = velocidadInincial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades.init(velocidadInincial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        
        if self.velocidad == Velocidades.Apagado {
            print("\(self.velocidad.rawValue), Apagado")
            self.velocidad = Velocidades.VelocidadBaja
            return (self.velocidad.rawValue, "Velocidad baja")
        }
        
        if self.velocidad == Velocidades.VelocidadBaja {
            self.velocidad = Velocidades.VelocidadMedia
            return (self.velocidad.rawValue, "Velocidad media")
        }
        
        if self.velocidad == Velocidades.VelocidadMedia {
            self.velocidad = Velocidades.VelocidadAlta
            return (self.velocidad.rawValue, "Velocidad alta")
        }
        
        if self.velocidad == Velocidades.VelocidadAlta {
            self.velocidad = Velocidades.VelocidadMedia
            return (self.velocidad.rawValue, "Velocidad media")
        }
        
        return (self.velocidad.rawValue, "Velocidad genérica")
        
    }
}

var auto = Auto()

for _ in 0..<20 {
    let tupla = auto.cambioDeVelocidad()
    print("\(tupla.actual), \(tupla.velocidadEnCadena)")
}
