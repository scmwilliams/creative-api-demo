json.array!(@tags) do |tag|
  json.extract! tag, :id, :no_api, :insertion_order_id, :ad_unit_id, :impression_goal, :partner_id, :easy_touch
  json.url tag_url(tag, format: :json)
end
