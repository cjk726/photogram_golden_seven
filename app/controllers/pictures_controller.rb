class PicturesController < ApplicationController
    
      def new_form

        render("new_form.html.erb")
      end
      
      def create_row

        render("create_row.html.erb")
      end
end