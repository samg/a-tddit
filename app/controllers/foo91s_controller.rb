class Foo91sController < ApplicationController
  before_action :set_foo91, only: %i[ show edit update destroy ]

  # GET /foo91s or /foo91s.json
  def index
    @foo91s = Foo91.all
  end

  # GET /foo91s/1 or /foo91s/1.json
  def show
  end

  # GET /foo91s/new
  def new
    @foo91 = Foo91.new
  end

  # GET /foo91s/1/edit
  def edit
  end

  # POST /foo91s or /foo91s.json
  def create
    @foo91 = Foo91.new(foo91_params)

    respond_to do |format|
      if @foo91.save
        format.html { redirect_to @foo91, notice: "Foo91 was successfully created." }
        format.json { render :show, status: :created, location: @foo91 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo91.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo91s/1 or /foo91s/1.json
  def update
    respond_to do |format|
      if @foo91.update(foo91_params)
        format.html { redirect_to @foo91, notice: "Foo91 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo91 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo91.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo91s/1 or /foo91s/1.json
  def destroy
    @foo91.destroy
    respond_to do |format|
      format.html { redirect_to foo91s_url, notice: "Foo91 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo91
      @foo91 = Foo91.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo91_params
      params.require(:foo91).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
