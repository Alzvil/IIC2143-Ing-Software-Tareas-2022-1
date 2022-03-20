require 'csv'
require_relative 'jugador'
require_relative 'aldeano'
require_relative 'item'
require_relative 'intercambio'

def cargar_archivos
    jugadores = Array.new
    aldeanos = Array.new
    items = Array.new
    intercambios = Array.new

    File.open("data/jugadores.csv", "r").each do |player|
        temp = player.split(',')
        nuevo = Jugador.new(temp[0], temp[1], temp[2], temp[3], temp[4]) if temp[0] != 'id'
        jugadores.push(nuevo) if nuevo != nil
    end

    File.open("data/aldeanos.csv", "r").each do |villager|
        temp = villager.strip.split(',')
        if temp[2] == '1'
            nuevo = Granjero.new(temp[0], temp[1], temp[3]) if temp[0] != 'id'
        elsif temp[2] == '2'
            nuevo = Herrero.new(temp[0], temp[1], temp[3]) if temp[0] != 'id'
        elsif temp[2] == '3'
            nuevo = Bibliotecario.new(temp[0], temp[1], temp[3]) if temp[0] != 'id'
        end
        aldeanos.push(nuevo) if nuevo != nil
    end

    File.open("data/objetos.csv", "r").each do |object|
        temp = object.strip.split(',')
        nuevo = Item.new(temp[0], temp[1], temp[2], temp[3], temp[4]) if temp[0] != 'id'
        items.push(nuevo) if nuevo != nil
    end

    File.open("data/intercambios.csv", "r").each do |change|
        temp = change.strip.split(',')
        print(temp)
        
        cambios = Array.new
        if temp[2] != 'objetos'
            temp[2] = temp[2].strip.split(':')
            for par in temp[2]
                par = par.strip.split('-')
                cambios.push(par)
            end
        end

        nuevo = Intercambio.new(temp[0], temp[1], cambios) if temp[0] != 'id'
        intercambios.push(nuevo) if nuevo != nil
    end

    return jugadores, aldeanos, items, intercambios
end

if __FILE__ == $0
    jugadores, aldeanos, items, intercambios = cargar_archivos()

    puts '='*30
    puts jugadores
    puts '='*30
    puts aldeanos
    puts '='*30
    puts items
    puts '='*30
    puts intercambios
end