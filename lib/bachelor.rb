require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |item|
    if item["status"] == "Winner"
      return item["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season|
    season[1].each do |person|
    if person["occupation"] == occupation
      return person["name"]
    end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  answer = 0
  data.each do |season|
    season[1].each do |person|
      if person["hometown"] == hometown
        answer += 1
      end
    end
  end
  answer
end

def get_occupation(data, hometown)
  # code here
  data.each do |season|
    season[1].each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total = 0
  players = 0
    data[season].each do |person|
      total += person["age"].to_i
      players += 1.0
    end
  (total / players).round
end
