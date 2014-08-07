json.array!(@assets) do |asset|
  json.extract! asset, :id, :asset_group_id, :asset_type, :job_id, :screen, :background, :file, :flexible, :scalable
  json.url asset_url(asset, format: :json)
end
