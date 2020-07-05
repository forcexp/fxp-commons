public with sharing abstract class ActionResult {
    public Boolean succeed {
        get;
        private set;
    }

    public Boolean failed {
        get;
        private set;
    }

    ActionFailure failure;

    protected ActionResult() {
        failure = null;
        succeed = true;
        failed = false;
    }

    protected ActionResult(Exception caughtException, String actionDescription) {
        failure = new ActionFailure(caughtException, actionDescription);
        succeed = false;
        failed = true;
    }

    public ActionFailure getFailure() { // TODO: raise exception if failure is null
        return failure;
    }
}