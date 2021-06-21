class Foo76sController < ApplicationController
  before_action :set_foo76, only: %i[ show edit update destroy ]

  # GET /foo76s or /foo76s.json
  def index
    @foo76s = Foo76.all
  end

  # GET /foo76s/1 or /foo76s/1.json
  def show
  end

  # GET /foo76s/new
  def new
    @foo76 = Foo76.new
  end

  # GET /foo76s/1/edit
  def edit
  end

  # POST /foo76s or /foo76s.json
  def create
    @foo76 = Foo76.new(foo76_params)

    respond_to do |format|
      if @foo76.save
        format.html { redirect_to @foo76, notice: "Foo76 was successfully created." }
        format.json { render :show, status: :created, location: @foo76 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo76.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo76s/1 or /foo76s/1.json
  def update
    respond_to do |format|
      if @foo76.update(foo76_params)
        format.html { redirect_to @foo76, notice: "Foo76 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo76 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo76.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo76s/1 or /foo76s/1.json
  def destroy
    @foo76.destroy
    respond_to do |format|
      format.html { redirect_to foo76s_url, notice: "Foo76 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo76
      @foo76 = Foo76.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo76_params
      params.require(:foo76).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
