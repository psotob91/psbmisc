#' Create custom theme for Spanish tables
#'
#' This function creates a custom theme for gtsummary tables in Spanish,
#' specifying the language, p-values, separators, and various arguments for
#' tbl_summary().
#'
#' @return A list of customized parameters for gtsummary tables in Spanish.
#'
#' @importFrom gtsummary style_pvalue
#' @importFrom gtsummary all_continuous2
#' @importFrom gtsummary all_categorical
#' @importFrom gtsummary set_gtsummary_theme
#'
#' @export
#' @examples
#' gtsummary::set_gtsummary_theme(my_theme_spa)
#'
#' @seealso my_theme_en
#'
#' @keywords gtsummary tables custom-theme spanish
my_theme_spa <-
  list(
    # languages
    "pkgwide-str:language" = "es",

    # p-values
    "pkgwide-fn:pvalue_fun" = function(x) style_pvalue(x, digits = 3),
    "pkgwide-fn:prependpvalue_fun" = function(x) style_pvalue(x, digits = 3, prepend_p = TRUE),

    # Separators
    "pkgwide-str:ci.sep" = " a ",
    "style_number-arg:big.mark" = " ",
    "style_number-arg:decimal.mark" = ".",

    # `tbl_summary()`
    "tbl_summary-str:continuous_stat" = c("{median} ({p25}, {p75})",
                                          "{mean} ({sd})",
                                          "{min}, {max}"),
    "tbl_summary-str:categorical_stat" = "{n} ({p})",
    "tbl_summary-arg:missing_text" = "Datos perdidos",
    "tbl_summary-str:default_con_type" = "continuous2",
    "tbl_summary-str:header-noby" = "<br>**(n = {N})**",
    "tbl_summary-str:header-withby" = "**{level}** <br>**(n={n})**",
    "tbl_summary-fn:addnl-fn-to-run" = "bold_labels",
    "tbl_summary-arg:digits" = list(all_continuous2() ~ 1,
                                    all_categorical() ~ c(0, 1))
  )
