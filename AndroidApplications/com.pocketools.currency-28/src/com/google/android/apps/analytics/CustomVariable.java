package com.google.android.apps.analytics;

class CustomVariable {
    public static final String INDEX_ERROR_MSG = "Index must be between 1 and 5 inclusive.";
    public static final int MAX_CUSTOM_VARIABLES = 5;
    public static final int MAX_CUSTOM_VARIABLE_LENGTH = 64;
    public static final int PAGE_SCOPE = 3;
    public static final int SESSION_SCOPE = 2;
    public static final int VISITOR_SCOPE = 1;
    private final int index;
    private final String name;
    private final int scope;
    private final String value;

    public CustomVariable(int i, String str, String str2) {
        this(i, str, str2, 3);
    }

    public CustomVariable(int i, String str, String str2, int i2) {
        if (i2 != 1 && i2 != 2 && i2 != 3) {
            throw new IllegalArgumentException("Invalid Scope:" + i2);
        } else if (i < 1 || i > 5) {
            throw new IllegalArgumentException(INDEX_ERROR_MSG);
        } else if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Invalid argument for name:  Cannot be empty");
        } else if (str2 == null || str2.length() == 0) {
            throw new IllegalArgumentException("Invalid argument for value:  Cannot be empty");
        } else {
            int length = AnalyticsParameterEncoder.encode(str + str2).length();
            if (length > 64) {
                throw new IllegalArgumentException("Encoded form of name and value must not exceed 64 characters combined.  Character length: " + length);
            }
            this.index = i;
            this.scope = i2;
            this.name = str;
            this.value = str2;
        }
    }

    public int getIndex() {
        return this.index;
    }

    public String getName() {
        return this.name;
    }

    public int getScope() {
        return this.scope;
    }

    public String getValue() {
        return this.value;
    }
}