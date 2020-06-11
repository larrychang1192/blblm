test_that("blblm works", {
  fit<-blblm_par(mpg ~ wt * hp, data= mtcars, m=3, B=100,nCluster = 4)
  expect_s3_class(fit, "blblm")
  cfs <- coef(fit)
  expect_equal(length(cfs), 3)
})