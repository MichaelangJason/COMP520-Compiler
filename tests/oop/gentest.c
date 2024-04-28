class A {
    int a;
    void test() {
        a = 10;
        // print_i(a);
    }
    void aa() {
        print_s((char *) "aa\n");
    }
}

class B extends A {
    int b;
    void test() {
        a = 9;
        // print_i(a);
    }
    void bb() {
        print_s((char *) "bb\n");
    }
}

class C extends B {
    int c;
    void test() {
        a = 67;
    }
    void cc() {
        print_s((char *) "cc\n");
    }
}

void main() {
    class A a;
    // class B b;
    class C c;
    a = (class A) new class C();
    c = new class C();
    // a.test();
    print_i(a.a);
    a.aa();
    c.aa();
    c.bb();
    c.cc();
    

    // b.a = 9;
    // b.b = 10;
    // b.test();
    // print_i(b.a);
    // print_i(b.b);

    // a.test();
}