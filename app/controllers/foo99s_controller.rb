class Foo99sController < ApplicationController
  before_action :set_foo99, only: %i[ show edit update destroy ]

  # GET /foo99s or /foo99s.json
  def index
    @foo99s = Foo99.all
  end

  # GET /foo99s/1 or /foo99s/1.json
  def show
  end

  # GET /foo99s/new
  def new
    @foo99 = Foo99.new
  end

  # GET /foo99s/1/edit
  def edit
  end

  # POST /foo99s or /foo99s.json
  def create
    @foo99 = Foo99.new(foo99_params)

    respond_to do |format|
      if @foo99.save
        format.html { redirect_to @foo99, notice: "Foo99 was successfully created." }
        format.json { render :show, status: :created, location: @foo99 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo99.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo99s/1 or /foo99s/1.json
  def update
    respond_to do |format|
      if @foo99.update(foo99_params)
        format.html { redirect_to @foo99, notice: "Foo99 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo99 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo99.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo99s/1 or /foo99s/1.json
  def destroy
    @foo99.destroy
    respond_to do |format|
      format.html { redirect_to foo99s_url, notice: "Foo99 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo99
      @foo99 = Foo99.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo99_params
      params.require(:foo99).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
