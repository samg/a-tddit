class Baz4sController < ApplicationController
  before_action :set_baz4, only: %i[ show edit update destroy ]

  # GET /baz4s or /baz4s.json
  def index
    @baz4s = Baz4.all
  end

  # GET /baz4s/1 or /baz4s/1.json
  def show
  end

  # GET /baz4s/new
  def new
    @baz4 = Baz4.new
  end

  # GET /baz4s/1/edit
  def edit
  end

  # POST /baz4s or /baz4s.json
  def create
    @baz4 = Baz4.new(baz4_params)

    respond_to do |format|
      if @baz4.save
        format.html { redirect_to @baz4, notice: "Baz4 was successfully created." }
        format.json { render :show, status: :created, location: @baz4 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz4s/1 or /baz4s/1.json
  def update
    respond_to do |format|
      if @baz4.update(baz4_params)
        format.html { redirect_to @baz4, notice: "Baz4 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz4 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz4s/1 or /baz4s/1.json
  def destroy
    @baz4.destroy
    respond_to do |format|
      format.html { redirect_to baz4s_url, notice: "Baz4 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz4
      @baz4 = Baz4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz4_params
      params.require(:baz4).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
