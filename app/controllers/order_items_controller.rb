class OrderItemsController < ApplicationController
    def new
        @order = Order.new
        @orders = current_user.orders.active.order('orders.created_at DESC')
        @order_item = OrderItem.new
        @items = Item.all
    end

    def index
     @items = Item.all
    end

    def create
        @items = Item.where(id: params[:items])    
        if @items.present?    
            @order = Order.new(user_id: current_user.id)
            @order.status = true
            @order.save
            @items.each do |item|
            @order_item = OrderItem.new(item_id: item.id, order_id: @order.id)
            @order_item.save
            end
            redirect_to '/order_items/new', notice: "order created successfully"
        else  
            redirect_to '/order_items/new', alert: "please select items"
        end 
    end

    def destroy
        @order = Order.find(params[:id])
        @order.status = false
        if @order.save
            redirect_to request.referrer, notice: "order deletded successfully"
        end 
    end
end
