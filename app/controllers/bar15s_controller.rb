class Bar15sController < ApplicationController
  before_action :set_bar15, only: %i[ show edit update destroy ]

  # GET /bar15s or /bar15s.json
  def index
    @bar15s = Bar15.all
  end

  # GET /bar15s/1 or /bar15s/1.json
  def show
  end

  # GET /bar15s/new
  def new
    @bar15 = Bar15.new
  end

  # GET /bar15s/1/edit
  def edit
  end

  # POST /bar15s or /bar15s.json
  def create
    @bar15 = Bar15.new(bar15_params)

    respond_to do |format|
      if @bar15.save
        format.html { redirect_to @bar15, notice: "Bar15 was successfully created." }
        format.json { render :show, status: :created, location: @bar15 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar15.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar15s/1 or /bar15s/1.json
  def update
    respond_to do |format|
      if @bar15.update(bar15_params)
        format.html { redirect_to @bar15, notice: "Bar15 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar15 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar15.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar15s/1 or /bar15s/1.json
  def destroy
    @bar15.destroy
    respond_to do |format|
      format.html { redirect_to bar15s_url, notice: "Bar15 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar15
      @bar15 = Bar15.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar15_params
      params.require(:bar15).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
