package gen;

public final class AsmHelper {
    public static int paddedSize(int orgSize) {
        return orgSize + (4 - orgSize % 4);
    }
}
