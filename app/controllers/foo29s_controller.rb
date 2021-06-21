class Foo29sController < ApplicationController
  before_action :set_foo29, only: %i[ show edit update destroy ]

  # GET /foo29s or /foo29s.json
  def index
    @foo29s = Foo29.all
  end

  # GET /foo29s/1 or /foo29s/1.json
  def show
  end

  # GET /foo29s/new
  def new
    @foo29 = Foo29.new
  end

  # GET /foo29s/1/edit
  def edit
  end

  # POST /foo29s or /foo29s.json
  def create
    @foo29 = Foo29.new(foo29_params)

    respond_to do |format|
      if @foo29.save
        format.html { redirect_to @foo29, notice: "Foo29 was successfully created." }
        format.json { render :show, status: :created, location: @foo29 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo29.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo29s/1 or /foo29s/1.json
  def update
    respond_to do |format|
      if @foo29.update(foo29_params)
        format.html { redirect_to @foo29, notice: "Foo29 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo29 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo29.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo29s/1 or /foo29s/1.json
  def destroy
    @foo29.destroy
    respond_to do |format|
      format.html { redirect_to foo29s_url, notice: "Foo29 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo29
      @foo29 = Foo29.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo29_params
      params.require(:foo29).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
