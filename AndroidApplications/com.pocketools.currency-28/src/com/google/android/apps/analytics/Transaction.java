package com.google.android.apps.analytics;

public class Transaction {
    private final String orderId;
    private final double shippingCost;
    private final String storeName;
    private final double totalCost;
    private final double totalTax;

    public static class Builder {
        private final String orderId;
        private double shippingCost;
        private String storeName;
        private final double totalCost;
        private double totalTax;

        public Builder(String str, double d) {
            this.storeName = null;
            this.totalTax = 0.0d;
            this.shippingCost = 0.0d;
            if (str == null || str.trim().length() == 0) {
                throw new IllegalArgumentException("orderId must not be empty or null");
            }
            this.orderId = str;
            this.totalCost = d;
        }

        public Transaction build() {
            return new Transaction(null);
        }

        public com.google.android.apps.analytics.Transaction.Builder setShippingCost(double d) {
            this.shippingCost = d;
            return this;
        }

        public com.google.android.apps.analytics.Transaction.Builder setStoreName(String str) {
            this.storeName = str;
            return this;
        }

        public com.google.android.apps.analytics.Transaction.Builder setTotalTax(double d) {
            this.totalTax = d;
            return this;
        }
    }

    private Transaction(Builder builder) {
        this.orderId = builder.orderId;
        this.totalCost = builder.totalCost;
        this.storeName = builder.storeName;
        this.totalTax = builder.totalTax;
        this.shippingCost = builder.shippingCost;
    }

    String getOrderId() {
        return this.orderId;
    }

    double getShippingCost() {
        return this.shippingCost;
    }

    String getStoreName() {
        return this.storeName;
    }

    double getTotalCost() {
        return this.totalCost;
    }

    double getTotalTax() {
        return this.totalTax;
    }
}