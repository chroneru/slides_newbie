#include "/usr/include/stdio.h"
#include "/usr/include/stdlib.h"
#include "/usr/include/string.h"
#include "/usr/include/R/R.h"


void quiz(unsigned char *ans_u) {
  char answer[] = "さくらんぼ";
  char yes[] = "あってるよ";
  char no[] = "まちがってるよ";

  printf("おうとうってなんだ？: %s\n",*ans_u);
  if(strcmp(answer,ans_u) == 0) printf("%s",yes); else printf("%s",no);
}

//メモリリークおこすっぽい
