public with sharing class ActionFailure {
    string actionDescription;

    Exception caughtException;

    public ActionFailure(Exception caughtException, String actionDescription) {
        this.actionDescription = actionDescription;
        this.caughtException = caughtException;
    }

    public Exception getException() {
        return caughtException; // TODO: replace by NNException
    }

    public String getActionDescription() {
        return actionDescription; // TODO: replace by NNString
    }
}