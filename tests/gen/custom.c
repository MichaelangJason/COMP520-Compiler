// void print_i(int i) {}
struct t {
    int* h;
    int c[5];
};


void main() {
    struct t test;
    int n;
    n = 4 + 4;
    test.c[2] = *&n;
    // &*test.h;
    // test.c[0] = test.h;
    // int b;
    // b = n * n;
    // print_i(b * b);
    print_i(test.c[2]);
}