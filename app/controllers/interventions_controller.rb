class InterventionsController < ApplicationController
  def index
    @interventions = current_user.interventions
    @intervention = Intervention.new # To create a new instance for the form
  end

  def create
    @intervention = current_user.interventions.build(intervention_params)

    if @intervention.save
      redirect_to @intervention, notice: 'Intervention was successfully created.'
    else
      render :new
    end
  end
end
