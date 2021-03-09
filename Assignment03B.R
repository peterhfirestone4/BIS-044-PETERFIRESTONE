results <- read.csv("PRESIDENT_precinct_primary.csv")
trump <- 0
biden <- 0
n <- length(results$precinct)
for (i in 1:n)
{
  if (results$candidate[i] == "JOSEPH R BIDEN")
    biden = biden +results$votes[i]
  else if (results$candidate[i] == "DONALD J TRUMP")
    trump = trump + results$votes[i]
  
}
cat("votes for trump" ,trump)
cat("votes for biden",biden)


