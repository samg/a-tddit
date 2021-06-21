class Foo78sController < ApplicationController
  before_action :set_foo78, only: %i[ show edit update destroy ]

  # GET /foo78s or /foo78s.json
  def index
    @foo78s = Foo78.all
  end

  # GET /foo78s/1 or /foo78s/1.json
  def show
  end

  # GET /foo78s/new
  def new
    @foo78 = Foo78.new
  end

  # GET /foo78s/1/edit
  def edit
  end

  # POST /foo78s or /foo78s.json
  def create
    @foo78 = Foo78.new(foo78_params)

    respond_to do |format|
      if @foo78.save
        format.html { redirect_to @foo78, notice: "Foo78 was successfully created." }
        format.json { render :show, status: :created, location: @foo78 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo78.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo78s/1 or /foo78s/1.json
  def update
    respond_to do |format|
      if @foo78.update(foo78_params)
        format.html { redirect_to @foo78, notice: "Foo78 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo78 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo78.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo78s/1 or /foo78s/1.json
  def destroy
    @foo78.destroy
    respond_to do |format|
      format.html { redirect_to foo78s_url, notice: "Foo78 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo78
      @foo78 = Foo78.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo78_params
      params.require(:foo78).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
