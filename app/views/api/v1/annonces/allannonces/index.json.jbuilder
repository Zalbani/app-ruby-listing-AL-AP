json.(@annonces) do |annonce|
  json.id annonce.id
  json.title annonce.title
  json.content annonce.content
  json.author annonce.user.id
  json.price annonce.price
  json.category annonce.category.name
end