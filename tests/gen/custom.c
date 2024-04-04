struct t
{
    int *a;
    char arr[2][2];
};

struct t getStruct() {
    struct t a;
    *a.a = 4 + 5;
    return a;
}

void main() {
    struct t a;
    a = getStruct();

    print_i(*a.a);
    // print_s((char *)"hello world !");
}