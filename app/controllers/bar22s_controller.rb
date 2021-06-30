class Bar22sController < ApplicationController
  before_action :set_bar22, only: %i[ show edit update destroy ]

  # GET /bar22s or /bar22s.json
  def index
    @bar22s = Bar22.all
  end

  # GET /bar22s/1 or /bar22s/1.json
  def show
  end

  # GET /bar22s/new
  def new
    @bar22 = Bar22.new
  end

  # GET /bar22s/1/edit
  def edit
  end

  # POST /bar22s or /bar22s.json
  def create
    @bar22 = Bar22.new(bar22_params)

    respond_to do |format|
      if @bar22.save
        format.html { redirect_to @bar22, notice: "Bar22 was successfully created." }
        format.json { render :show, status: :created, location: @bar22 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar22.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar22s/1 or /bar22s/1.json
  def update
    respond_to do |format|
      if @bar22.update(bar22_params)
        format.html { redirect_to @bar22, notice: "Bar22 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar22 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar22.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar22s/1 or /bar22s/1.json
  def destroy
    @bar22.destroy
    respond_to do |format|
      format.html { redirect_to bar22s_url, notice: "Bar22 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar22
      @bar22 = Bar22.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar22_params
      params.require(:bar22).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
