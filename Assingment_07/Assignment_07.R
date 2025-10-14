# Load an existing dataset (e.g., data("mtcars")) or download/create your own.
# Show the first few rows with head() and describe its structure with str().

#load dataset
data("mtcars")

head(mtcars)
str(mtcars)

#2. Test Generic Functions
summary(mtcars)
print(mtcars)

# 3.0 Explore S3 vs. S4

s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

setClass("student_s4", 
    slots = c(name = "character", age = "numeric", GPA = "numeric"))
s4_obj <- new("student_s4", name = "Myself", age = 29, GPA = 3.5)

# Simple print implementations for S3 and S4
print.student_s3 <- function(x, ...) {
  cat(sprintf("S3 student: name=%s, age=%g, GPA=%.2f\n", x$name, x$age, x$GPA))
  invisible(x)
}

setMethod("show", "student_s4", function(object) {
  cat(sprintf("S4 student: name=%s, age=%g, GPA=%.2f\n", object@name, object@age, object@GPA))
})

print(s3_obj)
print(s4_obj)

class(s3_obj)
class(s4_obj)
isS4(s3_obj)
isS4(s4_obj)

