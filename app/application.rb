require 'pry'

class Application
  
  def call(env)
    resp = Rack::Response.new
    req  = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split(/items/).last
      
      binding.pry
      if Item.all.any?{|item| item.name==item_name}
        item = Item.all.find{|item| item.name==item_name}
        resp.status = 200
        resp.write("#{item.price}\n")
      else
        resp.status = 400
        resp.write("Item not found\n")
      end
      
    else
      resp.status = 404
      resp.write("Route not found\n")
    end
    
    resp.finish
  end
  
end