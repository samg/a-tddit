class Bar26sController < ApplicationController
  before_action :set_bar26, only: %i[ show edit update destroy ]

  # GET /bar26s or /bar26s.json
  def index
    @bar26s = Bar26.all
  end

  # GET /bar26s/1 or /bar26s/1.json
  def show
  end

  # GET /bar26s/new
  def new
    @bar26 = Bar26.new
  end

  # GET /bar26s/1/edit
  def edit
  end

  # POST /bar26s or /bar26s.json
  def create
    @bar26 = Bar26.new(bar26_params)

    respond_to do |format|
      if @bar26.save
        format.html { redirect_to @bar26, notice: "Bar26 was successfully created." }
        format.json { render :show, status: :created, location: @bar26 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar26.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar26s/1 or /bar26s/1.json
  def update
    respond_to do |format|
      if @bar26.update(bar26_params)
        format.html { redirect_to @bar26, notice: "Bar26 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar26 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar26.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar26s/1 or /bar26s/1.json
  def destroy
    @bar26.destroy
    respond_to do |format|
      format.html { redirect_to bar26s_url, notice: "Bar26 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar26
      @bar26 = Bar26.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar26_params
      params.require(:bar26).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
