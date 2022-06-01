module Api::V1
  class HistoricsController < ApplicationController
    def index
      @historics = Historic.order(created_at: :asc)
    end
  end
end