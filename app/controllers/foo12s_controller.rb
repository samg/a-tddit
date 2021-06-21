class Foo12sController < ApplicationController
  before_action :set_foo12, only: %i[ show edit update destroy ]

  # GET /foo12s or /foo12s.json
  def index
    @foo12s = Foo12.all
  end

  # GET /foo12s/1 or /foo12s/1.json
  def show
  end

  # GET /foo12s/new
  def new
    @foo12 = Foo12.new
  end

  # GET /foo12s/1/edit
  def edit
  end

  # POST /foo12s or /foo12s.json
  def create
    @foo12 = Foo12.new(foo12_params)

    respond_to do |format|
      if @foo12.save
        format.html { redirect_to @foo12, notice: "Foo12 was successfully created." }
        format.json { render :show, status: :created, location: @foo12 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo12.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo12s/1 or /foo12s/1.json
  def update
    respond_to do |format|
      if @foo12.update(foo12_params)
        format.html { redirect_to @foo12, notice: "Foo12 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo12 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo12.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo12s/1 or /foo12s/1.json
  def destroy
    @foo12.destroy
    respond_to do |format|
      format.html { redirect_to foo12s_url, notice: "Foo12 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo12
      @foo12 = Foo12.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo12_params
      params.require(:foo12).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
