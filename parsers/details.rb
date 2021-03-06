# initialize nokogiri
nokogiri = Nokogiri.HTML(content)

# get the seller username
seller = nokogiri.at_css('[title="oemappleparts87"]')&.text

# get the seller's feedback
# feedback_item = nokogiri.at_css('div.seller-persona span.no-wrap')[2]&.text
# feedback = feedback_item['2'] unless feedback_item.nil?

# save it into outputs
outputs << {
    _collection: 'products',
    title: page['vars']['title'],
    price: page['vars']['price'],
    seller: seller
}