class Item
    def initialize id, name, categ, subcateg, precio
        @id = id.to_i
        @nombre = name
        @categoria = categ.to_i
        @subcategoria = subcateg.to_i
        @preciobase = precio.to_i
    end

    def to_s
        "item #{@id} - #{@nombre}, cat:#{@categoria} subc:#{@subcategoria}, $#{@preciobase}"
    end
end