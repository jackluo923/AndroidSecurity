package com.pocketools.currency.billing;

public class Consts {
    public static final String ACTION_CONFIRM_NOTIFICATION = "com.example.dungeons.CONFIRM_NOTIFICATION";
    public static final String ACTION_GET_PURCHASE_INFORMATION = "com.example.dungeons.GET_PURCHASE_INFORMATION";
    public static final String ACTION_NOTIFY = "com.android.vending.billing.IN_APP_NOTIFY";
    public static final String ACTION_PURCHASE_STATE_CHANGED = "com.android.vending.billing.PURCHASE_STATE_CHANGED";
    public static final String ACTION_RESPONSE_CODE = "com.android.vending.billing.RESPONSE_CODE";
    public static final String ACTION_RESTORE_TRANSACTIONS = "com.example.dungeons.RESTORE_TRANSACTIONS";
    public static final String BILLING_REQUEST_API_VERSION = "API_VERSION";
    public static final String BILLING_REQUEST_DEVELOPER_PAYLOAD = "DEVELOPER_PAYLOAD";
    public static final String BILLING_REQUEST_ITEM_ID = "ITEM_ID";
    public static final String BILLING_REQUEST_METHOD = "BILLING_REQUEST";
    public static final String BILLING_REQUEST_NONCE = "NONCE";
    public static final String BILLING_REQUEST_NOTIFY_IDS = "NOTIFY_IDS";
    public static final String BILLING_REQUEST_PACKAGE_NAME = "PACKAGE_NAME";
    public static long BILLING_RESPONSE_INVALID_REQUEST_ID = 0;
    public static final String BILLING_RESPONSE_PURCHASE_INTENT = "PURCHASE_INTENT";
    public static final String BILLING_RESPONSE_REQUEST_ID = "REQUEST_ID";
    public static final String BILLING_RESPONSE_RESPONSE_CODE = "RESPONSE_CODE";
    public static final boolean DEBUG = true;
    public static final String INAPP_REQUEST_ID = "request_id";
    public static final String INAPP_RESPONSE_CODE = "response_code";
    public static final String INAPP_SIGNATURE = "inapp_signature";
    public static final String INAPP_SIGNED_DATA = "inapp_signed_data";
    public static final String MARKET_BILLING_SERVICE_ACTION = "com.android.vending.billing.MarketBillingService.BIND";
    public static final String NOTIFICATION_ID = "notification_id";

    public enum PurchaseState {
        PURCHASED,
        CANCELED,
        REFUNDED;

        static {
            PURCHASED = new com.pocketools.currency.billing.Consts.PurchaseState("PURCHASED", 0);
            CANCELED = new com.pocketools.currency.billing.Consts.PurchaseState("CANCELED", 1);
            REFUNDED = new com.pocketools.currency.billing.Consts.PurchaseState("REFUNDED", 2);
            ENUM$VALUES = new com.pocketools.currency.billing.Consts.PurchaseState[]{PURCHASED, CANCELED, REFUNDED};
        }

        public static com.pocketools.currency.billing.Consts.PurchaseState valueOf(int index) {
            com.pocketools.currency.billing.Consts.PurchaseState[] values = values();
            return (index < 0 || index >= values.length) ? CANCELED : values[index];
        }
    }

    public enum ResponseCode {
        RESULT_OK,
        RESULT_USER_CANCELED,
        RESULT_SERVICE_UNAVAILABLE,
        RESULT_BILLING_UNAVAILABLE,
        RESULT_ITEM_UNAVAILABLE,
        RESULT_DEVELOPER_ERROR,
        RESULT_ERROR;

        static {
            RESULT_OK = new com.pocketools.currency.billing.Consts.ResponseCode("RESULT_OK", 0);
            RESULT_USER_CANCELED = new com.pocketools.currency.billing.Consts.ResponseCode("RESULT_USER_CANCELED", 1);
            RESULT_SERVICE_UNAVAILABLE = new com.pocketools.currency.billing.Consts.ResponseCode("RESULT_SERVICE_UNAVAILABLE", 2);
            RESULT_BILLING_UNAVAILABLE = new com.pocketools.currency.billing.Consts.ResponseCode("RESULT_BILLING_UNAVAILABLE", 3);
            RESULT_ITEM_UNAVAILABLE = new com.pocketools.currency.billing.Consts.ResponseCode("RESULT_ITEM_UNAVAILABLE", 4);
            RESULT_DEVELOPER_ERROR = new com.pocketools.currency.billing.Consts.ResponseCode("RESULT_DEVELOPER_ERROR", 5);
            RESULT_ERROR = new com.pocketools.currency.billing.Consts.ResponseCode("RESULT_ERROR", 6);
            ENUM$VALUES = new com.pocketools.currency.billing.Consts.ResponseCode[]{RESULT_OK, RESULT_USER_CANCELED, RESULT_SERVICE_UNAVAILABLE, RESULT_BILLING_UNAVAILABLE, RESULT_ITEM_UNAVAILABLE, RESULT_DEVELOPER_ERROR, RESULT_ERROR};
        }

        public static com.pocketools.currency.billing.Consts.ResponseCode valueOf(int index) {
            com.pocketools.currency.billing.Consts.ResponseCode[] values = values();
            return (index < 0 || index >= values.length) ? RESULT_ERROR : values[index];
        }
    }

    static {
        BILLING_RESPONSE_INVALID_REQUEST_ID = -1;
    }
}