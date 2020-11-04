class AssignmentsController < ApplicationController
    def index
        @assignments = Assignment.order(updated_at: :desc)
        render json: @assignments
    end
    
    def create
        @assignment = Assignment.create(assignment_params)
        render json: @assignment
    end
    
    def show
        @assignment = Assignment.find(params[:id])
        render json: @assignment
    end

    def update
        @assignment = Assignment.find(params[:id])
        @assignment.update(assignment_params)
        render json: @assignment
    end

    def destroy
        @assignment = Assignment.find(params[:id])
        @assignment.destroy
        render json: @assignment
    end

    
    private

    def assignment_params
        params.permit(:task, :course, :grade)
    end
end
