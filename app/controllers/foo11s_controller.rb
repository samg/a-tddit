class Foo11sController < ApplicationController
  before_action :set_foo11, only: %i[ show edit update destroy ]

  # GET /foo11s or /foo11s.json
  def index
    @foo11s = Foo11.all
  end

  # GET /foo11s/1 or /foo11s/1.json
  def show
  end

  # GET /foo11s/new
  def new
    @foo11 = Foo11.new
  end

  # GET /foo11s/1/edit
  def edit
  end

  # POST /foo11s or /foo11s.json
  def create
    @foo11 = Foo11.new(foo11_params)

    respond_to do |format|
      if @foo11.save
        format.html { redirect_to @foo11, notice: "Foo11 was successfully created." }
        format.json { render :show, status: :created, location: @foo11 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo11.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo11s/1 or /foo11s/1.json
  def update
    respond_to do |format|
      if @foo11.update(foo11_params)
        format.html { redirect_to @foo11, notice: "Foo11 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo11 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo11.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo11s/1 or /foo11s/1.json
  def destroy
    @foo11.destroy
    respond_to do |format|
      format.html { redirect_to foo11s_url, notice: "Foo11 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo11
      @foo11 = Foo11.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo11_params
      params.require(:foo11).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
