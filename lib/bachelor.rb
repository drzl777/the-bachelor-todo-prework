def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each {|contestant|
    return contestant["name"].split[0] if contestant["status"] == "Winner"
  }
end

def get_contestant_name(data, occupation)
  # code here
  data.each {|season, contestants|
    contestants.each{|contestant|
      return contestant["name"] if contestant["occupation"] == occupation
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each{|season,contestants|
    contestants.each{|contestant|
      count += 1 if contestant["hometown"] == hometown
    }
  }
  count
end

def get_occupation(data, hometown)
  # code here
  data.each {|season, contestants|
    contestants.each{|contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    }
  }
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  data[season].each{|contestant|
    age += contestant["age"].to_f
  }
  (age/data[season].length).round
end
