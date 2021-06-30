class Bar5sController < ApplicationController
  before_action :set_bar5, only: %i[ show edit update destroy ]

  # GET /bar5s or /bar5s.json
  def index
    @bar5s = Bar5.all
  end

  # GET /bar5s/1 or /bar5s/1.json
  def show
  end

  # GET /bar5s/new
  def new
    @bar5 = Bar5.new
  end

  # GET /bar5s/1/edit
  def edit
  end

  # POST /bar5s or /bar5s.json
  def create
    @bar5 = Bar5.new(bar5_params)

    respond_to do |format|
      if @bar5.save
        format.html { redirect_to @bar5, notice: "Bar5 was successfully created." }
        format.json { render :show, status: :created, location: @bar5 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar5s/1 or /bar5s/1.json
  def update
    respond_to do |format|
      if @bar5.update(bar5_params)
        format.html { redirect_to @bar5, notice: "Bar5 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar5 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar5s/1 or /bar5s/1.json
  def destroy
    @bar5.destroy
    respond_to do |format|
      format.html { redirect_to bar5s_url, notice: "Bar5 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar5
      @bar5 = Bar5.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar5_params
      params.require(:bar5).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
