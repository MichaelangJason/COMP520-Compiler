package tests.parser;

import static org.junit.Assert.assertFalse;

import java.io.File;
import java.io.FileNotFoundException;

import org.junit.Test;

import lexer.Scanner;
import lexer.Tokeniser;
import parser.Parser;

public class ParserTest {
    Scanner s;
    Tokeniser t;
    Parser p;
    
    @Test
    public void testFib() {
        try {
            s = new Scanner(new File("./fibonacci.c"));
            t = new Tokeniser(s);
            p = new Parser(t);
            p.parse();
            assertFalse(p.hasErrors());
            
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } 
    }

    @Test
    public void testTictac() {
        try {
            s = new Scanner(new File("./tictactoe.c"));
            t = new Tokeniser(s);
            p = new Parser(t);
            p.parse();
            assertFalse(p.hasErrors());
            
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } 
    }
}
