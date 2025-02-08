/**
 * @file main.cpp
 * @author Cole Duncan
 * @brief
 * @version 0.1
 * @date 2025-02-08
 *
 * @copyright Copyright (c) 2025
 *
 */
#include <X11/Xlib.h>
#include <cstdio>

int main() {
  Display *d = XOpenDisplay(NULL);
  if (d == NULL) {
    printf("unable to open display\n");
    return -1;
  }
  int screen = XDefaultScreen(d);
  Window w = XCreateSimpleWindow(d, RootWindow(d, screen), 0, 0, 100, 100, 1,
                                 BlackPixel(d, screen), WhitePixel(d, screen));
  XMapWindow(d, w);
  XPending(d);
  getchar();
  printf("EXITING\n");
  return 0;
}