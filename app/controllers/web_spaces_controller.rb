class WebSpacesController < AuthorizedController
  # GET /web_spaces
  # GET /web_spaces.xml
  def index
    @web_spaces = WebSpace.all
    @teachers = Teacher.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @web_spaces }
    end
  end

  # GET /web_spaces/1
  # GET /web_spaces/1.xml
  def show
    @web_space = WebSpace.find(params[:id])
    @teachers = Teacher.all
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @web_space }
    end
  end

  # GET /web_spaces/new
  # GET /web_spaces/new.xml
  def new
    @web_space = WebSpace.new
    @teachers = Teacher.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @web_space }
    end
  end

  # GET /web_spaces/1/edit
  def edit
    @web_space = WebSpace.find(params[:id])
    @teachers = Teacher.all
    
  end

  # POST /web_spaces
  # POST /web_spaces.xml
  def create
    @web_space = WebSpace.new(params[:web_space])

    respond_to do |format|
      if @web_space.save
        format.html { redirect_to(@web_space, :notice => 'Web space was successfully created.') }
        format.xml  { render :xml => @web_space, :status => :created, :location => @web_space }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @web_space.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /web_spaces/1
  # PUT /web_spaces/1.xml
  def update
    @web_space = WebSpace.find(params[:id])

    respond_to do |format|
      if @web_space.update_attributes(params[:web_space])
        format.html { redirect_to(@web_space, :notice => 'Web space was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @web_space.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /web_spaces/1
  # DELETE /web_spaces/1.xml
  def destroy
    @web_space = WebSpace.find(params[:id])
    @web_space.destroy

    respond_to do |format|
      format.html { redirect_to(web_spaces_url) }
      format.xml  { head :ok }
    end
  end
end
