class TeacherKlassesController < ApplicationController
    def index
        @teacherklasses = TeacherKlass.all
        render json: @teacherklasses
    end
end
