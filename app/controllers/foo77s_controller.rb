class Foo77sController < ApplicationController
  before_action :set_foo77, only: %i[ show edit update destroy ]

  # GET /foo77s or /foo77s.json
  def index
    @foo77s = Foo77.all
  end

  # GET /foo77s/1 or /foo77s/1.json
  def show
  end

  # GET /foo77s/new
  def new
    @foo77 = Foo77.new
  end

  # GET /foo77s/1/edit
  def edit
  end

  # POST /foo77s or /foo77s.json
  def create
    @foo77 = Foo77.new(foo77_params)

    respond_to do |format|
      if @foo77.save
        format.html { redirect_to @foo77, notice: "Foo77 was successfully created." }
        format.json { render :show, status: :created, location: @foo77 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo77.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo77s/1 or /foo77s/1.json
  def update
    respond_to do |format|
      if @foo77.update(foo77_params)
        format.html { redirect_to @foo77, notice: "Foo77 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo77 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo77.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo77s/1 or /foo77s/1.json
  def destroy
    @foo77.destroy
    respond_to do |format|
      format.html { redirect_to foo77s_url, notice: "Foo77 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo77
      @foo77 = Foo77.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo77_params
      params.require(:foo77).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
