class Bar64sController < ApplicationController
  before_action :set_bar64, only: %i[ show edit update destroy ]

  # GET /bar64s or /bar64s.json
  def index
    @bar64s = Bar64.all
  end

  # GET /bar64s/1 or /bar64s/1.json
  def show
  end

  # GET /bar64s/new
  def new
    @bar64 = Bar64.new
  end

  # GET /bar64s/1/edit
  def edit
  end

  # POST /bar64s or /bar64s.json
  def create
    @bar64 = Bar64.new(bar64_params)

    respond_to do |format|
      if @bar64.save
        format.html { redirect_to @bar64, notice: "Bar64 was successfully created." }
        format.json { render :show, status: :created, location: @bar64 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar64.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar64s/1 or /bar64s/1.json
  def update
    respond_to do |format|
      if @bar64.update(bar64_params)
        format.html { redirect_to @bar64, notice: "Bar64 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar64 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar64.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar64s/1 or /bar64s/1.json
  def destroy
    @bar64.destroy
    respond_to do |format|
      format.html { redirect_to bar64s_url, notice: "Bar64 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar64
      @bar64 = Bar64.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar64_params
      params.require(:bar64).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
