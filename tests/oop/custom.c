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
    class B afield;
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

    a.test();
    b.test();
    b.start();
    c.bfield = new class B();
    c.bfield.field = new class B();
    c.bfield.field.start();
    

    print_i(b.b);
    print_i(a.test());
}