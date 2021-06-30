class Bar7sController < ApplicationController
  before_action :set_bar7, only: %i[ show edit update destroy ]

  # GET /bar7s or /bar7s.json
  def index
    @bar7s = Bar7.all
  end

  # GET /bar7s/1 or /bar7s/1.json
  def show
  end

  # GET /bar7s/new
  def new
    @bar7 = Bar7.new
  end

  # GET /bar7s/1/edit
  def edit
  end

  # POST /bar7s or /bar7s.json
  def create
    @bar7 = Bar7.new(bar7_params)

    respond_to do |format|
      if @bar7.save
        format.html { redirect_to @bar7, notice: "Bar7 was successfully created." }
        format.json { render :show, status: :created, location: @bar7 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar7s/1 or /bar7s/1.json
  def update
    respond_to do |format|
      if @bar7.update(bar7_params)
        format.html { redirect_to @bar7, notice: "Bar7 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar7 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar7s/1 or /bar7s/1.json
  def destroy
    @bar7.destroy
    respond_to do |format|
      format.html { redirect_to bar7s_url, notice: "Bar7 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar7
      @bar7 = Bar7.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar7_params
      params.require(:bar7).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
