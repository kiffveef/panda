json.extract! player, :id, :name, :last_login, :registration_date, :suspension, :created_at, :updated_at
json.url player_url(player, format: :json)
