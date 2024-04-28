class A {
    int a;
    void test() {
        a = 10;
        print_i(a);
    }   
}

class B extends A {
    int b;
    void test() {
        a = 9;
        print_i(a);
    }
}

void main() {
    class A a;
    // class B b;
    a = (class A) new class B();
    a.test();

    a = new class A();
    // b = new class B();
    // b.a = 9;
    // b.b = 10;
    a.test();
    // b.test();
    // print_i(b.a);
    // print_i(b.b);

    // a.test();
}