class Result < Afiliado
  searchable do
    text :numero_documento
    string  :sort_title do
      apellido_nombre.downcase.gsub(/^(an?|the)/, '')
    end
  end
end