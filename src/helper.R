library(jpeg)

save_image <- function(path, img) {
  max_val <- max(img)
  
  if (max_val == 0) {
    # Convert to numeric in case the canvas is empty
    img <- apply(img, c(1,2), as.numeric)
  }
  
  # Normalize to make it range [0, 1]
  if (max_val > 1) {
    img = img / max_val
  }
  writeJPEG(img, path)
}