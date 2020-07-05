
@IsTest
public with sharing class NnInteger_T0_0_0 {
    @IsTest
    public static void shoudCreateANnIntegerForANotNulInteger() {
        NnInteger_TArranges.ForAnInteger aNotNullInteger = new NnInteger_TArranges.ForANotNullInteger();

        NNIntegerResult actionResult = NNInteger_TActions.createNnIntegerWithInteger(aNotNullInteger);

        TAssertions.assertActionResultIsNotNull(actionResult);
        TAssertions.assertActionHasSucceeded(actionResult);
    }
}
