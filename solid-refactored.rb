class Bar   
    def initialize(barista)
        @barista = barista
    end

    def saludar_al_cliente
        Saludar.new.saludar(@barista)
    end

    def pedido_de_pola(tipo, tamano)
        saludar_al_cliente
        @vaso = Vaso.new(tamano)
        @vaso.escoger_vaso
        @pola = Pola.new(tipo)
        @pola.servir_pola
        @pola.entregar_pola
        cobrar_pola
    end

    def cobrar_pola
        costo = @vaso.obtener_costo + @pola.obtener_costo
        puts "Serían #{costo} pesos por favor"
    end
end

class Vaso
    def initialize(tamano)
        @tamanos = { grande: "Vaso grande", mediano: "Vaso mediano", pequeno: "Vaso pequeño" }
        @tamano = tamano
    end

    def escoger_vaso
        puts "Escogiendo un vaso para tu cerveza tamaño #{@tamano}"
        puts @tamanos.has_key?(@tamano) ? @tamanos[@tamano] : "No tenemos este tamaño de vaso, te daré uno grande"
    end

    def obtener_costo
        case @tamano
        when 'grande'
            5000
        when 'mediano'
            3000
        when 'pequeno'
            1000
        end
    end

    def add_tamano(key, value)
        @tamanos[key] = value;
    en
end

class Pola
    def initialize(tipo)
        @tipos = { roja: "Pola roja", rubia: "Pola Rubia", negra: "La más deli: Pola negrita" }
        @tipo = tipo
    end

    def servir_pola
         puts "Sirviendo cerveza de #{@tipos[@tipo]}, se ve deli"
    end

    def entregar_pola
       puts "Te estoy entregando tu cerveza"
    end

    def obtener_costo
        case @tipo
        when 'roja'
            2000
        when 'rubia'
            1000
        when 'negra'
            5000
        end
    end

    def add_tipo(key, value)
        @tipos[key] = value;
    end
end

class Saludar
    def saludar(nombre)
        puts "Buenos días, mi nombre es #{nombre}"
    end
end

