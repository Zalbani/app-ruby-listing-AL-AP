json.(@messages) do |one_msg|
  json.id one_msg.id
  json.message one_msg.message
  json.id_annonce one_msg.annonce.id
end