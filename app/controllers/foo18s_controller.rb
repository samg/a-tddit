class Foo18sController < ApplicationController
  before_action :set_foo18, only: %i[ show edit update destroy ]

  # GET /foo18s or /foo18s.json
  def index
    @foo18s = Foo18.all
  end

  # GET /foo18s/1 or /foo18s/1.json
  def show
  end

  # GET /foo18s/new
  def new
    @foo18 = Foo18.new
  end

  # GET /foo18s/1/edit
  def edit
  end

  # POST /foo18s or /foo18s.json
  def create
    @foo18 = Foo18.new(foo18_params)

    respond_to do |format|
      if @foo18.save
        format.html { redirect_to @foo18, notice: "Foo18 was successfully created." }
        format.json { render :show, status: :created, location: @foo18 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo18.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo18s/1 or /foo18s/1.json
  def update
    respond_to do |format|
      if @foo18.update(foo18_params)
        format.html { redirect_to @foo18, notice: "Foo18 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo18 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo18.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo18s/1 or /foo18s/1.json
  def destroy
    @foo18.destroy
    respond_to do |format|
      format.html { redirect_to foo18s_url, notice: "Foo18 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo18
      @foo18 = Foo18.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo18_params
      params.require(:foo18).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
