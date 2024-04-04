struct t
{
    int *a;
    char arr[2][2];
};

// struct t getStruct() {
//     struct t a;
//     a.a = (int *) mcmalloc(sizeof(int *));
//     *a.a = 4 + 5;
//     a.arr[0][1] = 'c';
//     return a;
// }

void main() {
    struct t a;
    // a = getStruct();
    a.a = (int *) mcmalloc(sizeof(int *));
    *a.a = 1;
    a.arr[0][1] = 'c';
    print_i(*a.a);
    print_c(a.arr[0][1]);
    // print_s((char *)"hello world !");
}