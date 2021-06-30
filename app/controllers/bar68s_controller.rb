class Bar68sController < ApplicationController
  before_action :set_bar68, only: %i[ show edit update destroy ]

  # GET /bar68s or /bar68s.json
  def index
    @bar68s = Bar68.all
  end

  # GET /bar68s/1 or /bar68s/1.json
  def show
  end

  # GET /bar68s/new
  def new
    @bar68 = Bar68.new
  end

  # GET /bar68s/1/edit
  def edit
  end

  # POST /bar68s or /bar68s.json
  def create
    @bar68 = Bar68.new(bar68_params)

    respond_to do |format|
      if @bar68.save
        format.html { redirect_to @bar68, notice: "Bar68 was successfully created." }
        format.json { render :show, status: :created, location: @bar68 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar68.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar68s/1 or /bar68s/1.json
  def update
    respond_to do |format|
      if @bar68.update(bar68_params)
        format.html { redirect_to @bar68, notice: "Bar68 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar68 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar68.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar68s/1 or /bar68s/1.json
  def destroy
    @bar68.destroy
    respond_to do |format|
      format.html { redirect_to bar68s_url, notice: "Bar68 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar68
      @bar68 = Bar68.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar68_params
      params.require(:bar68).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
