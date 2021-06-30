class Bar60sController < ApplicationController
  before_action :set_bar60, only: %i[ show edit update destroy ]

  # GET /bar60s or /bar60s.json
  def index
    @bar60s = Bar60.all
  end

  # GET /bar60s/1 or /bar60s/1.json
  def show
  end

  # GET /bar60s/new
  def new
    @bar60 = Bar60.new
  end

  # GET /bar60s/1/edit
  def edit
  end

  # POST /bar60s or /bar60s.json
  def create
    @bar60 = Bar60.new(bar60_params)

    respond_to do |format|
      if @bar60.save
        format.html { redirect_to @bar60, notice: "Bar60 was successfully created." }
        format.json { render :show, status: :created, location: @bar60 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar60.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar60s/1 or /bar60s/1.json
  def update
    respond_to do |format|
      if @bar60.update(bar60_params)
        format.html { redirect_to @bar60, notice: "Bar60 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar60 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar60.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar60s/1 or /bar60s/1.json
  def destroy
    @bar60.destroy
    respond_to do |format|
      format.html { redirect_to bar60s_url, notice: "Bar60 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar60
      @bar60 = Bar60.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar60_params
      params.require(:bar60).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
