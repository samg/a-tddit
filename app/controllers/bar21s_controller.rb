class Bar21sController < ApplicationController
  before_action :set_bar21, only: %i[ show edit update destroy ]

  # GET /bar21s or /bar21s.json
  def index
    @bar21s = Bar21.all
  end

  # GET /bar21s/1 or /bar21s/1.json
  def show
  end

  # GET /bar21s/new
  def new
    @bar21 = Bar21.new
  end

  # GET /bar21s/1/edit
  def edit
  end

  # POST /bar21s or /bar21s.json
  def create
    @bar21 = Bar21.new(bar21_params)

    respond_to do |format|
      if @bar21.save
        format.html { redirect_to @bar21, notice: "Bar21 was successfully created." }
        format.json { render :show, status: :created, location: @bar21 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar21.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar21s/1 or /bar21s/1.json
  def update
    respond_to do |format|
      if @bar21.update(bar21_params)
        format.html { redirect_to @bar21, notice: "Bar21 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar21 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar21.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar21s/1 or /bar21s/1.json
  def destroy
    @bar21.destroy
    respond_to do |format|
      format.html { redirect_to bar21s_url, notice: "Bar21 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar21
      @bar21 = Bar21.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar21_params
      params.require(:bar21).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
