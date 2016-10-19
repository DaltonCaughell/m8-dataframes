# Exercise 7: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`

# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed

# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game

# What is the score of the game where the Huskies had the most combined yards?

# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played

# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable


husky.games.2015 <- read.csv("data\\huskies_2015.csv")
husky.games.2016 <- read.csv("data\\huskies_2016.csv")

not.huskies <- as.vector(husky.games.2015$opponent)

husky.scores <- as.vector(husky.games.2015$uw_score)

rushing.yards <- sum(husky.games.2015$rushing_yards)

passing.yards <- sum(husky.games.2015$passing_yards)

combined.yards <- rushing.yards + passing.yards

MostYardsScore <- function(games) {
  tmp <- games$rushing_yards + games$passing_yards
  return(paste("UW vs ", games[which.max(tmp),]$opponent, " scored ",
         games[which.max(tmp),]$uw_score, " points ", " on ", games[which.max(tmp),]$date))
}

top.2015 <- MostYardsScore(husky.games.2015)
top.2016 <- MostYardsScore(husky.games.2016)