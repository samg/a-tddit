class Foo100sController < ApplicationController
  before_action :set_foo100, only: %i[ show edit update destroy ]

  # GET /foo100s or /foo100s.json
  def index
    @foo100s = Foo100.all
  end

  # GET /foo100s/1 or /foo100s/1.json
  def show
  end

  # GET /foo100s/new
  def new
    @foo100 = Foo100.new
  end

  # GET /foo100s/1/edit
  def edit
  end

  # POST /foo100s or /foo100s.json
  def create
    @foo100 = Foo100.new(foo100_params)

    respond_to do |format|
      if @foo100.save
        format.html { redirect_to @foo100, notice: "Foo100 was successfully created." }
        format.json { render :show, status: :created, location: @foo100 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo100.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo100s/1 or /foo100s/1.json
  def update
    respond_to do |format|
      if @foo100.update(foo100_params)
        format.html { redirect_to @foo100, notice: "Foo100 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo100 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo100.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo100s/1 or /foo100s/1.json
  def destroy
    @foo100.destroy
    respond_to do |format|
      format.html { redirect_to foo100s_url, notice: "Foo100 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo100
      @foo100 = Foo100.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo100_params
      params.require(:foo100).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
