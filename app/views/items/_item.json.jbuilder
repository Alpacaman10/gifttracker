json.extract! item, :id, :created_by, :image, :url, :description, :price,
              :received, :circle_id, :priority, :name, :created_at, :updated_at
json.url item_url(item, format: :json)
