/**************************************************************************
 File Name:     number.c
 Author:        wuguang
 E-mail:        wuguang20084520@163.com
 Created Time:  Thu 25 Mar 2021 01:34:52 PM CST
 Release Notes: 
 **************************************************************************/
#include<stdio.h>

int main(void) {
    int a = 0x10010044;
    // if a umber is too long enough, no way to make it more readable.
    printf("Number: 0x%0x\n", a);
    printf("End:\n");


    return 0;
}
