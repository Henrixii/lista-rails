class Api::V1::ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products, status: :ok
    end

    def show
        products = Product.find([params[:id]])
        render json: products, status: :ok
    rescue StandardError
        head(:not_found)
    end

    def create
        products = Product.new(products_params)
        products.save!
        render json: products, status: :created
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def update
        products = Product.find([params[:id]])
        products.update!(products_params)
        render json: products, status: :ok
    rescue StandardError => e
        render json: e, status: :unprocessable_entity
    end

    def delete
        products = Product.find(params[:id])
        products.destroy!
        render json: {message: "prato #{products.name} deletado com sucesso"}, status: :ok
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    private

    def products_params
        params.require(:products).permit(:name, :description, :price, :category_id)
    end
end
