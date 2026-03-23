class HomeworksController < ApplicationController
  before_action :set_lesson#, only: %i[ show edit update destroy ]

  def create
    @lesson.homeworks.create! params.expect(homework: [ :title, :content, :description ])
    redirect_to @lesson
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end
end
