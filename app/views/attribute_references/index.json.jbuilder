json.array!(@attribute_references) do |attribute_reference|
  json.extract! attribute_reference, :id
  json.url attribute_reference_url(attribute_reference, format: :json)
end
