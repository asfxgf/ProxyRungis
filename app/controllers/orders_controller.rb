class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def edit
    @order = Order.find(params[:id])
    if @order.save
      redirect_to orders_path
    else
      render :edit
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.update(params[:order])
    redirect_to orders_path
  end
end