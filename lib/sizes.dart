const double designHeight = 834;
const double designWidth = 1194;

double resWidth(width, sWidth) {
  return width / designWidth * sWidth;
}

double resHeight(height, sHeight) {
  return height / designHeight * sHeight;
}
