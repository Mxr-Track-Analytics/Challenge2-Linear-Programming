library(lpSolve)
# specifying cost matrix 
cost.mat <- matrix(nrow=3,ncol=4)
cost.mat[1,] <- 1:4
cost.mat[2,] <- 4:1
cost.mat[3,] <- c(1,5,3,2)
# this is a minimization problem
direction = "min"

# capacity may not be exceeded
row.signs <- rep("<=",3)
row.rhs <- c(100,300,400)

# demand must be satisfied
col.signs <- rep(">=",4)
col.rhs <- c(100,100,200,400)

# solve and assign lp object
solution <- lp.transport(cost.mat = cost.mat,
                         direction = direction,
                         row.signs = row.signs,
                         row.rhs = row.rhs,
                         col.signs = col.signs,
                         col.rhs = col.rhs)
solution$solution
