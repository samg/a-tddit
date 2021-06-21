class Foo54sController < ApplicationController
  before_action :set_foo54, only: %i[ show edit update destroy ]

  # GET /foo54s or /foo54s.json
  def index
    @foo54s = Foo54.all
  end

  # GET /foo54s/1 or /foo54s/1.json
  def show
  end

  # GET /foo54s/new
  def new
    @foo54 = Foo54.new
  end

  # GET /foo54s/1/edit
  def edit
  end

  # POST /foo54s or /foo54s.json
  def create
    @foo54 = Foo54.new(foo54_params)

    respond_to do |format|
      if @foo54.save
        format.html { redirect_to @foo54, notice: "Foo54 was successfully created." }
        format.json { render :show, status: :created, location: @foo54 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo54.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo54s/1 or /foo54s/1.json
  def update
    respond_to do |format|
      if @foo54.update(foo54_params)
        format.html { redirect_to @foo54, notice: "Foo54 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo54 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo54.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo54s/1 or /foo54s/1.json
  def destroy
    @foo54.destroy
    respond_to do |format|
      format.html { redirect_to foo54s_url, notice: "Foo54 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo54
      @foo54 = Foo54.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo54_params
      params.require(:foo54).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
