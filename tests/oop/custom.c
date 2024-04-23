class A {
    int a;
    int test() {}
}

class B extends A {
    class B field;
    // int b;
    // int start;
    class A start(class B arg, class A arg2) {}
    // int test(char b) {}
}

class C extends B {
    class B bfield;
    // int a;
    class C run() {}
    // int test(char b) {}
}


void main() {
    class A a;
    class B b;
    class C c;



    // success cases
    a = (class A) new class C();
    c.test();
    c.bfield.field = (class B) new class C();
    c.bfield.field = (class B) c.run();
    c.bfield.field.test();
    c.bfield.field;
    c.test();
    c.start(b, a).test();

    print_i(b.test());

    if (a.test()) {

    } else {

    }

    // fail cases
    // c = (class C) new class A(); // typecast to descendent


}