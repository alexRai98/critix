class CompaniesController < ApplicationController
    def index
        company = Company.all
        render json:company        
    end
    def show
        company = Company.find(params[:id])
        render json:company
    end
end
