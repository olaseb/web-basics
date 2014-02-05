get '/' do
  @coach_message = params[:coach_message] || "What is your year of birth ?"
  # Look in app/views/index.erb
  
  puts "self : #{self}"
  puts "self class: #{self.class}"
  puts "self instance variables from GET '/' route handler: #{self.instance_variables}"
  erb :index
end



post '/coach' do
  puts "self instance variable from POST '/coach' route handler: #{self.instance_variables}"
  

  @years = params[:years]

  if @years.empty?
    @coach_message = "Is not ashamed"
  end

  if params[:verification].include? ('yes')
    @coach_label2 = "Ok! you have a good #{@years} years"
  else
    @coach_label2 =  "Responds yes or no !"
  end


  erb :index
end