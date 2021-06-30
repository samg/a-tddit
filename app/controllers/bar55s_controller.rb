class Bar55sController < ApplicationController
  before_action :set_bar55, only: %i[ show edit update destroy ]

  # GET /bar55s or /bar55s.json
  def index
    @bar55s = Bar55.all
  end

  # GET /bar55s/1 or /bar55s/1.json
  def show
  end

  # GET /bar55s/new
  def new
    @bar55 = Bar55.new
  end

  # GET /bar55s/1/edit
  def edit
  end

  # POST /bar55s or /bar55s.json
  def create
    @bar55 = Bar55.new(bar55_params)

    respond_to do |format|
      if @bar55.save
        format.html { redirect_to @bar55, notice: "Bar55 was successfully created." }
        format.json { render :show, status: :created, location: @bar55 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar55.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar55s/1 or /bar55s/1.json
  def update
    respond_to do |format|
      if @bar55.update(bar55_params)
        format.html { redirect_to @bar55, notice: "Bar55 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar55 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar55.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar55s/1 or /bar55s/1.json
  def destroy
    @bar55.destroy
    respond_to do |format|
      format.html { redirect_to bar55s_url, notice: "Bar55 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar55
      @bar55 = Bar55.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar55_params
      params.require(:bar55).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
