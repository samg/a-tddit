class Foo27sController < ApplicationController
  before_action :set_foo27, only: %i[ show edit update destroy ]

  # GET /foo27s or /foo27s.json
  def index
    @foo27s = Foo27.all
  end

  # GET /foo27s/1 or /foo27s/1.json
  def show
  end

  # GET /foo27s/new
  def new
    @foo27 = Foo27.new
  end

  # GET /foo27s/1/edit
  def edit
  end

  # POST /foo27s or /foo27s.json
  def create
    @foo27 = Foo27.new(foo27_params)

    respond_to do |format|
      if @foo27.save
        format.html { redirect_to @foo27, notice: "Foo27 was successfully created." }
        format.json { render :show, status: :created, location: @foo27 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo27.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo27s/1 or /foo27s/1.json
  def update
    respond_to do |format|
      if @foo27.update(foo27_params)
        format.html { redirect_to @foo27, notice: "Foo27 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo27 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo27.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo27s/1 or /foo27s/1.json
  def destroy
    @foo27.destroy
    respond_to do |format|
      format.html { redirect_to foo27s_url, notice: "Foo27 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo27
      @foo27 = Foo27.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo27_params
      params.require(:foo27).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
