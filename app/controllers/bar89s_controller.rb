class Bar89sController < ApplicationController
  before_action :set_bar89, only: %i[ show edit update destroy ]

  # GET /bar89s or /bar89s.json
  def index
    @bar89s = Bar89.all
  end

  # GET /bar89s/1 or /bar89s/1.json
  def show
  end

  # GET /bar89s/new
  def new
    @bar89 = Bar89.new
  end

  # GET /bar89s/1/edit
  def edit
  end

  # POST /bar89s or /bar89s.json
  def create
    @bar89 = Bar89.new(bar89_params)

    respond_to do |format|
      if @bar89.save
        format.html { redirect_to @bar89, notice: "Bar89 was successfully created." }
        format.json { render :show, status: :created, location: @bar89 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bar89.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bar89s/1 or /bar89s/1.json
  def update
    respond_to do |format|
      if @bar89.update(bar89_params)
        format.html { redirect_to @bar89, notice: "Bar89 was successfully updated." }
        format.json { render :show, status: :ok, location: @bar89 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bar89.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bar89s/1 or /bar89s/1.json
  def destroy
    @bar89.destroy
    respond_to do |format|
      format.html { redirect_to bar89s_url, notice: "Bar89 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar89
      @bar89 = Bar89.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar89_params
      params.require(:bar89).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
