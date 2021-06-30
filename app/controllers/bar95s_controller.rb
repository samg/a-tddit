class Bar95sController < ApplicationController
  before_action :set_bar95, only: %i[ show edit update destroy ]

  # GET /bar95s or /bar95s.json
  def index
    @bar95s = Bar95.all
  end

  # GET /bar95s/1 or /bar95s/1.json
  def show
  end

  # GET /bar95s/new
  def new
    @bar95 = Bar95.new
  end

  # GET /bar95s/1/edit
  def edit
  end

  # POST /bar95s or /bar95s.json
  def create
    @bar95 = Bar95.new(bar95_params)

    respond_to do |format|
      if @bar95.save
        format.html { redirect_to @bar95, notice: "Bar95 was successfully created." }
        format.json { render :show, status: :created, location: @bar95 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar95.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar95s/1 or /bar95s/1.json
  def update
    respond_to do |format|
      if @bar95.update(bar95_params)
        format.html { redirect_to @bar95, notice: "Bar95 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar95 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar95.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar95s/1 or /bar95s/1.json
  def destroy
    @bar95.destroy
    respond_to do |format|
      format.html { redirect_to bar95s_url, notice: "Bar95 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar95
      @bar95 = Bar95.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar95_params
      params.require(:bar95).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
