public with sharing class NnIntegerResult
        extends ActionResultWithValue {
    public NNInteger result { get; private set; }

    public NnIntegerResult(Exception caughtException, String actionDescription) {
        super(caughtException, actionDescription);
    }

    public NnIntegerResult(NNInteger nnIntegerReturn) {
        throwExceptionIfArgumentIsNull(nnIntegerReturn, 'nnIntegerReturn');
        result = nnIntegerReturn;
    }

    public NNInteger getResult() {
        return result;
    }

}
