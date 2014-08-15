json.array!(@supliers) do |suplier|
  json.extract! suplier, :id, :name, :cnpj, :country
  json.url suplier_url(suplier, format: :json)
end
