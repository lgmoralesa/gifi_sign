class ResumeesController < ApplicationController
  def index
     @resumees = Resumee.all
  end

  def new
     @resumee = Resumee.new
  end

  def create
     @resumee = Resumee.new(resumee_params)
     if @resumee.save
        redirect_to resumees_path, notice: "The resume #{@resumee.name} has been uploaded."
     else
        render "new"
     end

  end

  def destroy
     @resumee = Resumee.find(params[:id])
     @resumee.destroy
     redirect_to resumees_path, notice:  "The resume #{@resumee.name} has been deleted."
  end

  private
     def resumee_params
     params.require(:resumee).permit(:name, :attachment)
  end
end
