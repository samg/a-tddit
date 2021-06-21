class Foo67sController < ApplicationController
  before_action :set_foo67, only: %i[ show edit update destroy ]

  # GET /foo67s or /foo67s.json
  def index
    @foo67s = Foo67.all
  end

  # GET /foo67s/1 or /foo67s/1.json
  def show
  end

  # GET /foo67s/new
  def new
    @foo67 = Foo67.new
  end

  # GET /foo67s/1/edit
  def edit
  end

  # POST /foo67s or /foo67s.json
  def create
    @foo67 = Foo67.new(foo67_params)

    respond_to do |format|
      if @foo67.save
        format.html { redirect_to @foo67, notice: "Foo67 was successfully created." }
        format.json { render :show, status: :created, location: @foo67 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo67.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo67s/1 or /foo67s/1.json
  def update
    respond_to do |format|
      if @foo67.update(foo67_params)
        format.html { redirect_to @foo67, notice: "Foo67 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo67 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo67.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo67s/1 or /foo67s/1.json
  def destroy
    @foo67.destroy
    respond_to do |format|
      format.html { redirect_to foo67s_url, notice: "Foo67 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo67
      @foo67 = Foo67.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo67_params
      params.require(:foo67).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
