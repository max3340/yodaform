class LessonsController < ApplicationController

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def index
    @lessons = Lesson.all
  end

  def create
    @lesson = Lesson.new(lesson_params)


    if @lesson.save
      redirect_to user_root_path
    else
      render :new
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to formations_path
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    redirect_to lesson_path(@lesson)
  end

  def new
    @lesson = Lesson.new
    @formation_id = params[:formation_id]
  end

  private

  def lesson_params
  params.require(:lesson).permit(:name, :cover_photo, :formation_id)
end
end
