class Foo23sController < ApplicationController
  before_action :set_foo23, only: %i[ show edit update destroy ]

  # GET /foo23s or /foo23s.json
  def index
    @foo23s = Foo23.all
  end

  # GET /foo23s/1 or /foo23s/1.json
  def show
  end

  # GET /foo23s/new
  def new
    @foo23 = Foo23.new
  end

  # GET /foo23s/1/edit
  def edit
  end

  # POST /foo23s or /foo23s.json
  def create
    @foo23 = Foo23.new(foo23_params)

    respond_to do |format|
      if @foo23.save
        format.html { redirect_to @foo23, notice: "Foo23 was successfully created." }
        format.json { render :show, status: :created, location: @foo23 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo23.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo23s/1 or /foo23s/1.json
  def update
    respond_to do |format|
      if @foo23.update(foo23_params)
        format.html { redirect_to @foo23, notice: "Foo23 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo23 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo23.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo23s/1 or /foo23s/1.json
  def destroy
    @foo23.destroy
    respond_to do |format|
      format.html { redirect_to foo23s_url, notice: "Foo23 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo23
      @foo23 = Foo23.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo23_params
      params.require(:foo23).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
