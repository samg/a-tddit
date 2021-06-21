class Foo92sController < ApplicationController
  before_action :set_foo92, only: %i[ show edit update destroy ]

  # GET /foo92s or /foo92s.json
  def index
    @foo92s = Foo92.all
  end

  # GET /foo92s/1 or /foo92s/1.json
  def show
  end

  # GET /foo92s/new
  def new
    @foo92 = Foo92.new
  end

  # GET /foo92s/1/edit
  def edit
  end

  # POST /foo92s or /foo92s.json
  def create
    @foo92 = Foo92.new(foo92_params)

    respond_to do |format|
      if @foo92.save
        format.html { redirect_to @foo92, notice: "Foo92 was successfully created." }
        format.json { render :show, status: :created, location: @foo92 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo92.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo92s/1 or /foo92s/1.json
  def update
    respond_to do |format|
      if @foo92.update(foo92_params)
        format.html { redirect_to @foo92, notice: "Foo92 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo92 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo92.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo92s/1 or /foo92s/1.json
  def destroy
    @foo92.destroy
    respond_to do |format|
      format.html { redirect_to foo92s_url, notice: "Foo92 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo92
      @foo92 = Foo92.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo92_params
      params.require(:foo92).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
