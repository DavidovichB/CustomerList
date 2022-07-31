class CustomersController < ApplicationController
  before_action :set_customer, only: %i[update show destroy edit]

  def create
    customer = Customer.create(customer_params)
    redirect_to customer_path(customer)
  end

  def update
    @customer.update(customer_params)

    redirect_to '/customers'
  end

  def destroy
    @customer.destroy

    redirect_to '/customers'
  end

  def show; end

  def index 
    @customers = Customer.active
  end

  def new
    @customer = Customer.new
  end

  def edit; end

  def black
    @customers = Customer.blocked
  end

  private

  def customer_params
    params.require(:customer).permit(:body, :phone_number, :name, :blacklisted)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end

end
