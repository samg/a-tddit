class Foo68sController < ApplicationController
  before_action :set_foo68, only: %i[ show edit update destroy ]

  # GET /foo68s or /foo68s.json
  def index
    @foo68s = Foo68.all
  end

  # GET /foo68s/1 or /foo68s/1.json
  def show
  end

  # GET /foo68s/new
  def new
    @foo68 = Foo68.new
  end

  # GET /foo68s/1/edit
  def edit
  end

  # POST /foo68s or /foo68s.json
  def create
    @foo68 = Foo68.new(foo68_params)

    respond_to do |format|
      if @foo68.save
        format.html { redirect_to @foo68, notice: "Foo68 was successfully created." }
        format.json { render :show, status: :created, location: @foo68 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo68.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo68s/1 or /foo68s/1.json
  def update
    respond_to do |format|
      if @foo68.update(foo68_params)
        format.html { redirect_to @foo68, notice: "Foo68 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo68 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo68.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo68s/1 or /foo68s/1.json
  def destroy
    @foo68.destroy
    respond_to do |format|
      format.html { redirect_to foo68s_url, notice: "Foo68 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo68
      @foo68 = Foo68.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo68_params
      params.require(:foo68).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
