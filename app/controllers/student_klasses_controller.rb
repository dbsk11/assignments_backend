class StudentKlassesController < ApplicationController
    belongs_to :student
    belongs_to :teacher_klasses
end
