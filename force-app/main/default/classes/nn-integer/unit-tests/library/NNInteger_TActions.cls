@IsTest
public class NNInteger_TActions {
    // action suffix: 0
    public static NNIntegerResult createNnIntegerWithInteger(NnInteger_TArranges.ForAnInteger anInteger) {
        try {
            NNInteger nnintegerValue = new NNInteger(anInteger.getIntegerValue());
            return new NNIntegerResult(nnintegerValue);
        }
        catch (Exception caughtException) {
            return new NNIntegerResult(caughtException, 'creating NNInteger with Integer');
        }
    }
}
