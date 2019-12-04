#' @export
my_function <- function() {

    plot(c(1, 1))

    # call the function from non-CRAN package `ptdspkg`
    ptdspkg::make_circle(center = c(1, 1), radius = 0.2)
}
