class Bar97sController < ApplicationController
  before_action :set_bar97, only: %i[ show edit update destroy ]

  # GET /bar97s or /bar97s.json
  def index
    @bar97s = Bar97.all
  end

  # GET /bar97s/1 or /bar97s/1.json
  def show
  end

  # GET /bar97s/new
  def new
    @bar97 = Bar97.new
  end

  # GET /bar97s/1/edit
  def edit
  end

  # POST /bar97s or /bar97s.json
  def create
    @bar97 = Bar97.new(bar97_params)

    respond_to do |format|
      if @bar97.save
        format.html { redirect_to @bar97, notice: "Bar97 was successfully created." }
        format.json { render :show, status: :created, location: @bar97 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar97.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar97s/1 or /bar97s/1.json
  def update
    respond_to do |format|
      if @bar97.update(bar97_params)
        format.html { redirect_to @bar97, notice: "Bar97 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar97 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar97.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar97s/1 or /bar97s/1.json
  def destroy
    @bar97.destroy
    respond_to do |format|
      format.html { redirect_to bar97s_url, notice: "Bar97 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar97
      @bar97 = Bar97.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar97_params
      params.require(:bar97).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
