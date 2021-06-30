class Bar10sController < ApplicationController
  before_action :set_bar10, only: %i[ show edit update destroy ]

  # GET /bar10s or /bar10s.json
  def index
    @bar10s = Bar10.all
  end

  # GET /bar10s/1 or /bar10s/1.json
  def show
  end

  # GET /bar10s/new
  def new
    @bar10 = Bar10.new
  end

  # GET /bar10s/1/edit
  def edit
  end

  # POST /bar10s or /bar10s.json
  def create
    @bar10 = Bar10.new(bar10_params)

    respond_to do |format|
      if @bar10.save
        format.html { redirect_to @bar10, notice: "Bar10 was successfully created." }
        format.json { render :show, status: :created, location: @bar10 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar10.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar10s/1 or /bar10s/1.json
  def update
    respond_to do |format|
      if @bar10.update(bar10_params)
        format.html { redirect_to @bar10, notice: "Bar10 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar10 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar10.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar10s/1 or /bar10s/1.json
  def destroy
    @bar10.destroy
    respond_to do |format|
      format.html { redirect_to bar10s_url, notice: "Bar10 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar10
      @bar10 = Bar10.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar10_params
      params.require(:bar10).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
