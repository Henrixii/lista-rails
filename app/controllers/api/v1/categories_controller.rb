class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories, status: :ok
    end

    def show
        categories = Category.find([params[:id]])
        render json: categories, status: :ok
    rescue StandardError
        head(:not_found)
    end

    def create
        categories = Category.new(categories_params)
        categories.save!
        render json: categories, status: :created
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def update
        categories = Category.find([params[:id]])
        categories.update!(categories_params)
        render json: categories, status: :ok
    rescue StandardError => e
        render json: e, status: :unprocessable_entity
    end

    def delete
        categories = Category.find(params[:id])
        categories.destroy!
        render json: {message: "categoria #{categories.name} deletada com sucesso"}, status: :ok
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def category_filter
        products = Product.find(params[:id])
        categories = products.categories
        render json: categories
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    private

    def categories_params
        params.require(:categories).permit(:name)
    end
end
