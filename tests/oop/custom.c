// int test() {}
// void heihei() {}

class A {
    // int a;
    int test() {}
}

class B extends A {
    class B field;
    // int b;
    // int start;
    class A start(class B arg, class A arg2) {
    }
    // int test(char b) {}
    int test() {}
}

class C extends B {
    class B bfield;
    // int a;
    class C run() {
        test();
    }
    // int test(char b) {}
}

class D extends B {

}

class C test() {}

void main() {
    class A a;
    class B b;
    class C c;
    class D d;



    // success cases
    // d.test();
    // a = (class A) new class C();
    // c.test();
    // c.bfield.field = (class B) new class C();
    // c.bfield.field = (class B) c.run();
    // c.bfield.field.test();
    // c.bfield.field;
    // c.test();
    // c.start(b, a).test();

    // c = (class C) c;
    // print_i(b.test());
    // ((class B) c).test();

    if (a.test()) {
        test().run().run();

    } else {

    }

    // fail cases
    // c.exists();
    // ((class A) c).run();
    // c.run();
    // c = (class C) new class A(); // typecast to descendent
}