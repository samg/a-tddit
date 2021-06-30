class Bar92sController < ApplicationController
  before_action :set_bar92, only: %i[ show edit update destroy ]

  # GET /bar92s or /bar92s.json
  def index
    @bar92s = Bar92.all
  end

  # GET /bar92s/1 or /bar92s/1.json
  def show
  end

  # GET /bar92s/new
  def new
    @bar92 = Bar92.new
  end

  # GET /bar92s/1/edit
  def edit
  end

  # POST /bar92s or /bar92s.json
  def create
    @bar92 = Bar92.new(bar92_params)

    respond_to do |format|
      if @bar92.save
        format.html { redirect_to @bar92, notice: "Bar92 was successfully created." }
        format.json { render :show, status: :created, location: @bar92 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar92.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar92s/1 or /bar92s/1.json
  def update
    respond_to do |format|
      if @bar92.update(bar92_params)
        format.html { redirect_to @bar92, notice: "Bar92 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar92 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar92.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar92s/1 or /bar92s/1.json
  def destroy
    @bar92.destroy
    respond_to do |format|
      format.html { redirect_to bar92s_url, notice: "Bar92 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar92
      @bar92 = Bar92.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar92_params
      params.require(:bar92).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
