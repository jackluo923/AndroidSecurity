package com.google.android.apps.analytics;

public class Item {
    private final String itemCategory;
    private final long itemCount;
    private final String itemName;
    private final double itemPrice;
    private final String itemSKU;
    private final String orderId;

    public static class Builder {
        private String itemCategory;
        private final long itemCount;
        private String itemName;
        private final double itemPrice;
        private final String itemSKU;
        private final String orderId;

        public Builder(String str, String str2, double d, long j) {
            this.itemName = null;
            this.itemCategory = null;
            if (str == null || str.trim().length() == 0) {
                throw new IllegalArgumentException("orderId must not be empty or null");
            } else if (str2 == null || str2.trim().length() == 0) {
                throw new IllegalArgumentException("itemSKU must not be empty or null");
            } else {
                this.orderId = str;
                this.itemSKU = str2;
                this.itemPrice = d;
                this.itemCount = j;
            }
        }

        public Item build() {
            return new Item(null);
        }

        public com.google.android.apps.analytics.Item.Builder setItemCategory(String str) {
            this.itemCategory = str;
            return this;
        }

        public com.google.android.apps.analytics.Item.Builder setItemName(String str) {
            this.itemName = str;
            return this;
        }
    }

    private Item(Builder builder) {
        this.orderId = builder.orderId;
        this.itemSKU = builder.itemSKU;
        this.itemPrice = builder.itemPrice;
        this.itemCount = builder.itemCount;
        this.itemName = builder.itemName;
        this.itemCategory = builder.itemCategory;
    }

    String getItemCategory() {
        return this.itemCategory;
    }

    long getItemCount() {
        return this.itemCount;
    }

    String getItemName() {
        return this.itemName;
    }

    double getItemPrice() {
        return this.itemPrice;
    }

    String getItemSKU() {
        return this.itemSKU;
    }

    String getOrderId() {
        return this.orderId;
    }
}