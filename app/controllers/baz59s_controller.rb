class Baz59sController < ApplicationController
  before_action :set_baz59, only: %i[ show edit update destroy ]

  # GET /baz59s or /baz59s.json
  def index
    @baz59s = Baz59.all
  end

  # GET /baz59s/1 or /baz59s/1.json
  def show
  end

  # GET /baz59s/new
  def new
    @baz59 = Baz59.new
  end

  # GET /baz59s/1/edit
  def edit
  end

  # POST /baz59s or /baz59s.json
  def create
    @baz59 = Baz59.new(baz59_params)

    respond_to do |format|
      if @baz59.save
        format.html { redirect_to @baz59, notice: "Baz59 was successfully created." }
        format.json { render :show, status: :created, location: @baz59 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz59.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz59s/1 or /baz59s/1.json
  def update
    respond_to do |format|
      if @baz59.update(baz59_params)
        format.html { redirect_to @baz59, notice: "Baz59 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz59 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz59.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz59s/1 or /baz59s/1.json
  def destroy
    @baz59.destroy
    respond_to do |format|
      format.html { redirect_to baz59s_url, notice: "Baz59 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz59
      @baz59 = Baz59.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz59_params
      params.require(:baz59).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
