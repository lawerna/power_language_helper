class CommentsController < ApplicationController
  before_action :set_homework

  def create
    @homework.comments.create! params.expect(comment: [ :content ])
    redirect_to @homework
  end

  private

  def set_homework
    @homework = Homework.find(params[:homework_id])
  end
end
