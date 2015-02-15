json.array!(@quotations) do |quotation|
  json.extract! quotation, :id, :content, :source_url, :author, :user_id
  json.url quotation_url(quotation, format: :json)
end
