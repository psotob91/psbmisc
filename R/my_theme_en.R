#' Custom theme for English tables
#'
#' This function creates a custom theme for gtsummary tables in English.
#'
#' @return A list of custom gtsummary theme options.
#' @importFrom gtsummary style_pvalue all_continuous2 all_categorical bold_labels
#' @examples
#' set_gtsummary_theme(my_theme_en)
#'
#' @export
my_theme_en <- function() {
  list(
    # languages
    "pkgwide-str:language" = "en",

    # p-values
    "pkgwide-fn:pvalue_fun" = function(x) style_pvalue(x, digits = 3),
    "pkgwide-fn:prependpvalue_fun" = function(x) style_pvalue(x, digits = 3, prepend_p = TRUE),

    # Separators
    "pkgwide-str:ci.sep" = " to ",
    "style_number-arg:big.mark" = ",",
    "style_number-arg:decimal.mark" = ".",

    # `tbl_summary()`
    "tbl_summary-str:continuous_stat" = c("{median} ({p25}, {p75})",
                                          "{mean} ({sd})",
                                          "{min}, {max}"),
    "tbl_summary-str:categorical_stat" = "{n} ({p})",
    "tbl_summary-arg:missing_text" = "Missing data",
    "tbl_summary-str:default_con_type" = "continuous2",
    "tbl_summary-str:header-noby" = "n = {N}",
    "tbl_summary-str:header-withby" = "**{level}** \n**(n={n})**",
    "tbl_summary-fn:addnl-fn-to-run" = "bold_labels",
    "tbl_summary-arg:digits" = list(all_continuous2() ~ 1,
                                    all_categorical() ~ c(0, 1))
  )
}
