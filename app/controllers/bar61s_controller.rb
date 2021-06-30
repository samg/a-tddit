class Bar61sController < ApplicationController
  before_action :set_bar61, only: %i[ show edit update destroy ]

  # GET /bar61s or /bar61s.json
  def index
    @bar61s = Bar61.all
  end

  # GET /bar61s/1 or /bar61s/1.json
  def show
  end

  # GET /bar61s/new
  def new
    @bar61 = Bar61.new
  end

  # GET /bar61s/1/edit
  def edit
  end

  # POST /bar61s or /bar61s.json
  def create
    @bar61 = Bar61.new(bar61_params)

    respond_to do |format|
      if @bar61.save
        format.html { redirect_to @bar61, notice: "Bar61 was successfully created." }
        format.json { render :show, status: :created, location: @bar61 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar61.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar61s/1 or /bar61s/1.json
  def update
    respond_to do |format|
      if @bar61.update(bar61_params)
        format.html { redirect_to @bar61, notice: "Bar61 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar61 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar61.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar61s/1 or /bar61s/1.json
  def destroy
    @bar61.destroy
    respond_to do |format|
      format.html { redirect_to bar61s_url, notice: "Bar61 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar61
      @bar61 = Bar61.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar61_params
      params.require(:bar61).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
