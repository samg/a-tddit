class Baz78sController < ApplicationController
  before_action :set_baz78, only: %i[ show edit update destroy ]

  # GET /baz78s or /baz78s.json
  def index
    @baz78s = Baz78.all
  end

  # GET /baz78s/1 or /baz78s/1.json
  def show
  end

  # GET /baz78s/new
  def new
    @baz78 = Baz78.new
  end

  # GET /baz78s/1/edit
  def edit
  end

  # POST /baz78s or /baz78s.json
  def create
    @baz78 = Baz78.new(baz78_params)

    respond_to do |format|
      if @baz78.save
        format.html { redirect_to @baz78, notice: "Baz78 was successfully created." }
        format.json { render :show, status: :created, location: @baz78 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz78.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz78s/1 or /baz78s/1.json
  def update
    respond_to do |format|
      if @baz78.update(baz78_params)
        format.html { redirect_to @baz78, notice: "Baz78 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz78 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz78.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz78s/1 or /baz78s/1.json
  def destroy
    @baz78.destroy
    respond_to do |format|
      format.html { redirect_to baz78s_url, notice: "Baz78 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz78
      @baz78 = Baz78.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz78_params
      params.require(:baz78).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
