class Bar1sController < ApplicationController
  before_action :set_bar1, only: %i[ show edit update destroy ]

  # GET /bar1s or /bar1s.json
  def index
    @bar1s = Bar1.all
  end

  # GET /bar1s/1 or /bar1s/1.json
  def show
  end

  # GET /bar1s/new
  def new
    @bar1 = Bar1.new
  end

  # GET /bar1s/1/edit
  def edit
  end

  # POST /bar1s or /bar1s.json
  def create
    @bar1 = Bar1.new(bar1_params)

    respond_to do |format|
      if @bar1.save
        format.html { redirect_to @bar1, notice: "Bar1 was successfully created." }
        format.json { render :show, status: :created, location: @bar1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar1s/1 or /bar1s/1.json
  def update
    respond_to do |format|
      if @bar1.update(bar1_params)
        format.html { redirect_to @bar1, notice: "Bar1 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar1s/1 or /bar1s/1.json
  def destroy
    @bar1.destroy
    respond_to do |format|
      format.html { redirect_to bar1s_url, notice: "Bar1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar1
      @bar1 = Bar1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar1_params
      params.require(:bar1).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
