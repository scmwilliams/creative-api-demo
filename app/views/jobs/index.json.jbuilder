json.array!(@jobs) do |job|
  json.extract! job, :id, :progress, :failed, :message
  json.url job_url(job, format: :json)
end
