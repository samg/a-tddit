class Bar72sController < ApplicationController
  before_action :set_bar72, only: %i[ show edit update destroy ]

  # GET /bar72s or /bar72s.json
  def index
    @bar72s = Bar72.all
  end

  # GET /bar72s/1 or /bar72s/1.json
  def show
  end

  # GET /bar72s/new
  def new
    @bar72 = Bar72.new
  end

  # GET /bar72s/1/edit
  def edit
  end

  # POST /bar72s or /bar72s.json
  def create
    @bar72 = Bar72.new(bar72_params)

    respond_to do |format|
      if @bar72.save
        format.html { redirect_to @bar72, notice: "Bar72 was successfully created." }
        format.json { render :show, status: :created, location: @bar72 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar72.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar72s/1 or /bar72s/1.json
  def update
    respond_to do |format|
      if @bar72.update(bar72_params)
        format.html { redirect_to @bar72, notice: "Bar72 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar72 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar72.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar72s/1 or /bar72s/1.json
  def destroy
    @bar72.destroy
    respond_to do |format|
      format.html { redirect_to bar72s_url, notice: "Bar72 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar72
      @bar72 = Bar72.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar72_params
      params.require(:bar72).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
