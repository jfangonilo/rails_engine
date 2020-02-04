module Api
  module V1
    class CustomersController < ApplicationController
      def index
        customers = Customer.search_all(params)
        render json: CustomerSerializer.new(customers)
      end

      def show
        customer = Customer.search(params)
        render json: CustomerSerializer.new(customer)
      end
    end
  end
end
