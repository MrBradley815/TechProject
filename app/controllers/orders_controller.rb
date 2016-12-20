class OrdersController < ApplicationController
    before_action :require_admin
    before_action :require_login
    before_action :require_correct_user
    def index

    end
    def new

    end
    def create

    end
    def show
        @order = Order.find(params[:id])
    end
    def edit

    end
    def update

    end
    def destroy

    end
end
