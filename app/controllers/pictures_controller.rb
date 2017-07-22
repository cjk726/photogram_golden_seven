class PicturesController < ApplicationController

      def show
        
        @pic = Photo.find(params["the_id"])
        @datetime_now = DateTime.now # - @pic.created_at
        
        render("show.html.erb")
      end
      
      
      
      
      def index
          
        @pics = Photo.all

        render("index.html.erb")
      end
      
      
      
      
      def new_form

        render("new_form.html.erb")
      end
      
      
      def create_row
          # The Parameters: {"the_source"=>"hi", "the_caption"=>"there"}
        
        p = Photo.new
        p.source = params["the_source"]
        p.caption = params["the_caption"]
        p.save

        @pic_count = Photo.count

        render("create_row.html.erb")
      end


      def edit_form

        render("edit_form.html.erb")
      end


      def update_row
          
          render("update_row.html.erb")
      end


      def destroy_row
        toast_pic = Photo.find(params["toast_id"])
        toast_pic.destroy
        
          redirect_to("/photos")
       #  render("destroy_row.html.erb")
      end

end