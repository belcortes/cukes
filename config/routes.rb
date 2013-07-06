RailsCukeLab::Application.routes.draw do

  match '/add' => 'calculator#add'
  match '/subtract' => 'calculator#subtract'



end
