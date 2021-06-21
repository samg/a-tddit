class Foo59sController < ApplicationController
  before_action :set_foo59, only: %i[ show edit update destroy ]

  # GET /foo59s or /foo59s.json
  def index
    @foo59s = Foo59.all
  end

  # GET /foo59s/1 or /foo59s/1.json
  def show
  end

  # GET /foo59s/new
  def new
    @foo59 = Foo59.new
  end

  # GET /foo59s/1/edit
  def edit
  end

  # POST /foo59s or /foo59s.json
  def create
    @foo59 = Foo59.new(foo59_params)

    respond_to do |format|
      if @foo59.save
        format.html { redirect_to @foo59, notice: "Foo59 was successfully created." }
        format.json { render :show, status: :created, location: @foo59 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo59.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo59s/1 or /foo59s/1.json
  def update
    respond_to do |format|
      if @foo59.update(foo59_params)
        format.html { redirect_to @foo59, notice: "Foo59 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo59 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo59.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo59s/1 or /foo59s/1.json
  def destroy
    @foo59.destroy
    respond_to do |format|
      format.html { redirect_to foo59s_url, notice: "Foo59 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo59
      @foo59 = Foo59.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo59_params
      params.require(:foo59).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
