@orders.each do |order|
    json.set! order.id do
        json.extract! order, :id, :contents, :customer_id, :store, :total, :created_at
    end
end