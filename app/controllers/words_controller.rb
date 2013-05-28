class WordsController < ApplicationController
  # GET /words
  # GET /words.json
  def index
    @words = Word.all
    respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @words }
    end
  end

  def live_search
    @searchphrase = "<%" + params[:query] + "%>"
    @results = Word.find( :all, :conditions => [ "Descrioption like ?" , @searchphrase ])
     
     respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @words }
   end
  end

  # GET /words/1
  # GET /words/1.json
  def show
   @word = Word.find(3)
      #@word = Word.find(params[:id])
    #@searchphrase =  params[:query] 
    #@word = Word.find( :all, :conditions => [ "polskie = ?", @searchphrase ])
     
     #Client.first(:conditions => ["orders_count = ?", params[:orders]])
    respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @words }
    end
  
  end

  # PUT /words/1
  # PUT /words/1.json
  def find
    @word = Word.where(:polskie => params[:word]).first
  end


  # GET /words/new
  # GET /words/new.json
  def new
    @word = Word.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @word }
    end
  end

  # GET /words/1/edit
  def edit
    @word = Word.find(5)
     respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @word }
    end
  end

  # POST /words
  # POST /words.json
  def create
    @word = Word.new(params[:word])

    respond_to do |format|
      if @word.save
        format.html { redirect_to @word, notice: 'Word was successfully created.' }
        format.json { render json: @word, status: :created, location: @word }
      else
        format.html { render action: "new" }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /words/1
  # PUT /words/1.json
  def update
    @word = Word.find(params[:id])

    respond_to do |format|
      if @word.update_attributes(params[:word])
        format.html { redirect_to @word, notice: 'Word was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @word = Word.find(params[:id])
    @word.destroy

    respond_to do |format|
      format.html { redirect_to words_url }
      format.json { head :no_content }
    end
  end
end
