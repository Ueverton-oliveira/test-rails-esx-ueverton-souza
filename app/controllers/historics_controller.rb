class HistoricsController < ApplicationController
  def index
    @historics = Historic.order(created_at: :asc)
  end

  def destroy
    id = params[:id]
    Historic.destroy id
    flash[:success] = t('.flash.success')
    redirect_to historics_path
  end
end
