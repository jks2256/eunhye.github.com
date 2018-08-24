class LogController < ApplicationController
  def index
    if user_signed_in?
      @user=User.find(current_user.id)
      @num=@user.id
      #@@item=Item.find(num)
      @item=Item.all
      
    else
     
      redirect_to "/users/sign_in"
    end
   
  end
  def plus
    #item_id=Item.find(params[item])
    item=params[:item]
    @user=User.find(current_user.id)
    #@user.item
  end
  
    
 
end
