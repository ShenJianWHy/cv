render_pdf <- function(longVersion=FALSE, cn=FALSE){
  
  if(longVersion){
    rmarkdown::render("cv.Rmd", output_file="jianSHEN_CV.html")
    pagedown::chrome_print("jianSHEN_cv.html")
  } else if(!cn){
    rmarkdown::render("cv_s.Rmd", output_file="jianSHEN_CV_s.html")
    pagedown::chrome_print("jianSHEN_cv_s.html")
  } else {
    rmarkdown::render("cv_cn.Rmd", output_file="jianSHEN_CV_cn.html")
    pagedown::chrome_print("jianSHEN_cv_cn.html")
  }
}

render_pdf(longVersion = FALSE, cn = TRUE)
