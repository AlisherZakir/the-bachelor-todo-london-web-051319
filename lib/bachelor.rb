def get_first_name_of_season_winner(data, season)
  # code here
  winner = data[season].find do |x|
    x["status"] = "Winner"
  end
  winner["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  seasons = data.keys
  found = {}
  seasons.each do |season|
    data[season].each do |person|
      found = person if person["occupation"] == occupation
    end
  end
  found["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  seasons = data.keys
  counter = 0
  seasons.each do |season|
    data[season].each do |person|
      counter+= 1 if person["hometown"] == hometown
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  seasons = data.keys
  found = {}
  seasons.each do |season|
    data[season].each do |person|
      found = person if person["hometown"] == hometown
      break if found != {}
    end
    break if found != {}
  end
  found["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  average = data[season].inject(0) {|sum, person| sum  + person["age"].to_i}.to_f / data[season].size
  average.round
end
