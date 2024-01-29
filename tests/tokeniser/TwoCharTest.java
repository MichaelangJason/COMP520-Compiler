package tests.tokeniser;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import lexer.Scanner;
import lexer.Token;
import lexer.Tokeniser;

public class TwoCharTest {
    Tokeniser s;

    @Test
    public void testLOGOR_Valid() {
        String expected = "||";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.LOGOR, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testLOGOR_Invalid() {
        String expected = "|";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.INVALID, t.category);
        assertEquals(expected, t.data);
    }

    @Test 
    public void testAND() {
        String expected = "&";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.AND, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testLOGAND() {
        String expected = "&&";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.LOGAND, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testASSIGN() {
        String expected = "=";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.ASSIGN, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testEQ() {
        String expected = "==";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.EQ, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testNE_Valid() {
        String expected = "!=";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.NE, t.category);
        assertEquals(expected, t.data);
    }

    @Test 
    public void testNE_Invalid1() {
        String expected = "!";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.INVALID, t.category);
        assertEquals(expected, t.data);
    }

    @Test 
    public void testNE_Invalid2() {
        String expected = "!~@";
        s = new Tokeniser(new Scanner(expected));
        Token t;
        for (int i = 0; i < expected.length(); i++) {
            t = s.nextToken();
            assertEquals(Token.Category.INVALID, t.category);
            assertEquals(String.valueOf(expected.charAt(i)), t.data);
        }
    }

    @Test
    public void testLT1() {
        String expected = "<";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.LT, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testLT2() {
        String expected = "<1";
        s = new Tokeniser(new Scanner(expected));

        Token t = s.nextToken();
        assertEquals(Token.Category.LT, t.category);
        assertEquals(String.valueOf(expected.charAt(0)), t.data);

        t = s.nextToken();
        assertEquals(Token.Category.INT_LITERAL, t.category);
        assertEquals(String.valueOf(expected.charAt(1)), t.data);
    }

    @Test
    public void testLE() {
        String expected = "<=";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.LE, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testGT1() {
        String expected = ">";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.GT, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testGT2() {
        String expected = ">a";
        s = new Tokeniser(new Scanner(expected));

        Token t = s.nextToken();
        assertEquals(Token.Category.GT, t.category);
        assertEquals(String.valueOf(expected.charAt(0)), t.data);

        t = s.nextToken();
        assertEquals(Token.Category.IDENTIFIER, t.category);
        assertEquals(String.valueOf(expected.charAt(1)), t.data);
    }

    @Test
    public void testGE() {
        String expected = ">=";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.GE, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testDIV1() {
        String expected = "/";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.DIV, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testDIV2() {
        String expected = "/~";
        s = new Tokeniser(new Scanner(expected));

        Token t = s.nextToken();
        assertEquals(Token.Category.DIV, t.category);
        assertEquals(String.valueOf(expected.charAt(0)), t.data);

        t = s.nextToken();
        assertEquals(Token.Category.INVALID, t.category);
        assertEquals(String.valueOf(expected.charAt(1)), t.data);
    }

    @Test
    public void testShortComment() {
        String expected = "// here is a comment // !@#$#$&*#@";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.EOF, t.category);
        assertEquals("", t.data);
    }

    @Test
    public void testLongComment() {
        String expected = "/* here is a comment // !@#!@$U*!#$ \n asfasd \b \n\n */";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.EOF, t.category);
        assertEquals("", t.data);
    }
}
