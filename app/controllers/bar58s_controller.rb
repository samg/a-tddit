class Bar58sController < ApplicationController
  before_action :set_bar58, only: %i[ show edit update destroy ]

  # GET /bar58s or /bar58s.json
  def index
    @bar58s = Bar58.all
  end

  # GET /bar58s/1 or /bar58s/1.json
  def show
  end

  # GET /bar58s/new
  def new
    @bar58 = Bar58.new
  end

  # GET /bar58s/1/edit
  def edit
  end

  # POST /bar58s or /bar58s.json
  def create
    @bar58 = Bar58.new(bar58_params)

    respond_to do |format|
      if @bar58.save
        format.html { redirect_to @bar58, notice: "Bar58 was successfully created." }
        format.json { render :show, status: :created, location: @bar58 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar58.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar58s/1 or /bar58s/1.json
  def update
    respond_to do |format|
      if @bar58.update(bar58_params)
        format.html { redirect_to @bar58, notice: "Bar58 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar58 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar58.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar58s/1 or /bar58s/1.json
  def destroy
    @bar58.destroy
    respond_to do |format|
      format.html { redirect_to bar58s_url, notice: "Bar58 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar58
      @bar58 = Bar58.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar58_params
      params.require(:bar58).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
