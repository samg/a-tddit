class Baz49sController < ApplicationController
  before_action :set_baz49, only: %i[ show edit update destroy ]

  # GET /baz49s or /baz49s.json
  def index
    @baz49s = Baz49.all
  end

  # GET /baz49s/1 or /baz49s/1.json
  def show
  end

  # GET /baz49s/new
  def new
    @baz49 = Baz49.new
  end

  # GET /baz49s/1/edit
  def edit
  end

  # POST /baz49s or /baz49s.json
  def create
    @baz49 = Baz49.new(baz49_params)

    respond_to do |format|
      if @baz49.save
        format.html { redirect_to @baz49, notice: "Baz49 was successfully created." }
        format.json { render :show, status: :created, location: @baz49 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz49.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz49s/1 or /baz49s/1.json
  def update
    respond_to do |format|
      if @baz49.update(baz49_params)
        format.html { redirect_to @baz49, notice: "Baz49 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz49 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz49.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz49s/1 or /baz49s/1.json
  def destroy
    @baz49.destroy
    respond_to do |format|
      format.html { redirect_to baz49s_url, notice: "Baz49 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz49
      @baz49 = Baz49.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz49_params
      params.require(:baz49).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
