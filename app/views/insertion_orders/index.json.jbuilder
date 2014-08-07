json.array!(@insertion_orders) do |insertion_order|
  json.extract! insertion_order, :id, :brand_id, :name, :io_number, :start_date, :end_date
  json.url insertion_order_url(insertion_order, format: :json)
end
