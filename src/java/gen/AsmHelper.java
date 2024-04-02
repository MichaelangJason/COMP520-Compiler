package gen;

public final class AsmHelper {
    public static int paddedSize(int orgSize) {
        return orgSize + getPadding(orgSize);
    }

    public static int getPadding(int orgSize) {
        int paddedSize = orgSize % 4;
        return paddedSize == 0 ? 0 : 4 - paddedSize;
    }
}
