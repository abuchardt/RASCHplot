#' Shoulder pain and disability index (SPADI) data
#'
#' Data from a Danish validation study containing responses to the shoulder
#'  pain and disability index (SPADI) from 228 patients with rotator-cuff
#'  related disorders. The variables are as follows:
#'
#' @format A data frame with 228 rows and 16 variables:
#' \describe{
#'   \item{gender}{Gender (1,2)}
#'   \item{over60}{Age over/under 60 (0,1)}
#'   \item{id}{Unique observation identifyer}
#'   \item{P1}{At its worst (pain item)}
#'   \item{P2}{Lying on affected side (pain item)}
#'   \item{P3}{Reaching for object on a high shelf (pain item)}
#'   \item{P4}{Touching the back of your neck (pain item)}
#'   \item{P5}{Pushing with involved arm (pain item)}
#'   \item{D1}{Washing your hair (disability item)}
#'   \item{D2}{Washing your back (disability item)}
#'   \item{D3}{Putting on undershirt or jumper (disability item)}
#'   \item{D4}{Putting on a shirt that buttons down the front (disability item)}
#'   \item{D5}{Putting on your pants (disability item)}
#'   \item{D6}{Placing an object on a high shelf (disability item)}
#'   \item{D7}{Carry heavy object (disability item)}
#'   \item{D8}{Removing something from your back pocket (disability item)}
#' }
#' @source \url{https://doi.org/10.17894/ucph.9c28c17b-83f4-411d-9115-d457c46828a1}
#' @examples
#' require(RASCHplot)
#' items.disability <- SPADI[,9:16]
#' BARplot(data = items.disability)
"SPADI"
