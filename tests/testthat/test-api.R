testthat:: test_that("not a character", {
  expect_error(fetch_qr(TRUE,"150*150"))
  expect_error(fetch_qr(TRUE,150*150))
  expect_error(fetch_qr(23,150*150))
  expect_error(fetch_qr(23,"150*150"))
  expect_error(fetch_qr(hama,150*150))

})


testthat:: test_that("expecting value", {
  expect_success(expect_type(fetch_qr("ham",150*150), "raw"))
  expect_success(expect_type(fetch_qr("ha",200*200), "raw"))
  expect_success(expect_type(fetch_qr("haa",100*100), "raw"))
  expect_success(expect_type(fetch_qr("hza",200*200), "raw"))
  expect_success(expect_type(fetch_qr("al",100*100), "raw"))


})



