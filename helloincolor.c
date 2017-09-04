#include <stdio.h>

int main() {
   for(int i=30; i<=37; i++){
      char color[20];
      snprintf(color, sizeof(color), "\033[%dm", i);
      printf("%s Hello world\n", color);
   }
}

