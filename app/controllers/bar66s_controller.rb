class Bar66sController < ApplicationController
  before_action :set_bar66, only: %i[ show edit update destroy ]

  # GET /bar66s or /bar66s.json
  def index
    @bar66s = Bar66.all
  end

  # GET /bar66s/1 or /bar66s/1.json
  def show
  end

  # GET /bar66s/new
  def new
    @bar66 = Bar66.new
  end

  # GET /bar66s/1/edit
  def edit
  end

  # POST /bar66s or /bar66s.json
  def create
    @bar66 = Bar66.new(bar66_params)

    respond_to do |format|
      if @bar66.save
        format.html { redirect_to @bar66, notice: "Bar66 was successfully created." }
        format.json { render :show, status: :created, location: @bar66 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar66.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar66s/1 or /bar66s/1.json
  def update
    respond_to do |format|
      if @bar66.update(bar66_params)
        format.html { redirect_to @bar66, notice: "Bar66 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar66 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar66.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar66s/1 or /bar66s/1.json
  def destroy
    @bar66.destroy
    respond_to do |format|
      format.html { redirect_to bar66s_url, notice: "Bar66 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar66
      @bar66 = Bar66.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar66_params
      params.require(:bar66).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
