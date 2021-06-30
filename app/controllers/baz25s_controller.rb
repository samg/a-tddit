class Baz25sController < ApplicationController
  before_action :set_baz25, only: %i[ show edit update destroy ]

  # GET /baz25s or /baz25s.json
  def index
    @baz25s = Baz25.all
  end

  # GET /baz25s/1 or /baz25s/1.json
  def show
  end

  # GET /baz25s/new
  def new
    @baz25 = Baz25.new
  end

  # GET /baz25s/1/edit
  def edit
  end

  # POST /baz25s or /baz25s.json
  def create
    @baz25 = Baz25.new(baz25_params)

    respond_to do |format|
      if @baz25.save
        format.html { redirect_to @baz25, notice: "Baz25 was successfully created." }
        format.json { render :show, status: :created, location: @baz25 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz25.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz25s/1 or /baz25s/1.json
  def update
    respond_to do |format|
      if @baz25.update(baz25_params)
        format.html { redirect_to @baz25, notice: "Baz25 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz25 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz25.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz25s/1 or /baz25s/1.json
  def destroy
    @baz25.destroy
    respond_to do |format|
      format.html { redirect_to baz25s_url, notice: "Baz25 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz25
      @baz25 = Baz25.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz25_params
      params.require(:baz25).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
