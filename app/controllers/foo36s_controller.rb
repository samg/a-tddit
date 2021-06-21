class Foo36sController < ApplicationController
  before_action :set_foo36, only: %i[ show edit update destroy ]

  # GET /foo36s or /foo36s.json
  def index
    @foo36s = Foo36.all
  end

  # GET /foo36s/1 or /foo36s/1.json
  def show
  end

  # GET /foo36s/new
  def new
    @foo36 = Foo36.new
  end

  # GET /foo36s/1/edit
  def edit
  end

  # POST /foo36s or /foo36s.json
  def create
    @foo36 = Foo36.new(foo36_params)

    respond_to do |format|
      if @foo36.save
        format.html { redirect_to @foo36, notice: "Foo36 was successfully created." }
        format.json { render :show, status: :created, location: @foo36 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo36.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo36s/1 or /foo36s/1.json
  def update
    respond_to do |format|
      if @foo36.update(foo36_params)
        format.html { redirect_to @foo36, notice: "Foo36 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo36 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo36.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo36s/1 or /foo36s/1.json
  def destroy
    @foo36.destroy
    respond_to do |format|
      format.html { redirect_to foo36s_url, notice: "Foo36 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo36
      @foo36 = Foo36.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo36_params
      params.require(:foo36).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
