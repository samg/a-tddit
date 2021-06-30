class Bar6sController < ApplicationController
  before_action :set_bar6, only: %i[ show edit update destroy ]

  # GET /bar6s or /bar6s.json
  def index
    @bar6s = Bar6.all
  end

  # GET /bar6s/1 or /bar6s/1.json
  def show
  end

  # GET /bar6s/new
  def new
    @bar6 = Bar6.new
  end

  # GET /bar6s/1/edit
  def edit
  end

  # POST /bar6s or /bar6s.json
  def create
    @bar6 = Bar6.new(bar6_params)

    respond_to do |format|
      if @bar6.save
        format.html { redirect_to @bar6, notice: "Bar6 was successfully created." }
        format.json { render :show, status: :created, location: @bar6 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar6.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar6s/1 or /bar6s/1.json
  def update
    respond_to do |format|
      if @bar6.update(bar6_params)
        format.html { redirect_to @bar6, notice: "Bar6 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar6 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar6.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar6s/1 or /bar6s/1.json
  def destroy
    @bar6.destroy
    respond_to do |format|
      format.html { redirect_to bar6s_url, notice: "Bar6 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar6
      @bar6 = Bar6.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar6_params
      params.require(:bar6).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
