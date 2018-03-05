class Application
  
  def call(env)
    resp = Rack::Response.new
    req  = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split(/items/).last
      
      if Items.all.any{|item| item.name==item_name}
        item = Items.all.find{|item| item.name==item_name}
        resp.status = 200
        resp.write(item.price)
      else
        resp.status = 400
        resp.write("Item not found")
      end
      
    else
      resp.status = 404
    end
    
    resp.finish
  end
  
end