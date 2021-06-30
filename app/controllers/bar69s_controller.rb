class Bar69sController < ApplicationController
  before_action :set_bar69, only: %i[ show edit update destroy ]

  # GET /bar69s or /bar69s.json
  def index
    @bar69s = Bar69.all
  end

  # GET /bar69s/1 or /bar69s/1.json
  def show
  end

  # GET /bar69s/new
  def new
    @bar69 = Bar69.new
  end

  # GET /bar69s/1/edit
  def edit
  end

  # POST /bar69s or /bar69s.json
  def create
    @bar69 = Bar69.new(bar69_params)

    respond_to do |format|
      if @bar69.save
        format.html { redirect_to @bar69, notice: "Bar69 was successfully created." }
        format.json { render :show, status: :created, location: @bar69 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar69.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar69s/1 or /bar69s/1.json
  def update
    respond_to do |format|
      if @bar69.update(bar69_params)
        format.html { redirect_to @bar69, notice: "Bar69 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar69 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar69.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar69s/1 or /bar69s/1.json
  def destroy
    @bar69.destroy
    respond_to do |format|
      format.html { redirect_to bar69s_url, notice: "Bar69 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar69
      @bar69 = Bar69.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar69_params
      params.require(:bar69).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
