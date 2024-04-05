struct t
{
    int *a;
    char arr[2][2];
};

void main() {
    struct t *s;
    int n;
    s = (struct t *) mcmalloc(sizeof(struct t));

    (*s).a = (int *) mcmalloc(sizeof(int *));
    *((*s).a) = 4;
    n = *((*s).a);

    print_i(n);
}

