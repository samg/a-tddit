class Foo53sController < ApplicationController
  before_action :set_foo53, only: %i[ show edit update destroy ]

  # GET /foo53s or /foo53s.json
  def index
    @foo53s = Foo53.all
  end

  # GET /foo53s/1 or /foo53s/1.json
  def show
  end

  # GET /foo53s/new
  def new
    @foo53 = Foo53.new
  end

  # GET /foo53s/1/edit
  def edit
  end

  # POST /foo53s or /foo53s.json
  def create
    @foo53 = Foo53.new(foo53_params)

    respond_to do |format|
      if @foo53.save
        format.html { redirect_to @foo53, notice: "Foo53 was successfully created." }
        format.json { render :show, status: :created, location: @foo53 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @foo53.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foo53s/1 or /foo53s/1.json
  def update
    respond_to do |format|
      if @foo53.update(foo53_params)
        format.html { redirect_to @foo53, notice: "Foo53 was successfully updated." }
        format.json { render :show, status: :ok, location: @foo53 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @foo53.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foo53s/1 or /foo53s/1.json
  def destroy
    @foo53.destroy
    respond_to do |format|
      format.html { redirect_to foo53s_url, notice: "Foo53 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foo53
      @foo53 = Foo53.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def foo53_params
      params.require(:foo53).permit(:foo1, :foo2, :foo3, :foo4, :foo5)
    end
end
