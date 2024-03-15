int foo(int a[3]) {
   return a[1]; 
}
int bar() {
    int b[6];
    int c[3];
    return foo(c); // foo expects an array of size 3, not 6
}