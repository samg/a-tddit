class Foo64sController < ApplicationController
  before_action :set_foo64, only: %i[ show edit update destroy ]

  # GET /foo64s or /foo64s.json
  def index
    @foo64s = Foo64.all
  end

  # GET /foo64s/1 or /foo64s/1.json
  def show
  end

  # GET /foo64s/new
  def new
    @foo64 = Foo64.new
  end

  # GET /foo64s/1/edit
  def edit
  end

  # POST /foo64s or /foo64s.json
  def create
    @foo64 = Foo64.new(foo64_params)

    respond_to do |format|
      if @foo64.save
        format.html { redirect_to @foo64, notice: "Foo64 was successfully created." }
        format.json { render :show, status: :created, location: @foo64 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo64.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo64s/1 or /foo64s/1.json
  def update
    respond_to do |format|
      if @foo64.update(foo64_params)
        format.html { redirect_to @foo64, notice: "Foo64 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo64 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo64.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo64s/1 or /foo64s/1.json
  def destroy
    @foo64.destroy
    respond_to do |format|
      format.html { redirect_to foo64s_url, notice: "Foo64 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo64
      @foo64 = Foo64.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo64_params
      params.require(:foo64).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
