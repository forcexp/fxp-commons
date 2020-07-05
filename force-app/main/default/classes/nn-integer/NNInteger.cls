public with sharing class NNInteger {
    Integer value;

    public NNInteger(Integer notNullIntegerValue) {
        throwExceptionIfArgumentIsNull(notNullIntegerValue, 'notNullIntegerValue');
        value = notNullIntegerValue;
    }

    public Integer get() {
        return value;
    }

    void throwExceptionIfArgumentIsNull(Object argumentValue, String argumentName) { // TODO: replace by non-blank string
        if (argumentValue == null) {
            throw ArgumentNullException.create(argumentName);
        }
    }
}
