module Api
  class StaffingImpactsController < ApplicationController
    def index
      @staffing_impacts = ['foo', 'bar', 'baz'].map.with_index do |name, i|
        StaffingImpact.new(name: name, id: (i + 1))
      end
      render json: @staffing_impacts
    end
  end
end