package archive;
import java.util.ArrayList;
import java.util.List;

class ReversedAsciiValuesPassword {

    static String Solution(String hiddenPassword) {
        List<int[]> validRanges = new ArrayList<>();
        validRanges.add(new int[] {65, 90});
        validRanges.add(new int[] {97, 122});
        StringBuilder asciiPassword = new StringBuilder(hiddenPassword).reverse();
        StringBuilder password = new StringBuilder();
        StringBuilder strCache = new StringBuilder();
        for (String s : asciiPassword.toString().split("")) {
            strCache.append(s);
            if (strCache.length() == 2 || strCache.length() == 3) {
                Integer testInt = Integer.parseInt(strCache.toString());
                for (int[] range : validRanges) {
                    if (testInt >= range[0] && testInt <= range[1]) {
                        password.append((char) testInt.intValue());
                        System.out.println(password);
                        strCache.delete(0, strCache.length());
                    }
                }
            } else if (strCache.length() >3) {
                System.out.println(strCache);
                System.out.println("Error: length size more than 3");
            }
        }

        return password.toString();
    }





    public static void main(String[] args) {
        System.out.println(Solution("779710166121"));
    }
}