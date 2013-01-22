class CuponsController < ApplicationController
  # GET /cupons
  # GET /cupons.json
  def index
    @cupons = Cupon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cupons }
    end
  end

  # GET /cupons/1
  # GET /cupons/1.json
  def show
    @cupon = Cupon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @cupon }
    end
  end

  # GET /cupons/new
  # GET /cupons/new.json
  def new
    @cupon = Cupon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @cupon }
    end
  end

  # GET /cupons/1/edit
  def edit
    @cupon = Cupon.find(params[:id])
  end

  # POST /cupons
  # POST /cupons.json
  def create
    @cupon = Cupon.new(params[:cupon])

    respond_to do |format|
      if @cupon.save
        format.html { redirect_to @cupon, :notice => 'Cupon was successfully created.' }
        format.json { render :json => @cupon, :status => :created, :location => @cupon }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cupon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cupons/1
  # PUT /cupons/1.json
  def update
    @cupon = Cupon.find(params[:id])

    respond_to do |format|
      if @cupon.update_attributes(params[:cupon])
        format.html { redirect_to @cupon, :notice => 'Cupon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @cupon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cupons/1
  # DELETE /cupons/1.json
  def destroy
    @cupon = Cupon.find(params[:id])
    @cupon.destroy

    respond_to do |format|
      format.html { redirect_to cupons_url }
      format.json { head :no_content }
    end
  end
end
