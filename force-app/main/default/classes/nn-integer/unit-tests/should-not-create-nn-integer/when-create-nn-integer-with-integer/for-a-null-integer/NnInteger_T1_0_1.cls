@IsTest
public with sharing class NnInteger_T1_0_1 {
    @IsTest
    public static void shouldntCreateNnIntegerForNullIntegerValue() {
        NnInteger_TArranges.ForAnInteger aNullInteger = new NnInteger_TArranges.ForANullInteger();

        NNIntegerResult actionResult = NNInteger_TActions.createNnIntegerWithInteger(aNullInteger);

        TAssertions.assertActionResultIsNotNull(actionResult);
        TAssertions.assertActionHasFailed(actionResult);
    }
}
