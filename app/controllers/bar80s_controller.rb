class Bar80sController < ApplicationController
  before_action :set_bar80, only: %i[ show edit update destroy ]

  # GET /bar80s or /bar80s.json
  def index
    @bar80s = Bar80.all
  end

  # GET /bar80s/1 or /bar80s/1.json
  def show
  end

  # GET /bar80s/new
  def new
    @bar80 = Bar80.new
  end

  # GET /bar80s/1/edit
  def edit
  end

  # POST /bar80s or /bar80s.json
  def create
    @bar80 = Bar80.new(bar80_params)

    respond_to do |format|
      if @bar80.save
        format.html { redirect_to @bar80, notice: "Bar80 was successfully created." }
        format.json { render :show, status: :created, location: @bar80 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar80.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar80s/1 or /bar80s/1.json
  def update
    respond_to do |format|
      if @bar80.update(bar80_params)
        format.html { redirect_to @bar80, notice: "Bar80 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar80 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar80.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar80s/1 or /bar80s/1.json
  def destroy
    @bar80.destroy
    respond_to do |format|
      format.html { redirect_to bar80s_url, notice: "Bar80 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar80
      @bar80 = Bar80.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar80_params
      params.require(:bar80).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
