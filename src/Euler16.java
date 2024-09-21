import java.math.BigInteger;

public class Euler16 {
    public static void main(String[] args) {
        BigInteger number = BigInteger.valueOf(2);
        int count = 1;
        while(count < 1000){
            number = number.multiply(BigInteger.TWO);
            count++;
        }
        String numberStr = number.toString();
        int result = 0;
        for(int i = 0; i < numberStr.length(); i++){
            result += (int) numberStr.charAt(i) - (int)'0';
        }
        System.out.println(result);
    }
}
