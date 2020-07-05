@IsTest
public class NnInteger_TArranges {
    public interface ForAnInteger {
        Integer getIntegerValue();
    }

    // arrange suffix: 0
    public class ForANotNullInteger
            implements ForAnInteger {
        public Integer getIntegerValue() {
            return 1;
        }
    }

    // arrange suffix: 1
    public class ForANullInteger
            implements ForAnInteger {
        public Integer getIntegerValue() {
            return null;
        }
    }
}
