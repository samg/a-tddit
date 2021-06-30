class Bar14sController < ApplicationController
  before_action :set_bar14, only: %i[ show edit update destroy ]

  # GET /bar14s or /bar14s.json
  def index
    @bar14s = Bar14.all
  end

  # GET /bar14s/1 or /bar14s/1.json
  def show
  end

  # GET /bar14s/new
  def new
    @bar14 = Bar14.new
  end

  # GET /bar14s/1/edit
  def edit
  end

  # POST /bar14s or /bar14s.json
  def create
    @bar14 = Bar14.new(bar14_params)

    respond_to do |format|
      if @bar14.save
        format.html { redirect_to @bar14, notice: "Bar14 was successfully created." }
        format.json { render :show, status: :created, location: @bar14 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar14.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar14s/1 or /bar14s/1.json
  def update
    respond_to do |format|
      if @bar14.update(bar14_params)
        format.html { redirect_to @bar14, notice: "Bar14 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar14 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar14.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar14s/1 or /bar14s/1.json
  def destroy
    @bar14.destroy
    respond_to do |format|
      format.html { redirect_to bar14s_url, notice: "Bar14 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar14
      @bar14 = Bar14.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar14_params
      params.require(:bar14).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
