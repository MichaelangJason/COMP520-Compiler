struct t
{
    int *a;
    int arr[2][2];
};

void print_t(struct t t, int n, struct t d);

void main() {
    // struct t *s;
    struct t c;
    int n;
    int b;
    int a;
    struct t d;

    // s = (struct t *) mcmalloc(sizeof(struct t));

    // c = *s;
    c.a = (int *) mcmalloc(sizeof(int));
    *c.a = 4;
    d.a = (int *) mcmalloc(sizeof(int));
    *d.a = 6;

    print_t(c, 3, d);

    // print_i(n);
    // print_i(*c.a);

    // print_i(c.arr[0][0]);
    // print_i(c.arr[0][1]);
    // print_i(c.arr[1][0]);
    // print_i(c.arr[1][1]);
}

void print_t(struct t t, int n, struct t d) {
    print_i(*t.a);
    print_i(n);
    print_i(*d.a);
}

