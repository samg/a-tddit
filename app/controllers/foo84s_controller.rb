class Foo84sController < ApplicationController
  before_action :set_foo84, only: %i[ show edit update destroy ]

  # GET /foo84s or /foo84s.json
  def index
    @foo84s = Foo84.all
  end

  # GET /foo84s/1 or /foo84s/1.json
  def show
  end

  # GET /foo84s/new
  def new
    @foo84 = Foo84.new
  end

  # GET /foo84s/1/edit
  def edit
  end

  # POST /foo84s or /foo84s.json
  def create
    @foo84 = Foo84.new(foo84_params)

    respond_to do |format|
      if @foo84.save
        format.html { redirect_to @foo84, notice: "Foo84 was successfully created." }
        format.json { render :show, status: :created, location: @foo84 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo84.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo84s/1 or /foo84s/1.json
  def update
    respond_to do |format|
      if @foo84.update(foo84_params)
        format.html { redirect_to @foo84, notice: "Foo84 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo84 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo84.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo84s/1 or /foo84s/1.json
  def destroy
    @foo84.destroy
    respond_to do |format|
      format.html { redirect_to foo84s_url, notice: "Foo84 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo84
      @foo84 = Foo84.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo84_params
      params.require(:foo84).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
