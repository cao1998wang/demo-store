Spree::Wombat::Config.configure do |config|
   config.connection_id = "C714340208"
   config.connection_token = "9c4Aq657hnhQpZBuRV5_"
   config.push_objects = ["Spree::Order", "Spree::Product"]
   config.payload_builder = {
     "Spree::Order" => {:serializer => "Spree::Wombat::OrderSerializer", :root => "orders"},
     "Spree::Product" => {:serializer => "Spree::Wombat::ProductSerializer", :root => "products"},
   }
   config.push_url = "http://localhost:3000/api/v1/ecommerce/push"
 # config.enable_auto_push = true

end

