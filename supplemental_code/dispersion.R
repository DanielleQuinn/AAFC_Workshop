dispersion <- function(model, modeltype)
{
  A <- sum(resid(model, type = "pearson")^2)
  if(modeltype %in% c("p", "qp", "poisson", "quasipoisson"))
  {
    B <- length(resid(model)) - length(coef(model))
  }
  if(modeltype %in% c("nb", "negativebinomial"))
  {
    B <- length(resid(model)) - (length(coef(model)) + 1)
  }
  if(modeltype %in% c("zpoisson", "zp"))
  {
    B <- summary(model)$df.resid
  }
  if(modeltype %in% c("znegativebinomial", "znb"))
  {
    B <- summary(model)$df.resid + 1
  }
  return(A/B)
}
