json.extract! player, :id, :team_id, :name, :bio, :playtime, :kd, :created_at, :updated_at
json.url player_url(player, format: :json)
