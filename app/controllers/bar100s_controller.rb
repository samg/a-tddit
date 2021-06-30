class Bar100sController < ApplicationController
  before_action :set_bar100, only: %i[ show edit update destroy ]

  # GET /bar100s or /bar100s.json
  def index
    @bar100s = Bar100.all
  end

  # GET /bar100s/1 or /bar100s/1.json
  def show
  end

  # GET /bar100s/new
  def new
    @bar100 = Bar100.new
  end

  # GET /bar100s/1/edit
  def edit
  end

  # POST /bar100s or /bar100s.json
  def create
    @bar100 = Bar100.new(bar100_params)

    respond_to do |format|
      if @bar100.save
        format.html { redirect_to @bar100, notice: "Bar100 was successfully created." }
        format.json { render :show, status: :created, location: @bar100 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar100.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar100s/1 or /bar100s/1.json
  def update
    respond_to do |format|
      if @bar100.update(bar100_params)
        format.html { redirect_to @bar100, notice: "Bar100 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar100 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar100.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar100s/1 or /bar100s/1.json
  def destroy
    @bar100.destroy
    respond_to do |format|
      format.html { redirect_to bar100s_url, notice: "Bar100 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar100
      @bar100 = Bar100.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar100_params
      params.require(:bar100).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
