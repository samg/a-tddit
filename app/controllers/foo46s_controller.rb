class Foo46sController < ApplicationController
  before_action :set_foo46, only: %i[ show edit update destroy ]

  # GET /foo46s or /foo46s.json
  def index
    @foo46s = Foo46.all
  end

  # GET /foo46s/1 or /foo46s/1.json
  def show
  end

  # GET /foo46s/new
  def new
    @foo46 = Foo46.new
  end

  # GET /foo46s/1/edit
  def edit
  end

  # POST /foo46s or /foo46s.json
  def create
    @foo46 = Foo46.new(foo46_params)

    respond_to do |format|
      if @foo46.save
        format.html { redirect_to @foo46, notice: "Foo46 was successfully created." }
        format.json { render :show, status: :created, location: @foo46 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo46.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo46s/1 or /foo46s/1.json
  def update
    respond_to do |format|
      if @foo46.update(foo46_params)
        format.html { redirect_to @foo46, notice: "Foo46 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo46 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo46.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo46s/1 or /foo46s/1.json
  def destroy
    @foo46.destroy
    respond_to do |format|
      format.html { redirect_to foo46s_url, notice: "Foo46 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo46
      @foo46 = Foo46.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo46_params
      params.require(:foo46).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
