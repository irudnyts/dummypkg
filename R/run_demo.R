#' @export
run_demo <- function() {
    appDir <- system.file("shiny-examples", "demo", package = "dummypkg")
    if (appDir == "") {
        stop(
            "Could not find `demo` directory. Try re-installing `dummypkg`",
            call. = FALSE
        )
    }

    shiny::runApp(appDir, display.mode = "normal")

}
