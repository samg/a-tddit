class Bar49sController < ApplicationController
  before_action :set_bar49, only: %i[ show edit update destroy ]

  # GET /bar49s or /bar49s.json
  def index
    @bar49s = Bar49.all
  end

  # GET /bar49s/1 or /bar49s/1.json
  def show
  end

  # GET /bar49s/new
  def new
    @bar49 = Bar49.new
  end

  # GET /bar49s/1/edit
  def edit
  end

  # POST /bar49s or /bar49s.json
  def create
    @bar49 = Bar49.new(bar49_params)

    respond_to do |format|
      if @bar49.save
        format.html { redirect_to @bar49, notice: "Bar49 was successfully created." }
        format.json { render :show, status: :created, location: @bar49 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar49.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar49s/1 or /bar49s/1.json
  def update
    respond_to do |format|
      if @bar49.update(bar49_params)
        format.html { redirect_to @bar49, notice: "Bar49 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar49 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar49.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar49s/1 or /bar49s/1.json
  def destroy
    @bar49.destroy
    respond_to do |format|
      format.html { redirect_to bar49s_url, notice: "Bar49 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar49
      @bar49 = Bar49.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar49_params
      params.require(:bar49).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
