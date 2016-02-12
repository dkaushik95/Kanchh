class OrdersController < ApplicationController
	def destroy
  		current_order.destroy
  		session[:order_id] = nil
  		redirect_to root_path, :notice => "Basket emptied successfully."
	end
	
	def checkout
    @order = Shoppe::Order.find(current_order.id)
    if request.patch?
      redirect_to checkout_payment_path
    end
  end
  def payment
    if request.post?
      redirect_to checkout_confirmation_path
    end
  end
  def confirmation
    if request.post?
      current_order.confirm!
      session[:order_id] = nil
      redirect_to root_path, :notice => "Order has been placed successfully!"
    end
  end


end
