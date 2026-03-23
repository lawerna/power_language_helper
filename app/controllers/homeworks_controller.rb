class HomeworksController < ApplicationController
  before_action :set_lesson, except: %i[ index ]

  def index
    @homeworks = Homework.all
  end

  def create
    @lesson.homeworks.create! params.expect(homework: [ :title, :content, :description ])
    redirect_to @lesson
  end

  def show
    @homework = Homework.find(params[:id])
  end

  private

  def set_lesson
    lesson_id = params[:lesson_id].present? ? params[:lesson_id] : Homework.find(params[:id])&.lesson_id
    @lesson = Lesson.find(lesson_id)
  end
end
