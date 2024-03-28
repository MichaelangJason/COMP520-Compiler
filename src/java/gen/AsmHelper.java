package gen;

public final class AsmHelper {
    public static int paddedSize(int orgSize) {
        return orgSize + getPadding(orgSize);
    }

    public static int getPadding(int orgSize) {
        return 4 - orgSize % 4;
    }
}
