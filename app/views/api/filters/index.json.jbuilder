@filters.each do |filter|
  filter.update_attribute(:photoUrl, "https://dannydash-seeds.s3-us-west-1.amazonaws.com/#{filter.filter_title}.svg")
    json.set! filter.id do
        json.extract! filter, :id, :filter_title, :photoUrl
    end
end