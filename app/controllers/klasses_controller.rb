class KlassesController < ApplicationController
    has_many :teacher_klasses
    has_many :teachers, through: :teacher_klasses
end
