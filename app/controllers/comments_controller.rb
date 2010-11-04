class CommentsController < ApplicationController
  before_filter :authenticate, :except => [:create]

  # GET /comments
  # GET /comments.xml
  def index
    @comments = Comment.order("id DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.xml
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.xml
  def create
    @strip = Strip.find(params[:strip_id])
    unless ["68.0.45.188", "82.127.120.116", "72.3.253.204", "143.167.8.123", "173.61.110.35", "12.168.203.132", "208.73.177.89", "91.212.226.3", "111.160.70.139", "94.56.0.211", "195.134.102.37", "74.7.131.97"].index(request.remote_ip)
      @comment = @strip.comments.create(params[:comment])
    end
    redirect_to strip_path(@strip) 

#    respond_to do |format|
#      if @comment.save
#        format.html { redirect_to(@comment, :notice => 'Comment was successfully created.') }
#        format.xml  { render :xml => @comment, :status => :created, :location => @comment }
#      else
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
#      end
#    end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to(@comment, :notice => 'Comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(comments_url) }
      format.xml  { head :ok }
    end
  end
end
