class Bar20sController < ApplicationController
  before_action :set_bar20, only: %i[ show edit update destroy ]

  # GET /bar20s or /bar20s.json
  def index
    @bar20s = Bar20.all
  end

  # GET /bar20s/1 or /bar20s/1.json
  def show
  end

  # GET /bar20s/new
  def new
    @bar20 = Bar20.new
  end

  # GET /bar20s/1/edit
  def edit
  end

  # POST /bar20s or /bar20s.json
  def create
    @bar20 = Bar20.new(bar20_params)

    respond_to do |format|
      if @bar20.save
        format.html { redirect_to @bar20, notice: "Bar20 was successfully created." }
        format.json { render :show, status: :created, location: @bar20 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar20.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar20s/1 or /bar20s/1.json
  def update
    respond_to do |format|
      if @bar20.update(bar20_params)
        format.html { redirect_to @bar20, notice: "Bar20 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar20 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar20.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar20s/1 or /bar20s/1.json
  def destroy
    @bar20.destroy
    respond_to do |format|
      format.html { redirect_to bar20s_url, notice: "Bar20 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar20
      @bar20 = Bar20.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar20_params
      params.require(:bar20).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
