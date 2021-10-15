class Api::CartItemsController < ApplicationController 
    def index
        @user = User.find(params[:user_id])
        @cart_items = @user.cart_items
        render json: @cart_items
    end
end
