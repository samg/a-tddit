class Bar57sController < ApplicationController
  before_action :set_bar57, only: %i[ show edit update destroy ]

  # GET /bar57s or /bar57s.json
  def index
    @bar57s = Bar57.all
  end

  # GET /bar57s/1 or /bar57s/1.json
  def show
  end

  # GET /bar57s/new
  def new
    @bar57 = Bar57.new
  end

  # GET /bar57s/1/edit
  def edit
  end

  # POST /bar57s or /bar57s.json
  def create
    @bar57 = Bar57.new(bar57_params)

    respond_to do |format|
      if @bar57.save
        format.html { redirect_to @bar57, notice: "Bar57 was successfully created." }
        format.json { render :show, status: :created, location: @bar57 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar57.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar57s/1 or /bar57s/1.json
  def update
    respond_to do |format|
      if @bar57.update(bar57_params)
        format.html { redirect_to @bar57, notice: "Bar57 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar57 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar57.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar57s/1 or /bar57s/1.json
  def destroy
    @bar57.destroy
    respond_to do |format|
      format.html { redirect_to bar57s_url, notice: "Bar57 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar57
      @bar57 = Bar57.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar57_params
      params.require(:bar57).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
