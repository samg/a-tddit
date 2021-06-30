class Bar53sController < ApplicationController
  before_action :set_bar53, only: %i[ show edit update destroy ]

  # GET /bar53s or /bar53s.json
  def index
    @bar53s = Bar53.all
  end

  # GET /bar53s/1 or /bar53s/1.json
  def show
  end

  # GET /bar53s/new
  def new
    @bar53 = Bar53.new
  end

  # GET /bar53s/1/edit
  def edit
  end

  # POST /bar53s or /bar53s.json
  def create
    @bar53 = Bar53.new(bar53_params)

    respond_to do |format|
      if @bar53.save
        format.html { redirect_to @bar53, notice: "Bar53 was successfully created." }
        format.json { render :show, status: :created, location: @bar53 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar53.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar53s/1 or /bar53s/1.json
  def update
    respond_to do |format|
      if @bar53.update(bar53_params)
        format.html { redirect_to @bar53, notice: "Bar53 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar53 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar53.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar53s/1 or /bar53s/1.json
  def destroy
    @bar53.destroy
    respond_to do |format|
      format.html { redirect_to bar53s_url, notice: "Bar53 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar53
      @bar53 = Bar53.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar53_params
      params.require(:bar53).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
