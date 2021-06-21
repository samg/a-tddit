class Foo9sController < ApplicationController
  before_action :set_foo9, only: %i[ show edit update destroy ]

  # GET /foo9s or /foo9s.json
  def index
    @foo9s = Foo9.all
  end

  # GET /foo9s/1 or /foo9s/1.json
  def show
  end

  # GET /foo9s/new
  def new
    @foo9 = Foo9.new
  end

  # GET /foo9s/1/edit
  def edit
  end

  # POST /foo9s or /foo9s.json
  def create
    @foo9 = Foo9.new(foo9_params)

    respond_to do |format|
      if @foo9.save
        format.html { redirect_to @foo9, notice: "Foo9 was successfully created." }
        format.json { render :show, status: :created, location: @foo9 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo9s/1 or /foo9s/1.json
  def update
    respond_to do |format|
      if @foo9.update(foo9_params)
        format.html { redirect_to @foo9, notice: "Foo9 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo9 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo9s/1 or /foo9s/1.json
  def destroy
    @foo9.destroy
    respond_to do |format|
      format.html { redirect_to foo9s_url, notice: "Foo9 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo9
      @foo9 = Foo9.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo9_params
      params.require(:foo9).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
