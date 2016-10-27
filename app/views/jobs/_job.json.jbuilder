json.extract! job, :id, :name, :position, :dates, :location, :description, :created_at, :updated_at
json.url job_url(job, format: :json)