class IngredientAscsController < ApplicationController
  def index
    @ingredient_ascs = IngredientAsc.all

    render("ingredient_ascs/index.html.erb")
  end

  def show
    @ingredient_asc = IngredientAsc.find(params[:id])

    render("ingredient_ascs/show.html.erb")
  end

  def new
    @ingredient_asc = IngredientAsc.new

    render("ingredient_ascs/new.html.erb")
  end

  def create
    @ingredient_asc = IngredientAsc.new

    @ingredient_asc.ingredient_id = params[:ingredient_id]
    @ingredient_asc.r_id = params[:r_id]

    save_status = @ingredient_asc.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ingredient_ascs/new", "/create_ingredient_asc"
        redirect_to("/ingredient_ascs")
      else
        redirect_back(:fallback_location => "/", :notice => "Ingredient asc created successfully.")
      end
    else
      render("ingredient_ascs/new.html.erb")
    end
  end

  def edit
    @ingredient_asc = IngredientAsc.find(params[:id])

    render("ingredient_ascs/edit.html.erb")
  end

  def update
    @ingredient_asc = IngredientAsc.find(params[:id])

    @ingredient_asc.ingredient_id = params[:ingredient_id]
    @ingredient_asc.r_id = params[:r_id]

    save_status = @ingredient_asc.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ingredient_ascs/#{@ingredient_asc.id}/edit", "/update_ingredient_asc"
        redirect_to("/ingredient_ascs/#{@ingredient_asc.id}", :notice => "Ingredient asc updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Ingredient asc updated successfully.")
      end
    else
      render("ingredient_ascs/edit.html.erb")
    end
  end

  def destroy
    @ingredient_asc = IngredientAsc.find(params[:id])

    @ingredient_asc.destroy

    if URI(request.referer).path == "/ingredient_ascs/#{@ingredient_asc.id}"
      redirect_to("/", :notice => "Ingredient asc deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Ingredient asc deleted.")
    end
  end
end
