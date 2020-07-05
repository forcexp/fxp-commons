@IsTest
public class TAssertions {
    public static void assertActionResultIsNotNull(ActionResult result) {
        System.assertNotEquals(null, result, 'ActionResult should not be null');
    }

    public static void assertActionHasSucceeded(ActionResult result) {
        String assertMessage = (result.failed)
                ? getAssertMessageFromActionFailure(result.getFailure())
                : '';

        System.assert(result.succeed, assertMessage);
    }

    private static String getAssertMessageFromActionFailure(ActionFailure failure) {
        Exception caughtException = failure.getException();

        return String.format(
                '{0} caught when {1}.\nException details:\n{2}',
                new List<Object> {
                        caughtException.getTypeName(),
                        failure.getActionDescription(),
                        caughtException
                }
        );
    }

    public static void assertActionHasFailed(ActionResult result) {
        System.assert(result.failed, 'Action should has failed but instead it has succeeded.');
    }
}
