class Foo63sController < ApplicationController
  before_action :set_foo63, only: %i[ show edit update destroy ]

  # GET /foo63s or /foo63s.json
  def index
    @foo63s = Foo63.all
  end

  # GET /foo63s/1 or /foo63s/1.json
  def show
  end

  # GET /foo63s/new
  def new
    @foo63 = Foo63.new
  end

  # GET /foo63s/1/edit
  def edit
  end

  # POST /foo63s or /foo63s.json
  def create
    @foo63 = Foo63.new(foo63_params)

    respond_to do |format|
      if @foo63.save
        format.html { redirect_to @foo63, notice: "Foo63 was successfully created." }
        format.json { render :show, status: :created, location: @foo63 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo63.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo63s/1 or /foo63s/1.json
  def update
    respond_to do |format|
      if @foo63.update(foo63_params)
        format.html { redirect_to @foo63, notice: "Foo63 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo63 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo63.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo63s/1 or /foo63s/1.json
  def destroy
    @foo63.destroy
    respond_to do |format|
      format.html { redirect_to foo63s_url, notice: "Foo63 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo63
      @foo63 = Foo63.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo63_params
      params.require(:foo63).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
