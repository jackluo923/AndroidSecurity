package com.pocketools.currency.billing;

import android.text.TextUtils;
import android.util.Log;
import com.pocketools.currency.PocketCurrency;
import com.pocketools.currency.billing.Consts.PurchaseState;
import com.pocketools.currency.util.Base64;
import com.pocketools.currency.util.Base64DecoderException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Security {
    private static final String KEY_FACTORY_ALGORITHM = "RSA";
    private static final SecureRandom RANDOM;
    private static final String SIGNATURE_ALGORITHM = "SHA1withRSA";
    private static final String TAG = "Security";
    private static HashSet<Long> sKnownNonces;

    public static class VerifiedPurchase {
        public String developerPayload;
        public String notificationId;
        public String orderId;
        public String productId;
        public PurchaseState purchaseState;
        public long purchaseTime;

        public VerifiedPurchase(PurchaseState purchaseState, String notificationId, String productId, String orderId, long purchaseTime, String developerPayload) {
            this.purchaseState = purchaseState;
            this.notificationId = notificationId;
            this.productId = productId;
            this.orderId = orderId;
            this.purchaseTime = purchaseTime;
            this.developerPayload = developerPayload;
        }
    }

    static {
        RANDOM = new SecureRandom();
        sKnownNonces = new HashSet();
    }

    public static long generateNonce() {
        long nonce = RANDOM.nextLong();
        sKnownNonces.add(Long.valueOf(nonce));
        return nonce;
    }

    public static PublicKey generatePublicKey(String encodedPublicKey) {
        try {
            return KeyFactory.getInstance(KEY_FACTORY_ALGORITHM).generatePublic(new X509EncodedKeySpec(Base64.decode(encodedPublicKey)));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e2) {
            InvalidKeySpecException e3 = e2;
            Log.e(TAG, "Invalid key specification.");
            throw new IllegalArgumentException(e3);
        } catch (Base64DecoderException e4) {
            Base64DecoderException e5 = e4;
            Log.e(TAG, "Base64 decoding failed.");
            throw new IllegalArgumentException(e5);
        }
    }

    public static boolean isNonceKnown(long nonce) {
        return sKnownNonces.contains(Long.valueOf(nonce));
    }

    public static void removeNonce(long nonce) {
        sKnownNonces.remove(Long.valueOf(nonce));
    }

    public static boolean verify(PublicKey publicKey, String signedData, String signature) {
        boolean z = false;
        Log.i(TAG, new StringBuilder("signature: ").append(signature).toString());
        try {
            Signature sig = Signature.getInstance(SIGNATURE_ALGORITHM);
            sig.initVerify(publicKey);
            sig.update(signedData.getBytes());
            if (sig.verify(Base64.decode(signature))) {
                return true;
            }
            Log.e(TAG, "Signature verification failed.");
            return z;
        } catch (NoSuchAlgorithmException e) {
            Log.e(TAG, "NoSuchAlgorithmException.");
            return z;
        } catch (InvalidKeyException e2) {
            Log.e(TAG, "Invalid key specification.");
            return z;
        } catch (SignatureException e3) {
            Log.e(TAG, "Signature exception.");
            return z;
        } catch (Base64DecoderException e4) {
            Log.e(TAG, "Base64 decoding failed.");
            return z;
        }
    }

    public static ArrayList<VerifiedPurchase> verifyPurchase(String signedData, String signature) {
        if (signedData == null) {
            Log.e(TAG, "data is null");
            return null;
        } else {
            Log.i(TAG, new StringBuilder("signedData: ").append(signedData).toString());
            boolean verified = false;
            if (!TextUtils.isEmpty(signature)) {
                verified = verify(generatePublicKey("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo3F+ntHig+JP+6nXFH9+9U4UqCYt99Tvk6CCPtAgRkBTeu+oATHQVJApDt7pcCx1csCogqc79Np2i7e8ADavILd3xNvuj/+bXBfL3Gu+pUgV3F5AWhCKTTbLoIplkUE3+YS2neBqDjXdHNFqPx5o7u5syXCNm5oQdEo9jPpYbC6qEjkAwbwe83rcprk90q/R9T2oBpHNSJ9fvRmbGxAJVya86oFQU3thRJAKhI+D2et20GXbkDdkLWIAxyORByPCdCex1TQEIm4DKCVoP5dd4BPJs8opwfpqyh6Cj8ZhKtpXjj8nE9AyYbWMLE8uLGNtQ7JaYBf8XkAw1M53S4mhxQIDAQAB"), signedData, signature);
                if (!verified) {
                    Log.w(TAG, "signature does not match data.");
                    return null;
                }
            }
            int numTransactions = 0;
            try {
                JSONObject jObject = new JSONObject(signedData);
                long nonce = jObject.optLong("nonce");
                JSONArray jTransactionsArray = jObject.optJSONArray("orders");
                if (jTransactionsArray != null) {
                    numTransactions = jTransactionsArray.length();
                }
                if (isNonceKnown(nonce)) {
                    ArrayList<VerifiedPurchase> purchases = new ArrayList();
                    int i = 0;
                    while (i < numTransactions) {
                        try {
                            JSONObject jElement = jTransactionsArray.getJSONObject(i);
                            PurchaseState purchaseState = PurchaseState.valueOf(jElement.getInt("purchaseState"));
                            String productId = jElement.getString("productId");
                            String packageName = jElement.getString("packageName");
                            long purchaseTime = jElement.getLong("purchaseTime");
                            String orderId = jElement.optString("orderId", PocketCurrency.AD_MOB_KEYWORD_HINT);
                            String notifyId = null;
                            if (jElement.has("notificationId")) {
                                notifyId = jElement.getString("notificationId");
                            }
                            String developerPayload = jElement.optString("developerPayload", null);
                            if (purchaseState != PurchaseState.PURCHASED || verified) {
                                purchases.add(new VerifiedPurchase(purchaseState, notifyId, productId, orderId, purchaseTime, developerPayload));
                            }
                            i++;
                        } catch (JSONException e) {
                            Log.e(TAG, "JSON exception: ", e);
                            return null;
                        }
                    }
                    removeNonce(nonce);
                    return purchases;
                } else {
                    Log.w(TAG, new StringBuilder("Nonce not found: ").append(nonce).toString());
                    return null;
                }
            } catch (JSONException e2) {
                return null;
            }
        }
    }
}