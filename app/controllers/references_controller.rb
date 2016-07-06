class ReferencesController < ApplicationController
  layout 'reference_editer'
  before_action :set_reference, only: [:show, :edit, :update, :destroy]

  def index
    @references_i = Reference.where(category: 'Initialize')
    @references_g = Reference.where(category: 'GPIO Control')
    @references_o = Reference.where(category: 'Other')
    render layout: 'references'
  end

  def show
    render layout: 'references'
  end

  def new
    @reference = Reference.new
  end

  def create
    @reference = Reference.new(reference_params)
    if @reference.save
      redirect_to @reference, notice: 'Create succeed!'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @reference.update(reference_params)
      redirect_to @reference, notice: 'Edit succeed!'
    else
      render 'edit'
    end
  end

  def destroy
    @reference.destroy
    redirect_to references_path, notice: 'Delete succeed!'
  end

  private

  def reference_params
    params.require(:reference).permit(:func, :usage_code, :usage_description, :category)
  end

  def set_reference
    @reference = Reference.find(params[:id])
  end
end
