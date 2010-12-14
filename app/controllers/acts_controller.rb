class ActsController < ApplicationController
  # GET /acts
  # GET /acts.xml
  def index
    @acts = Act.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @acts }
    end
  end

  # GET /acts/1
  # GET /acts/1.xml
  def show
    @act = Act.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @act }
    end
  end

  # GET /acts/new
  # GET /acts/new.xml
  def new
    @act = Act.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @act }
    end
  end

  # GET /acts/1/edit
  def edit
    @act = Act.find(params[:id])
  end

  # POST /acts
  # POST /acts.xml
  def create
    @act = Act.new(params[:act])

    respond_to do |format|
      if @act.save
        format.html { redirect_to(@act, :notice => 'Act was successfully created.') }
        format.xml  { render :xml => @act, :status => :created, :location => @act }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /acts/1
  # PUT /acts/1.xml
  def update
    @act = Act.find(params[:id])

    respond_to do |format|
      if @act.update_attributes(params[:act])
        format.html { redirect_to(@act, :notice => 'Act was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @act.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /acts/1
  # DELETE /acts/1.xml
  def destroy
    @act = Act.find(params[:id])
    @act.destroy

    respond_to do |format|
      format.html { redirect_to(acts_url) }
      format.xml  { head :ok }
    end
  end
end
