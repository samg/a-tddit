class Baz94sController < ApplicationController
  before_action :set_baz94, only: %i[ show edit update destroy ]

  # GET /baz94s or /baz94s.json
  def index
    @baz94s = Baz94.all
  end

  # GET /baz94s/1 or /baz94s/1.json
  def show
  end

  # GET /baz94s/new
  def new
    @baz94 = Baz94.new
  end

  # GET /baz94s/1/edit
  def edit
  end

  # POST /baz94s or /baz94s.json
  def create
    @baz94 = Baz94.new(baz94_params)

    respond_to do |format|
      if @baz94.save
        format.html { redirect_to @baz94, notice: "Baz94 was successfully created." }
        format.json { render :show, status: :created, location: @baz94 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz94.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz94s/1 or /baz94s/1.json
  def update
    respond_to do |format|
      if @baz94.update(baz94_params)
        format.html { redirect_to @baz94, notice: "Baz94 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz94 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz94.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz94s/1 or /baz94s/1.json
  def destroy
    @baz94.destroy
    respond_to do |format|
      format.html { redirect_to baz94s_url, notice: "Baz94 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz94
      @baz94 = Baz94.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz94_params
      params.require(:baz94).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
