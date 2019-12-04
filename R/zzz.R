.onAttach <- function(libname, pkgname) {

    if (!("ptdspkg" %in% rownames(installed.packages()))) {
        packageStartupMessage(
            paste0(
                "Please install `ptdspkg` by",
                " `devtools::install_github('SMAC-Group/ptdspkg')`"
            )
        )
    }

}
