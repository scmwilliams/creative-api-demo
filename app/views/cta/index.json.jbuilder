json.array!(@cta) do |ctum|
  json.extract! ctum, :id, :name, :url, :new_window, :full_screen, :ad_unit_id, :pixel_width, :pixel_height, :right_offset, :top_offset
  json.url ctum_url(ctum, format: :json)
end
