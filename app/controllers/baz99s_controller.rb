class Baz99sController < ApplicationController
  before_action :set_baz99, only: %i[ show edit update destroy ]

  # GET /baz99s or /baz99s.json
  def index
    @baz99s = Baz99.all
  end

  # GET /baz99s/1 or /baz99s/1.json
  def show
  end

  # GET /baz99s/new
  def new
    @baz99 = Baz99.new
  end

  # GET /baz99s/1/edit
  def edit
  end

  # POST /baz99s or /baz99s.json
  def create
    @baz99 = Baz99.new(baz99_params)

    respond_to do |format|
      if @baz99.save
        format.html { redirect_to @baz99, notice: "Baz99 was successfully created." }
        format.json { render :show, status: :created, location: @baz99 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baz99.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baz99s/1 or /baz99s/1.json
  def update
    respond_to do |format|
      if @baz99.update(baz99_params)
        format.html { redirect_to @baz99, notice: "Baz99 was successfully updated." }
        format.json { render :show, status: :ok, location: @baz99 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baz99.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baz99s/1 or /baz99s/1.json
  def destroy
    @baz99.destroy
    respond_to do |format|
      format.html { redirect_to baz99s_url, notice: "Baz99 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baz99
      @baz99 = Baz99.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baz99_params
      params.require(:baz99).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
