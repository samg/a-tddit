class Bar96sController < ApplicationController
  before_action :set_bar96, only: %i[ show edit update destroy ]

  # GET /bar96s or /bar96s.json
  def index
    @bar96s = Bar96.all
  end

  # GET /bar96s/1 or /bar96s/1.json
  def show
  end

  # GET /bar96s/new
  def new
    @bar96 = Bar96.new
  end

  # GET /bar96s/1/edit
  def edit
  end

  # POST /bar96s or /bar96s.json
  def create
    @bar96 = Bar96.new(bar96_params)

    respond_to do |format|
      if @bar96.save
        format.html { redirect_to @bar96, notice: "Bar96 was successfully created." }
        format.json { render :show, status: :created, location: @bar96 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar96.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar96s/1 or /bar96s/1.json
  def update
    respond_to do |format|
      if @bar96.update(bar96_params)
        format.html { redirect_to @bar96, notice: "Bar96 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar96 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar96.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar96s/1 or /bar96s/1.json
  def destroy
    @bar96.destroy
    respond_to do |format|
      format.html { redirect_to bar96s_url, notice: "Bar96 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar96
      @bar96 = Bar96.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar96_params
      params.require(:bar96).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
