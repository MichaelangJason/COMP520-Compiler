package tests.tokeniser;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

import lexer.Scanner;
import lexer.Tokeniser;
import lexer.Token;

public class KeywordsTest {
    Tokeniser s;

    @Test
    public void testINT() {
        String expected = "INT".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.INT, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testIF() {
        String expected = "IF".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.IF, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testVOID() {
        String expected = "VOID".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.VOID, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testCHAR() {
        String expected = "CHAR".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.CHAR, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testCONTINUE() {
        String expected = "CONTINUE".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.CONTINUE, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testELSE() {
        String expected = "ELSE".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.ELSE, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testWHILE() {
        String expected = "WHILE".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.WHILE, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testRETURN() {
        String expected = "RETURN".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.RETURN, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testSTRUCT() {
        String expected = "STRUCT".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.STRUCT, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testSIZEOF() {
        String expected = "SIZEOF".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.SIZEOF, t.category);
        assertEquals(expected, t.data);
    }

    @Test
    public void testBREAK() {
        String expected = "BREAK".toLowerCase();
        s = new Tokeniser(new Scanner(expected));
        Token t = s.nextToken();
        assertEquals(Token.Category.BREAK, t.category);
        assertEquals(expected, t.data);
    }
}
