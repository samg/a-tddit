class Bar76sController < ApplicationController
  before_action :set_bar76, only: %i[ show edit update destroy ]

  # GET /bar76s or /bar76s.json
  def index
    @bar76s = Bar76.all
  end

  # GET /bar76s/1 or /bar76s/1.json
  def show
  end

  # GET /bar76s/new
  def new
    @bar76 = Bar76.new
  end

  # GET /bar76s/1/edit
  def edit
  end

  # POST /bar76s or /bar76s.json
  def create
    @bar76 = Bar76.new(bar76_params)

    respond_to do |format|
      if @bar76.save
        format.html { redirect_to @bar76, notice: "Bar76 was successfully created." }
        format.json { render :show, status: :created, location: @bar76 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar76.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar76s/1 or /bar76s/1.json
  def update
    respond_to do |format|
      if @bar76.update(bar76_params)
        format.html { redirect_to @bar76, notice: "Bar76 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar76 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar76.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar76s/1 or /bar76s/1.json
  def destroy
    @bar76.destroy
    respond_to do |format|
      format.html { redirect_to bar76s_url, notice: "Bar76 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar76
      @bar76 = Bar76.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar76_params
      params.require(:bar76).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
