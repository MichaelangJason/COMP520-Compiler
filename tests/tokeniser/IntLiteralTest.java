package tests.tokeniser;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.Test;

import lexer.Scanner;
import lexer.Token;
import lexer.Tokeniser;

public class IntLiteralTest {
    Tokeniser s;

    @Test
    public void testIntStart() {
        for (int i = 9; i >= 0; i--) {
            StringBuilder acc = new StringBuilder();

            for (int j = i; j >= 0; j--)
                acc.append(Integer.toString(j));

            String expected = acc.toString();
            s = new Tokeniser(new Scanner(expected));
            Token t = s.nextToken();
            assertEquals(Token.Category.INT_LITERAL, t.category);
            assertEquals(expected, t.data);
        }
    }

    @Test
    public void testIntMix() {
        for (int i = 9; i >= 0; i--) {
                StringBuilder acc = new StringBuilder();

            for (int j = i; j >= 0; j--)
                acc.append(Integer.toString(j));

            String expected = acc.toString();
            String input = expected + "identifier";
            s = new Tokeniser(new Scanner(input));
            Token t = s.nextToken();
            assertEquals(Token.Category.INT_LITERAL, t.category);
            assertEquals(expected, t.data);
            t = s.nextToken();
            assertEquals(Token.Category.IDENTIFIER, t.category);
            assertEquals("identifier", t.data);
        }
    }

    @Test
    public void testIntMixInverse() {
        for (int i = 9; i >= 0; i--) {
                StringBuilder acc = new StringBuilder();

            for (int j = i; j >= 0; j--)
                acc.append(Integer.toString(j));

            String expected = "identifier" + acc.toString();

            s = new Tokeniser(new Scanner(expected));
            Token t = s.nextToken();
            assertEquals(Token.Category.IDENTIFIER, t.category);
            assertEquals(expected, t.data);
        }
    }
}
