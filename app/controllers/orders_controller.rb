class OrdersController < ApplicationController
    before_action :require_admin
    before_action :require_login
    before_action :require_correct_user
    def index

    end
    def new
        @company = Company.find(current_user.company.id)
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
    def store_order
        session[:pick_up] = pu_params
        session[:deliver] = del_params
        redirect_to '/orders/new'
    end

    private
        def pu_params
            params.require(:pick_up).permit(:name, :first, :last, :phone, :street, :suite, :city, :state, :zip)
        end
        def del_params
            params.require(:delivery).permit(:name, :first, :last, :phone, :street, :suite, :city, :state, :zip)
        end
end
