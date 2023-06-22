def merge_sort(array)
  return array if array.length <= 1

  mitad = array.length / 2
  mitad_izquierda = array[0...mitad]
  mitad_derecha = array[mitad..-1]

  izquierda_ordenada = merge_sort(mitad_izquierda)
  derecha_ordenada = merge_sort(mitad_derecha)

  fusionar(izquierda_ordenada, derecha_ordenada)
end

def fusionar(izquierda, derecha)
  fusionada = []

  until izquierda.empty? || derecha.empty?
    if izquierda.first <= derecha.first
      fusionada << izquierda.shift
    else
      fusionada << derecha.shift
    end
  end

  fusionada + izquierda + derecha
end
