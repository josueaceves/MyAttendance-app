json.array!(@choir_members) do |choir_member|
  json.extract! choir_member, :id, :first_name, :last_name, :voice, :side
  json.url choir_member_url(choir_member, format: :json)
end
