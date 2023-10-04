### FACTORS

# Factors can help you to store character data.
# By using factors it is easier to perform calculations.
# Some commands require factorsd to be executed.

iris
# as we can see we have a long character column

iris$Species
# the problem is that it is sometimes inefficient to handle long characters
# solution: create a vector of factors

as.integer(iris$Species)

# factors can be stored as integers - quite handy

# and you can add that to your data frame

FactorSp = as.integer(iris$Species)

newiris = cbind(iris, FactorSp)
newiris

### Exercise

# Get familiar with the dataset iris.
summary(iris)
head(iris)
names(iris)

# For further convenience I recommend to attach this dataset.
attach(iris)
summary(Species)

# Learn more about the last column Species -how many Species are there?

# Let us assume we are only interested in the Species virginica
#### Create a logical vector (myFilter) with virginica is T, otherwise F
#### Add it to the dataframe and call it newiris
myFilter = (Species=="virginica") # watch the equations at caharcters
myFilter

# Create the data frame virginica.s which consists of:
#### Sepal.length and Sepal.Width of the newiris dataset.
newiris = cbind(iris, myFilter)
names(newiris)
virginica.s = newiris[myFilter==T, c("Sepal.Legth", "Sepal.width")]
virginica.s

# Check the class of this new data frame
class(virginica.s)

