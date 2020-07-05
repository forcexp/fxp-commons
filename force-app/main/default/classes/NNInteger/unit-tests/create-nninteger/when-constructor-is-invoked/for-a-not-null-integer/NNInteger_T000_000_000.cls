@IsTest
public class NNInteger_T000_000_000 {
    @IsTest
    public static void test1() {
        Integer anIntegerValue = 1;

        NNInteger value = NNInteger(anIntegerValue);

        System.assertNotEquals(null, value, 'Value should be an instance of NNInteger type instead of null.');
        System.assertEquals(NNInteger.class, value.getType(), 'Value should be a an instance of NNInteger instead of ' + value.getType().getDescribe().getName());
    }
}
