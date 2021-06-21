class Foo45sController < ApplicationController
  before_action :set_foo45, only: %i[ show edit update destroy ]

  # GET /foo45s or /foo45s.json
  def index
    @foo45s = Foo45.all
  end

  # GET /foo45s/1 or /foo45s/1.json
  def show
  end

  # GET /foo45s/new
  def new
    @foo45 = Foo45.new
  end

  # GET /foo45s/1/edit
  def edit
  end

  # POST /foo45s or /foo45s.json
  def create
    @foo45 = Foo45.new(foo45_params)

    respond_to do |format|
      if @foo45.save
        format.html { redirect_to @foo45, notice: "Foo45 was successfully created." }
        format.json { render :show, status: :created, location: @foo45 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo45.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo45s/1 or /foo45s/1.json
  def update
    respond_to do |format|
      if @foo45.update(foo45_params)
        format.html { redirect_to @foo45, notice: "Foo45 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo45 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo45.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo45s/1 or /foo45s/1.json
  def destroy
    @foo45.destroy
    respond_to do |format|
      format.html { redirect_to foo45s_url, notice: "Foo45 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo45
      @foo45 = Foo45.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo45_params
      params.require(:foo45).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
