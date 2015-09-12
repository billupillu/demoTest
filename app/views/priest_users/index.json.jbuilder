json.array!(@priest_users) do |priest_user|
  json.extract! priest_user, :id, :area_id, :circles, :name, :religion, :phone, :brief, :description, :icon
  json.url priest_user_url(priest_user, format: :json)
end
