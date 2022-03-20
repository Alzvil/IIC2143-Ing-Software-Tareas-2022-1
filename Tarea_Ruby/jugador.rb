class Jugador
    def initialize id, nombre, exp, reputacion, rubies
        @id = id.to_i
        @nombre = nombre
        @experiencia = exp.to_i
        @reputacion = reputacion.to_f #-0.5 0.5
        @rubies = rubies.to_i
    end

    def to_s
        "jugador #{@id} - #{@nombre}, exp:#{@experiencia} repu:#{@reputacion} rubi:#{@rubies}"
    end
end