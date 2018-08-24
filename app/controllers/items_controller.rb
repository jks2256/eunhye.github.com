class ItemsController < ApplicationController
    def create
      if user_signed_in?  
        item=Item.new
        item.title=params[:item]
        item.content=params[:content]
        item.price=params[:price]
        #어떤 노트에 속하게 시킬래..
        user=User.find(current_user.id)
        item.user_id=current_user.id
        item.save
        #redirect_to "/notes/#{comment.note.id}"
        #c_id=item.user.id
        #redirect_to "/log/index"
        redirect_to "/front_pages/home"
      else
          redirect_to "/front_pages/not_login"
      end
    end
    
end
