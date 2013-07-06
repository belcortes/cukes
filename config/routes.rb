RailsCukeLab::Application.routes.draw do

  match '/add' => 'calculator#add'
  match '/subtract' => 'calculator#subtract'
  match '/multiply' => 'calculator#multiply'



end
