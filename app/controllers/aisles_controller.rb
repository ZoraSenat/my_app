class AislesController < ApplicationController
  def index
    @aisles = Aisle.page(params[:page]).per(10)

    render("aisles/index.html.erb")
  end

  def show
    @ingredient = Ingredient.new
    @aisle = Aisle.find(params[:id])

    render("aisles/show.html.erb")
  end

  def new
    @aisle = Aisle.new

    render("aisles/new.html.erb")
  end

  def create
    @aisle = Aisle.new


    save_status = @aisle.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/aisles/new", "/create_aisle"
        redirect_to("/aisles")
      else
        redirect_back(:fallback_location => "/", :notice => "Aisle created successfully.")
      end
    else
      render("aisles/new.html.erb")
    end
  end

  def edit
    @aisle = Aisle.find(params[:id])

    render("aisles/edit.html.erb")
  end

  def update
    @aisle = Aisle.find(params[:id])


    save_status = @aisle.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/aisles/#{@aisle.id}/edit", "/update_aisle"
        redirect_to("/aisles/#{@aisle.id}", :notice => "Aisle updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Aisle updated successfully.")
      end
    else
      render("aisles/edit.html.erb")
    end
  end

  def destroy
    @aisle = Aisle.find(params[:id])

    @aisle.destroy

    if URI(request.referer).path == "/aisles/#{@aisle.id}"
      redirect_to("/", :notice => "Aisle deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Aisle deleted.")
    end
  end
end
