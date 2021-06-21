class Foo82sController < ApplicationController
  before_action :set_foo82, only: %i[ show edit update destroy ]

  # GET /foo82s or /foo82s.json
  def index
    @foo82s = Foo82.all
  end

  # GET /foo82s/1 or /foo82s/1.json
  def show
  end

  # GET /foo82s/new
  def new
    @foo82 = Foo82.new
  end

  # GET /foo82s/1/edit
  def edit
  end

  # POST /foo82s or /foo82s.json
  def create
    @foo82 = Foo82.new(foo82_params)

    respond_to do |format|
      if @foo82.save
        format.html { redirect_to @foo82, notice: "Foo82 was successfully created." }
        format.json { render :show, status: :created, location: @foo82 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo82.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo82s/1 or /foo82s/1.json
  def update
    respond_to do |format|
      if @foo82.update(foo82_params)
        format.html { redirect_to @foo82, notice: "Foo82 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo82 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo82.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo82s/1 or /foo82s/1.json
  def destroy
    @foo82.destroy
    respond_to do |format|
      format.html { redirect_to foo82s_url, notice: "Foo82 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo82
      @foo82 = Foo82.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo82_params
      params.require(:foo82).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
