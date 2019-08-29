json.extract! subject, :id, :name, :code, :price, :cllass_id, :created_at, :updated_at
json.url subject_url(subject, format: :json)
