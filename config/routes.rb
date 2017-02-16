Rails.application.routes.draw do
  resources :cocktails, only: [:create, :new, :index, :show] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]

  root :to => "homes#index"
end


# A user can see the list of all cocktails
# GET "cocktails"
# A user can see the details of a given cocktail, with the ingredient list
# GET "cocktails/42"
# A user can create a new cocktail.
# GET "cocktails/new"
# POST "cocktails"
# A user can add a new dose (ingredient/description pair) on an existing cocktail.
# GET "cocktails/42/doses/new"
# POST "cocktails/42/doses"
# A user can delete a dose on an existing cocktail
# DELETE "doses/25"
