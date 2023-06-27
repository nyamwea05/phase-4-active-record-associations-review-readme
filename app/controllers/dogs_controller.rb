class DogsController < ApplicationController
    def create
        dog = Dog.create(name: "Fezzik")
        if dog.valid?
          render json: dog, status: :created
        else
          render json: { errors: dog.errors.full_messages }, status: :unprocessable_entity
        end
      end
end
