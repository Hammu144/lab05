testthat:: test_that("not a character", {
  expect_error(fetch_qr(TRUE,"150*150"))
  expect_error(fetch_qr(TRUE,150*150))
  expect_error(fetch_qr(23,150*150))

})


testthat:: test_that("not a character", {
  expect_success(expect_type(fetch_qr("hamza",150*150), "raw"))
  expect_success(expect_type(fetch_qr("hamza",200*200), "raw"))

})



