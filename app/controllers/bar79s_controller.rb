class Bar79sController < ApplicationController
  before_action :set_bar79, only: %i[ show edit update destroy ]

  # GET /bar79s or /bar79s.json
  def index
    @bar79s = Bar79.all
  end

  # GET /bar79s/1 or /bar79s/1.json
  def show
  end

  # GET /bar79s/new
  def new
    @bar79 = Bar79.new
  end

  # GET /bar79s/1/edit
  def edit
  end

  # POST /bar79s or /bar79s.json
  def create
    @bar79 = Bar79.new(bar79_params)

    respond_to do |format|
      if @bar79.save
        format.html { redirect_to @bar79, notice: "Bar79 was successfully created." }
        format.json { render :show, status: :created, location: @bar79 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar79.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar79s/1 or /bar79s/1.json
  def update
    respond_to do |format|
      if @bar79.update(bar79_params)
        format.html { redirect_to @bar79, notice: "Bar79 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar79 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar79.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar79s/1 or /bar79s/1.json
  def destroy
    @bar79.destroy
    respond_to do |format|
      format.html { redirect_to bar79s_url, notice: "Bar79 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar79
      @bar79 = Bar79.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar79_params
      params.require(:bar79).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
