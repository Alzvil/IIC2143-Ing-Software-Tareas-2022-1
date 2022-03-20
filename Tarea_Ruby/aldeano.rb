class Aldeano
    def initialize id, name, exp
        @id = id.to_i
        @name = name
        @experiencia = exp.to_i
        @nivel = 1 #1 a 5
    end

    def to_s
        "aldeano #{@id} - #{@name}, exp:#{@experiencia} lvl:#{@nivel} dsct:#{@descuento}"
    end
end

class Granjero < Aldeano
    def initialize id, name, exp
        super(id, name, exp)
        @descuento = 0.6
    end
end

class Herrero < Aldeano
    def initialize id, name, exp
        super(id, name, exp)
        @descuento = 0.5
    end
end

class Bibliotecario < Aldeano
    def initialize id, name, exp
        super(id, name, exp)
        @descuento = 0.35
    end
end