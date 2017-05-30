json.extract! member, :id, :name, :email, :pass, :phone, :created_at, :updated_at
json.url member_url(member, format: :json)
