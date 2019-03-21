json.array! @carted_products.each do |carted_product|
  json.id carted_product.id
  json.product_id carted_product.product_id
  json.quantity carted_product.quantity
  json.user current_user
  json.status carted_product.status
end