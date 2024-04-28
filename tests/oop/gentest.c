int global;

class A {
    int a;
    void test() {
        a = 11;
    }
    int getAndSetA(int val) {
        int temp;
        temp = a;

        a = val;
        return temp;
    }
}

class B extends A {
    int b;
    void test() {
        a = 22;
    }
    // int getAndSetB(int val) {
    //     int temp;
    //     temp = b;

    //     b = val;
    //     return temp;
    // }
}

class C extends B {
    int c;
    void test() {
        a = 33;
        // print_i(a);
    }
    int getAndSetC(int val) {
        int temp;
        int a;
        a = 10;
        temp = c;
        getAndSetA(val + 2);
        print_i(a);
        // getAndSetB(val + 4);

        c = val;
        return temp;
    }
}

int getA(class A c) {
    int temp;
    temp = c.getAndSetA(1);
    return temp;
}

void main() {
    class A a;
    class B b;
    class C c;

    // a = (class A) new class C();
    c = new class C();

    // print_i(getA(a));
    // a.test();
    // // print_i(getA((class A) b));
    // print_i(getA((class A) c));
    // print_i(c.a);

    // getA(a);
    // print_i(a.a);
    
    // c.getAndSetC(3);
    // print_i(c.a);

    c.test();
    print_i(getA((class A) c));


//    getA((class A) c);
//    print_i(c.a);


    // a = (class A) new class C();
    // a.getAndSetA(2);
    // print_i(a.getAndSetA(3));
    // print_i(a.getAndSetA(4));
    // print_i(a.getAndSetA(5));
    // c = new class C();
    // c.getAndSetC(1);
    // print_i(c.a);
    // print_i(c.b);
    // print_i(c.c);
    // a.a = 10;


    // a.setA(global);
    // print_i(c.getAndSetA(1));
    // print_i(c.getAndSetB(2));
    // print_i(c.getAndSetC(3));

    // print_i(c.getAndSetA(3));
    // print_i(c.getAndSetB(2));
    // print_i(c.getAndSetC(1));
    // global = -1;
    // a.test();
    // print_i(a.getA());


    // a.aa();
    // c = new class C();
    // a.test();
    // print_i(a.a);
    // a.aa();
    // c.aa();
    // c.bb();
    // c.cc();
    

    // b.a = 9;
    // b.b = 10;
    // b.test();
    // print_i(b.a);
    // print_i(b.b);

    // a.test();
}