class Foo50sController < ApplicationController
  before_action :set_foo50, only: %i[ show edit update destroy ]

  # GET /foo50s or /foo50s.json
  def index
    @foo50s = Foo50.all
  end

  # GET /foo50s/1 or /foo50s/1.json
  def show
  end

  # GET /foo50s/new
  def new
    @foo50 = Foo50.new
  end

  # GET /foo50s/1/edit
  def edit
  end

  # POST /foo50s or /foo50s.json
  def create
    @foo50 = Foo50.new(foo50_params)

    respond_to do |format|
      if @foo50.save
        format.html { redirect_to @foo50, notice: "Foo50 was successfully created." }
        format.json { render :show, status: :created, location: @foo50 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo50.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo50s/1 or /foo50s/1.json
  def update
    respond_to do |format|
      if @foo50.update(foo50_params)
        format.html { redirect_to @foo50, notice: "Foo50 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo50 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo50.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo50s/1 or /foo50s/1.json
  def destroy
    @foo50.destroy
    respond_to do |format|
      format.html { redirect_to foo50s_url, notice: "Foo50 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo50
      @foo50 = Foo50.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo50_params
      params.require(:foo50).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
