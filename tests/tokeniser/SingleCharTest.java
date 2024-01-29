package tests.tokeniser;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.Test;

import lexer.Scanner;
import lexer.Token;
import lexer.Tokeniser;

public class SingleCharTest {
    Tokeniser s;

    @Test
    public void testPLUS() {
        String expected = "+";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.PLUS, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testMINUS() {
        String expected = "-";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.MINUS, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testASTERIX() {
        String expected = "*";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.ASTERIX, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testREM() {
        String expected = "%";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.REM, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testLBRA() {
        String expected = "{";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.LBRA, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testRBRA() {
        String expected = "}";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.RBRA, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testLPAR() {
        String expected = "(";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.LPAR, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testRPAR() {
        String expected = ")";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.RPAR, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testLSBR() {
        String expected = "[";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.LSBR, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testRSBR() {
        String expected = "]";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.RSBR, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testSC() {
        String expected = ";";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.SC, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testCOMMA() {
        String expected = ",";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.COMMA, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testDOT() {
        String expected = ".";
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.DOT, t.category);
        assertEquals(expected, t.data);
    }
}
