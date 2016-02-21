package com.google.android.apps.analytics;

class CustomVariableBuffer {
    private CustomVariable[] customVariables;

    public CustomVariableBuffer() {
        this.customVariables = new CustomVariable[5];
    }

    private void throwOnInvalidIndex(int i) {
        if (i < 1 || i > 5) {
            throw new IllegalArgumentException(INDEX_ERROR_MSG);
        }
    }

    public void clearCustomVariableAt(int i) {
        throwOnInvalidIndex(i);
        this.customVariables[i - 1] = null;
    }

    public CustomVariable[] getCustomVariableArray() {
        return (CustomVariable[]) this.customVariables.clone();
    }

    public CustomVariable getCustomVariableAt(int i) {
        throwOnInvalidIndex(i);
        return this.customVariables[i - 1];
    }

    public boolean hasCustomVariables() {
        int i = 0;
        while (i < this.customVariables.length) {
            if (this.customVariables[i] != null) {
                return true;
            }
            i++;
        }
        return false;
    }

    public boolean isIndexAvailable(int i) {
        throwOnInvalidIndex(i);
        return this.customVariables[i + -1] == null;
    }

    public void setCustomVariable(CustomVariable customVariable) {
        throwOnInvalidIndex(customVariable.getIndex());
        this.customVariables[customVariable.getIndex() - 1] = customVariable;
    }
}