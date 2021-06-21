class Foo39sController < ApplicationController
  before_action :set_foo39, only: %i[ show edit update destroy ]

  # GET /foo39s or /foo39s.json
  def index
    @foo39s = Foo39.all
  end

  # GET /foo39s/1 or /foo39s/1.json
  def show
  end

  # GET /foo39s/new
  def new
    @foo39 = Foo39.new
  end

  # GET /foo39s/1/edit
  def edit
  end

  # POST /foo39s or /foo39s.json
  def create
    @foo39 = Foo39.new(foo39_params)

    respond_to do |format|
      if @foo39.save
        format.html { redirect_to @foo39, notice: "Foo39 was successfully created." }
        format.json { render :show, status: :created, location: @foo39 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo39.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo39s/1 or /foo39s/1.json
  def update
    respond_to do |format|
      if @foo39.update(foo39_params)
        format.html { redirect_to @foo39, notice: "Foo39 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo39 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo39.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo39s/1 or /foo39s/1.json
  def destroy
    @foo39.destroy
    respond_to do |format|
      format.html { redirect_to foo39s_url, notice: "Foo39 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo39
      @foo39 = Foo39.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo39_params
      params.require(:foo39).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
