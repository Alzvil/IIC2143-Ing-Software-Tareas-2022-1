class Intercambio
    def initialize id, player, object
        @id = id.to_i
        @jugador = player.to_i
        @objetos = object
    end

    def to_s
        "#{@id}, #{@jugador}, #{@objetos}"
    end
end