class A {
    // int a;
    int test() {}
}

class B extends A {
    class B field;
    // int b;
    // int start;
    class A start() {}
    // int test(char b) {}
}

class C extends B {
    class B bfield;
    // int c;
    class C run() {}
    // int test(char b) {}
}


void main() {
    class A a;
    class B b;
    class C c;

    a = (class A) new class C();
    // c = (class C) new class A();


    a.test();
    b.test();
    b.start();
    c.bfield = new class B();
    c.bfield.field = new class B();
    c.bfield.field.test();
    c.bfield.field;
    c.test();
    c.start().test();

    // print_i(b.b);
    // print_i(c.b);
}