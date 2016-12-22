class OrdersController < ApplicationController
    # before_action :require_admin
    # before_action :require_login
    # before_action :require_correct_user
    def index

    end
    def new
        @distance = Order.find(1).distance
        @oneHour = current_user.company.courier.rates.find_by(normHour:1)
        @twoHour = current_user.company.courier.rates.find_by(normHour:2)
        @fourHour = current_user.company.courier.rates.find_by(normHour:4)
        @sixHour = current_user.company.courier.rates.find_by(normHour:6)
        @eightHour = current_user.company.courier.rates.find_by(normHour:8)
        @twelveHour = current_user.company.courier.rates.find_by(normHour:12)
        @oneTotal = (@distance - 1) * @oneHour.normPerMile + @oneHour.normFirst
        @twoTotal = (@distance - 1) * @twoHour.normPerMile + @twoHour.normFirst
        @fourTotal = (@distance - 1) * @fourHour.normPerMile + @fourHour.normFirst
        @sixTotal = (@distance - 1) * @sixHour.normPerMile + @sixHour.normFirst
        @eightTotal = (@distance - 1) * @eightHour.normPerMile + @eightHour.normFirst
        @twelveTotal = (@distance - 1) * @twelveHour.normPerMile + @twelveHour.normFirst
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
