class Bar42sController < ApplicationController
  before_action :set_bar42, only: %i[ show edit update destroy ]

  # GET /bar42s or /bar42s.json
  def index
    @bar42s = Bar42.all
  end

  # GET /bar42s/1 or /bar42s/1.json
  def show
  end

  # GET /bar42s/new
  def new
    @bar42 = Bar42.new
  end

  # GET /bar42s/1/edit
  def edit
  end

  # POST /bar42s or /bar42s.json
  def create
    @bar42 = Bar42.new(bar42_params)

    respond_to do |format|
      if @bar42.save
        format.html { redirect_to @bar42, notice: "Bar42 was successfully created." }
        format.json { render :show, status: :created, location: @bar42 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar42.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar42s/1 or /bar42s/1.json
  def update
    respond_to do |format|
      if @bar42.update(bar42_params)
        format.html { redirect_to @bar42, notice: "Bar42 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar42 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar42.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar42s/1 or /bar42s/1.json
  def destroy
    @bar42.destroy
    respond_to do |format|
      format.html { redirect_to bar42s_url, notice: "Bar42 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar42
      @bar42 = Bar42.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar42_params
      params.require(:bar42).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
