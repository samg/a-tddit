class Bar18sController < ApplicationController
  before_action :set_bar18, only: %i[ show edit update destroy ]

  # GET /bar18s or /bar18s.json
  def index
    @bar18s = Bar18.all
  end

  # GET /bar18s/1 or /bar18s/1.json
  def show
  end

  # GET /bar18s/new
  def new
    @bar18 = Bar18.new
  end

  # GET /bar18s/1/edit
  def edit
  end

  # POST /bar18s or /bar18s.json
  def create
    @bar18 = Bar18.new(bar18_params)

    respond_to do |format|
      if @bar18.save
        format.html { redirect_to @bar18, notice: "Bar18 was successfully created." }
        format.json { render :show, status: :created, location: @bar18 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar18.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar18s/1 or /bar18s/1.json
  def update
    respond_to do |format|
      if @bar18.update(bar18_params)
        format.html { redirect_to @bar18, notice: "Bar18 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar18 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar18.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar18s/1 or /bar18s/1.json
  def destroy
    @bar18.destroy
    respond_to do |format|
      format.html { redirect_to bar18s_url, notice: "Bar18 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar18
      @bar18 = Bar18.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar18_params
      params.require(:bar18).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
