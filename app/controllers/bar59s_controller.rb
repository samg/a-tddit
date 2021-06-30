class Bar59sController < ApplicationController
  before_action :set_bar59, only: %i[ show edit update destroy ]

  # GET /bar59s or /bar59s.json
  def index
    @bar59s = Bar59.all
  end

  # GET /bar59s/1 or /bar59s/1.json
  def show
  end

  # GET /bar59s/new
  def new
    @bar59 = Bar59.new
  end

  # GET /bar59s/1/edit
  def edit
  end

  # POST /bar59s or /bar59s.json
  def create
    @bar59 = Bar59.new(bar59_params)

    respond_to do |format|
      if @bar59.save
        format.html { redirect_to @bar59, notice: "Bar59 was successfully created." }
        format.json { render :show, status: :created, location: @bar59 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar59.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar59s/1 or /bar59s/1.json
  def update
    respond_to do |format|
      if @bar59.update(bar59_params)
        format.html { redirect_to @bar59, notice: "Bar59 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar59 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar59.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar59s/1 or /bar59s/1.json
  def destroy
    @bar59.destroy
    respond_to do |format|
      format.html { redirect_to bar59s_url, notice: "Bar59 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar59
      @bar59 = Bar59.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar59_params
      params.require(:bar59).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
