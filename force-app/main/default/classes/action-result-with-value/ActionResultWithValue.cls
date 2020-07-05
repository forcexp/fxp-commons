public with sharing abstract class ActionResultWithValue
        extends ActionResult {
    
    protected ActionResultWithValue() {
        super();
    }

    protected ActionResultWithValue(Exception caughtException, String actionDescription) { // TODO: replace by non-blank string
        super(caughtException, actionDescription);
    }

    protected void throwExceptionIfArgumentIsNull(Object argumentValue, String argumentName) { // TODO: replace by non-blank string
        if (argumentValue == null) {
            throw ArgumentNullException.create(argumentName);
        }
    }
}