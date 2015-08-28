## Button

### HTTP Client Request Testing</h3>

This is a dummy site created by Mysterious Trousers (hosted on Heroku) so that anyone can
test any HTTP request frameworks they are working on.
    
#### Formats

The site will respond to HTML, XML and JSON requests.
    
#### Resources

There are two resources: **stitches** and **needes**. The
needles resources needs http basic authentication. (username: "username", password: "password").
    
    create_table "needles", :force => true do |t|
      t.integer  "sharpness"
      t.integer  "length"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
    
    create_table "stitches", :force => true do |t|
      t.string   "thread_color"
      t.string   "length"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  
Here are the REST routes you can hit:
    
         Prefix Verb   URI Pattern                  Controller#Action
         
       stitches GET    /stitches(.:format)          stitches#index
                POST   /stitches(.:format)          stitches#create
     new_stitch GET    /stitches/new(.:format)      stitches#new
    edit_stitch GET    /stitches/:id/edit(.:format) stitches#edit
         stitch GET    /stitches/:id(.:format)      stitches#show
                PATCH  /stitches/:id(.:format)      stitches#update
                PUT    /stitches/:id(.:format)      stitches#update
                DELETE /stitches/:id(.:format)      stitches#destroy
        needles GET    /needles(.:format)           needles#index
                POST   /needles(.:format)           needles#create
     new_needle GET    /needles/new(.:format)       needles#new
    edit_needle GET    /needles/:id/edit(.:format)  needles#edit
         needle GET    /needles/:id(.:format)       needles#show
                PATCH  /needles/:id(.:format)       needles#update
                PUT    /needles/:id(.:format)       needles#update
                DELETE /needles/:id(.:format)       needles#destroy
  
Copyright &copy; 2011 Mysterious Trousers, LLC
