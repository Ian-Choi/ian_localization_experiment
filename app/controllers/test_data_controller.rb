class TestDataController < ApplicationController
  # GET /test_data
  # GET /test_data.xml
  def index
    @test_data = TestDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @test_data }
    end
  end

  # GET /test_data/1
  # GET /test_data/1.xml
  def show
    @test_datum = TestDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @test_datum }
    end
  end

  # GET /test_data/new
  # GET /test_data/new.xml
  def new
    @test_datum = TestDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @test_datum }
    end
  end

  # GET /test_data/1/edit
  def edit
    @test_datum = TestDatum.find(params[:id])
  end

  # POST /test_data
  # POST /test_data.xml
  def create
    @test_datum = TestDatum.new(params[:test_datum])

    respond_to do |format|
      if @test_datum.save
        format.html { redirect_to(@test_datum, :notice => 'Test datum was successfully created.') }
        format.xml  { render :xml => @test_datum, :status => :created, :location => @test_datum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @test_datum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /test_data/1
  # PUT /test_data/1.xml
  def update
    @test_datum = TestDatum.find(params[:id])

    respond_to do |format|
      if @test_datum.update_attributes(params[:test_datum])
        format.html { redirect_to(@test_datum, :notice => 'Test datum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @test_datum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /test_data/1
  # DELETE /test_data/1.xml
  def destroy
    @test_datum = TestDatum.find(params[:id])
    @test_datum.destroy

    respond_to do |format|
      format.html { redirect_to(test_data_url) }
      format.xml  { head :ok }
    end
  end
end
