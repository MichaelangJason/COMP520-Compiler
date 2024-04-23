class A {
    int a;
    int test() {}
}

class B extends A {
    class B field;
    int b;
    class A start() {}
}

class C extends B {
    class B bfield;
    int c;
    void run() {}
}


void main() {
    class A a;
    class B b;
    class C c;

    a = new class A();
    b = new class B();
    c = new class C();

    // a.test();
    // b.test();
    // b.start();
    // c.bfield = new class B();
    // c.bfield.field = new class B();
    // c.bfield.field.test();
    // c.bfield.field;
    // c.test();
    c.start().test();

    print_i(b.b);
    print_i(c.b);
}