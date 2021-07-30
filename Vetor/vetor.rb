def quicksort(arr)
    return arr if arr.empty?
    index = rand(arr.length)
    p = arr.delete_at(index)
    a,b = arr.partition { |e| e < p }
    arr.insert(index, p)
    return [*quicksort(a), p, *quicksort(b)]
end

numeros = 100.times.map{Random.rand(100)};
ordenado = quicksort numeros;
puts "DESORDENADO: "
p numeros
puts "\nORDENADO: "
p ordenado;