class TipsController < ApplicationController
  before_action :set_tip, only: [:show, :edit, :update, :destroy]

  layout 'tip'

  # GET /tips
  def index
    @tips = Tip.all.order('updated_at DESC')
    render :layout => 'application'
  end

  # GET /tips/1
  def show
  end

  # GET /tips/new
  def new
    @tip = Tip.new
    @tip.occurred_at = Time.now
  end

  # GET /tips/1/edit
  #def edit
  #end

  # POST /tips
  def create
    @tip = Tip.new(tip_params)

    if @tip.geocoded?
      geocode_results = Geocoder.search([@tip.lat, @tip.long])
      if geocode_results && geocode_results.first
        @tip.location = geocode_results.first.formatted_address
      end
    end

    if @tip.save
      redirect_to done_tips_path
    else
      render action: 'new'
    end
  end
  #
  ## PATCH/PUT /tips/1
  #def update
  #  if @tip.update(tip_params)
  #    redirect_to @tip, notice: 'Tip was successfully updated.'
  #  else
  #    render action: 'edit'
  #  end
  #end

  # DELETE /tips/1
  #def destroy
  #  @tip.destroy
  #  redirect_to tips_url, notice: 'Tip was successfully destroyed.'
  #end

  def done

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip
      @tip = Tip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tip_params
      params[:tip].permit!
    end
end
