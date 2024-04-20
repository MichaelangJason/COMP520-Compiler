class A {
    int a;
    void test() {}
}

class B extends A {
    class B field;
    int b;
    void start() {}
}

class C extends B {
    class A afield;
    int c;
    void run() {}
}


void main() {
    class A a;
    class B b;

    a.test();
    b.test();
    b.start();
    print_i(b.b);
    print_i(a.test());
}