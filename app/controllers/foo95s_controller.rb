class Foo95sController < ApplicationController
  before_action :set_foo95, only: %i[ show edit update destroy ]

  # GET /foo95s or /foo95s.json
  def index
    @foo95s = Foo95.all
  end

  # GET /foo95s/1 or /foo95s/1.json
  def show
  end

  # GET /foo95s/new
  def new
    @foo95 = Foo95.new
  end

  # GET /foo95s/1/edit
  def edit
  end

  # POST /foo95s or /foo95s.json
  def create
    @foo95 = Foo95.new(foo95_params)

    respond_to do |format|
      if @foo95.save
        format.html { redirect_to @foo95, notice: "Foo95 was successfully created." }
        format.json { render :show, status: :created, location: @foo95 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo95.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo95s/1 or /foo95s/1.json
  def update
    respond_to do |format|
      if @foo95.update(foo95_params)
        format.html { redirect_to @foo95, notice: "Foo95 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo95 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo95.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo95s/1 or /foo95s/1.json
  def destroy
    @foo95.destroy
    respond_to do |format|
      format.html { redirect_to foo95s_url, notice: "Foo95 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo95
      @foo95 = Foo95.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo95_params
      params.require(:foo95).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
