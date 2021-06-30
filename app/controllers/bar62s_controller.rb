class Bar62sController < ApplicationController
  before_action :set_bar62, only: %i[ show edit update destroy ]

  # GET /bar62s or /bar62s.json
  def index
    @bar62s = Bar62.all
  end

  # GET /bar62s/1 or /bar62s/1.json
  def show
  end

  # GET /bar62s/new
  def new
    @bar62 = Bar62.new
  end

  # GET /bar62s/1/edit
  def edit
  end

  # POST /bar62s or /bar62s.json
  def create
    @bar62 = Bar62.new(bar62_params)

    respond_to do |format|
      if @bar62.save
        format.html { redirect_to @bar62, notice: "Bar62 was successfully created." }
        format.json { render :show, status: :created, location: @bar62 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar62.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar62s/1 or /bar62s/1.json
  def update
    respond_to do |format|
      if @bar62.update(bar62_params)
        format.html { redirect_to @bar62, notice: "Bar62 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar62 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar62.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar62s/1 or /bar62s/1.json
  def destroy
    @bar62.destroy
    respond_to do |format|
      format.html { redirect_to bar62s_url, notice: "Bar62 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar62
      @bar62 = Bar62.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar62_params
      params.require(:bar62).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
