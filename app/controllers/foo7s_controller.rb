class Foo7sController < ApplicationController
  before_action :set_foo7, only: %i[ show edit update destroy ]

  # GET /foo7s or /foo7s.json
  def index
    @foo7s = Foo7.all
  end

  # GET /foo7s/1 or /foo7s/1.json
  def show
  end

  # GET /foo7s/new
  def new
    @foo7 = Foo7.new
  end

  # GET /foo7s/1/edit
  def edit
  end

  # POST /foo7s or /foo7s.json
  def create
    @foo7 = Foo7.new(foo7_params)

    respond_to do |format|
      if @foo7.save
        format.html { redirect_to @foo7, notice: "Foo7 was successfully created." }
        format.json { render :show, status: :created, location: @foo7 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo7s/1 or /foo7s/1.json
  def update
    respond_to do |format|
      if @foo7.update(foo7_params)
        format.html { redirect_to @foo7, notice: "Foo7 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo7 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo7s/1 or /foo7s/1.json
  def destroy
    @foo7.destroy
    respond_to do |format|
      format.html { redirect_to foo7s_url, notice: "Foo7 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo7
      @foo7 = Foo7.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo7_params
      params.require(:foo7).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
