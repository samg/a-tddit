class Foo62sController < ApplicationController
  before_action :set_foo62, only: %i[ show edit update destroy ]

  # GET /foo62s or /foo62s.json
  def index
    @foo62s = Foo62.all
  end

  # GET /foo62s/1 or /foo62s/1.json
  def show
  end

  # GET /foo62s/new
  def new
    @foo62 = Foo62.new
  end

  # GET /foo62s/1/edit
  def edit
  end

  # POST /foo62s or /foo62s.json
  def create
    @foo62 = Foo62.new(foo62_params)

    respond_to do |format|
      if @foo62.save
        format.html { redirect_to @foo62, notice: "Foo62 was successfully created." }
        format.json { render :show, status: :created, location: @foo62 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo62.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo62s/1 or /foo62s/1.json
  def update
    respond_to do |format|
      if @foo62.update(foo62_params)
        format.html { redirect_to @foo62, notice: "Foo62 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo62 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo62.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo62s/1 or /foo62s/1.json
  def destroy
    @foo62.destroy
    respond_to do |format|
      format.html { redirect_to foo62s_url, notice: "Foo62 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo62
      @foo62 = Foo62.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo62_params
      params.require(:foo62).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
