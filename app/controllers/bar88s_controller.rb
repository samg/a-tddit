class Bar88sController < ApplicationController
  before_action :set_bar88, only: %i[ show edit update destroy ]

  # GET /bar88s or /bar88s.json
  def index
    @bar88s = Bar88.all
  end

  # GET /bar88s/1 or /bar88s/1.json
  def show
  end

  # GET /bar88s/new
  def new
    @bar88 = Bar88.new
  end

  # GET /bar88s/1/edit
  def edit
  end

  # POST /bar88s or /bar88s.json
  def create
    @bar88 = Bar88.new(bar88_params)

    respond_to do |format|
      if @bar88.save
        format.html { redirect_to @bar88, notice: "Bar88 was successfully created." }
        format.json { render :show, status: :created, location: @bar88 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar88.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar88s/1 or /bar88s/1.json
  def update
    respond_to do |format|
      if @bar88.update(bar88_params)
        format.html { redirect_to @bar88, notice: "Bar88 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar88 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar88.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar88s/1 or /bar88s/1.json
  def destroy
    @bar88.destroy
    respond_to do |format|
      format.html { redirect_to bar88s_url, notice: "Bar88 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar88
      @bar88 = Bar88.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar88_params
      params.require(:bar88).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
