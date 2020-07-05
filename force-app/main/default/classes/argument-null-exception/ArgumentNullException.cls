public with sharing class ArgumentNullException
        extends Exception {
    public static ArgumentNullException create(String argumentName) { // TODO: replace by non-blank string
        return new ArgumentNullException('"' + argumentName + '" cannot be null.');
    }
}
