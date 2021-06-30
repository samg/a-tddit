class Baz44sController < ApplicationController
  before_action :set_baz44, only: %i[ show edit update destroy ]

  # GET /baz44s or /baz44s.json
  def index
    @baz44s = Baz44.all
  end

  # GET /baz44s/1 or /baz44s/1.json
  def show
  end

  # GET /baz44s/new
  def new
    @baz44 = Baz44.new
  end

  # GET /baz44s/1/edit
  def edit
  end

  # POST /baz44s or /baz44s.json
  def create
    @baz44 = Baz44.new(baz44_params)

    respond_to do |format|
      if @baz44.save
        format.html { redirect_to @baz44, notice: "Baz44 was successfully created." }
        format.json { render :show, status: :created, location: @baz44 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz44.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz44s/1 or /baz44s/1.json
  def update
    respond_to do |format|
      if @baz44.update(baz44_params)
        format.html { redirect_to @baz44, notice: "Baz44 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz44 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz44.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz44s/1 or /baz44s/1.json
  def destroy
    @baz44.destroy
    respond_to do |format|
      format.html { redirect_to baz44s_url, notice: "Baz44 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz44
      @baz44 = Baz44.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz44_params
      params.require(:baz44).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
