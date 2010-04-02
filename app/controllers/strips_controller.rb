class StripsController < ApplicationController
  before_filter :authenticate, :except => [:index, :show]

  # GET /strips
  # GET /strips.xml
  def index
    @strips = Strip.all
    @strip = Strip.last

    @prev = @strips[(@strips.index(@strip) - 1)]
    @next = @strips.first

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @strips }
    end
  end

  # GET /strips/1
  # GET /strips/1.xml
  def show
    @strips = Strip.all
    @strip = Strip.find(params[:id])

    @prev = @strips[(@strips.index(@strip) - 1)]
    @next = @strips[(@strips.index(@strip) + 1)] || @strips.first

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @strip }
    end
  end

  # GET /strips/new
  # GET /strips/new.xml
  def new
    @strip = Strip.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @strip }
    end
  end

  # GET /strips/1/edit
  def edit
    @strip = Strip.find(params[:id])
  end

  # POST /strips
  # POST /strips.xml
  def create
    @strip = Strip.new(params[:strip])

    respond_to do |format|
      if @strip.save
        format.html { redirect_to(@strip, :notice => 'Strip was successfully created.') }
        format.xml  { render :xml => @strip, :status => :created, :location => @strip }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @strip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /strips/1
  # PUT /strips/1.xml
  def update
    @strip = Strip.find(params[:id])

    respond_to do |format|
      if @strip.update_attributes(params[:strip])
        format.html { redirect_to(@strip, :notice => 'Strip was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @strip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /strips/1
  # DELETE /strips/1.xml
  def destroy
    @strip = Strip.find(params[:id])
    @strip.destroy

    respond_to do |format|
      format.html { redirect_to(strips_url) }
      format.xml  { head :ok }
    end
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "kachchha"
    end
  end
end
