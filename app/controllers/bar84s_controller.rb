class Bar84sController < ApplicationController
  before_action :set_bar84, only: %i[ show edit update destroy ]

  # GET /bar84s or /bar84s.json
  def index
    @bar84s = Bar84.all
  end

  # GET /bar84s/1 or /bar84s/1.json
  def show
  end

  # GET /bar84s/new
  def new
    @bar84 = Bar84.new
  end

  # GET /bar84s/1/edit
  def edit
  end

  # POST /bar84s or /bar84s.json
  def create
    @bar84 = Bar84.new(bar84_params)

    respond_to do |format|
      if @bar84.save
        format.html { redirect_to @bar84, notice: "Bar84 was successfully created." }
        format.json { render :show, status: :created, location: @bar84 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar84.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar84s/1 or /bar84s/1.json
  def update
    respond_to do |format|
      if @bar84.update(bar84_params)
        format.html { redirect_to @bar84, notice: "Bar84 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar84 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar84.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar84s/1 or /bar84s/1.json
  def destroy
    @bar84.destroy
    respond_to do |format|
      format.html { redirect_to bar84s_url, notice: "Bar84 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar84
      @bar84 = Bar84.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar84_params
      params.require(:bar84).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
