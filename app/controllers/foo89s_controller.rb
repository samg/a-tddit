class Foo89sController < ApplicationController
  before_action :set_foo89, only: %i[ show edit update destroy ]

  # GET /foo89s or /foo89s.json
  def index
    @foo89s = Foo89.all
  end

  # GET /foo89s/1 or /foo89s/1.json
  def show
  end

  # GET /foo89s/new
  def new
    @foo89 = Foo89.new
  end

  # GET /foo89s/1/edit
  def edit
  end

  # POST /foo89s or /foo89s.json
  def create
    @foo89 = Foo89.new(foo89_params)

    respond_to do |format|
      if @foo89.save
        format.html { redirect_to @foo89, notice: "Foo89 was successfully created." }
        format.json { render :show, status: :created, location: @foo89 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo89.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo89s/1 or /foo89s/1.json
  def update
    respond_to do |format|
      if @foo89.update(foo89_params)
        format.html { redirect_to @foo89, notice: "Foo89 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo89 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo89.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo89s/1 or /foo89s/1.json
  def destroy
    @foo89.destroy
    respond_to do |format|
      format.html { redirect_to foo89s_url, notice: "Foo89 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo89
      @foo89 = Foo89.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo89_params
      params.require(:foo89).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
