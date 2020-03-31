require(svMisc)
for (i in 0:101) {
  progress(i, progress.bar = TRUE)
  read.csv("C:/Users/dwdutta/Downloads/Others/ny_hmda_2015.csv")
  Sys.sleep(0.01)
  if (i == 101) cat("Done!\n")
}


# create progress bar
pb <- winProgressBar(title = "progress bar", min = 0,
                     max = 20, width = 300)
for(i in 1:20){
  Sys.sleep(0.1)
  read.csv("C:/Users/dwdutta/Downloads/Others/ny_hmda_2015.csv")
  setWinProgressBar(pb, i, title=paste( round(i/20*100, 0),
                                        "% done"))
}
close(pb)
