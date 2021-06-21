class Foo21sController < ApplicationController
  before_action :set_foo21, only: %i[ show edit update destroy ]

  # GET /foo21s or /foo21s.json
  def index
    @foo21s = Foo21.all
  end

  # GET /foo21s/1 or /foo21s/1.json
  def show
  end

  # GET /foo21s/new
  def new
    @foo21 = Foo21.new
  end

  # GET /foo21s/1/edit
  def edit
  end

  # POST /foo21s or /foo21s.json
  def create
    @foo21 = Foo21.new(foo21_params)

    respond_to do |format|
      if @foo21.save
        format.html { redirect_to @foo21, notice: "Foo21 was successfully created." }
        format.json { render :show, status: :created, location: @foo21 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo21.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo21s/1 or /foo21s/1.json
  def update
    respond_to do |format|
      if @foo21.update(foo21_params)
        format.html { redirect_to @foo21, notice: "Foo21 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo21 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo21.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo21s/1 or /foo21s/1.json
  def destroy
    @foo21.destroy
    respond_to do |format|
      format.html { redirect_to foo21s_url, notice: "Foo21 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo21
      @foo21 = Foo21.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo21_params
      params.require(:foo21).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
