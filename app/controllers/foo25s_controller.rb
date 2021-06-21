class Foo25sController < ApplicationController
  before_action :set_foo25, only: %i[ show edit update destroy ]

  # GET /foo25s or /foo25s.json
  def index
    @foo25s = Foo25.all
  end

  # GET /foo25s/1 or /foo25s/1.json
  def show
  end

  # GET /foo25s/new
  def new
    @foo25 = Foo25.new
  end

  # GET /foo25s/1/edit
  def edit
  end

  # POST /foo25s or /foo25s.json
  def create
    @foo25 = Foo25.new(foo25_params)

    respond_to do |format|
      if @foo25.save
        format.html { redirect_to @foo25, notice: "Foo25 was successfully created." }
        format.json { render :show, status: :created, location: @foo25 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo25.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo25s/1 or /foo25s/1.json
  def update
    respond_to do |format|
      if @foo25.update(foo25_params)
        format.html { redirect_to @foo25, notice: "Foo25 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo25 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo25.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo25s/1 or /foo25s/1.json
  def destroy
    @foo25.destroy
    respond_to do |format|
      format.html { redirect_to foo25s_url, notice: "Foo25 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo25
      @foo25 = Foo25.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo25_params
      params.require(:foo25).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
