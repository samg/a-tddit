class Bar99sController < ApplicationController
  before_action :set_bar99, only: %i[ show edit update destroy ]

  # GET /bar99s or /bar99s.json
  def index
    @bar99s = Bar99.all
  end

  # GET /bar99s/1 or /bar99s/1.json
  def show
  end

  # GET /bar99s/new
  def new
    @bar99 = Bar99.new
  end

  # GET /bar99s/1/edit
  def edit
  end

  # POST /bar99s or /bar99s.json
  def create
    @bar99 = Bar99.new(bar99_params)

    respond_to do |format|
      if @bar99.save
        format.html { redirect_to @bar99, notice: "Bar99 was successfully created." }
        format.json { render :show, status: :created, location: @bar99 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar99.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar99s/1 or /bar99s/1.json
  def update
    respond_to do |format|
      if @bar99.update(bar99_params)
        format.html { redirect_to @bar99, notice: "Bar99 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar99 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar99.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar99s/1 or /bar99s/1.json
  def destroy
    @bar99.destroy
    respond_to do |format|
      format.html { redirect_to bar99s_url, notice: "Bar99 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar99
      @bar99 = Bar99.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar99_params
      params.require(:bar99).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
