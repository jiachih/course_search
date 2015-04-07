json.array!(@course001s) do |course001|
  json.extract! course001, :id, :name, :teacher, :classroom, :time, :credit
  json.url course001_url(course001, format: :json)
end
