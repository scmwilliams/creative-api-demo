json.array!(@ad_units) do |ad_unit|
  json.extract! ad_unit, :id, :no_api, :approved, :name, :asset_group_id, :type, :insight, :screen, :asset_id, :pixel_tracker, :cta_id
  json.url ad_unit_url(ad_unit, format: :json)
end
