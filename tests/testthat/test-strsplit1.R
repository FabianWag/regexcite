test_that("strsplit() splits a string", {
  expect_equal(strsplit1("a,b,c", split = ","),c("a","b","c"))
})
