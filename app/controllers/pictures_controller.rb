class PicturesController < ApplicationController

      def show
        # Here are the Parameters: {"an_id" =>"5"}
        
        # the_id_number = params["an_id"]
        # pic = Photo.find(the_id_number).source
        
        # @the_source = pic.source
        # @the_caption = pic.caption     # could just be     
        
        @pic = Photo.find(params["the_id"])
        
        render("show.html.erb")
      end
      
      
      def index

        render("index.html.erb")
      end
      
      
      def new_form

        render("new_form.html.erb")
      end
      
      
      def create_row

        render("create_row.html.erb")
      end


      def edit_form

        render("edit_form.html.erb")
      end


      def update_row
          
          render("update_row.html.erb")
      end


      def destroy_row
          
          render("destroy_row.html.erb")
      end

end