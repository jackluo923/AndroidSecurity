package com.vungle.publisher;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class AdConfig implements a {
    final b a;

    @Inject
    public AdConfig() {
        this.a = new b();
    }

    private String a(int i) {
        return this.a.a(new StringBuilder("extra").append(i).toString());
    }

    private void a(int i, String str) {
        this.a.a(new StringBuilder("extra").append(i).toString(), str);
    }

    public boolean equals(Object obj) {
        return this.a.equals(obj);
    }

    public String getExtra1() {
        return a(1);
    }

    public String getExtra2() {
        return a(GoogleScorer.CLIENT_PLUS);
    }

    public String getExtra3() {
        return a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
    }

    public String getExtra4() {
        return a(GoogleScorer.CLIENT_APPSTATE);
    }

    public String getExtra5() {
        return a(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
    }

    public String getExtra6() {
        return a(IabHelper.BILLING_RESPONSE_RESULT_ERROR);
    }

    public String getExtra7() {
        return a(GoogleScorer.CLIENT_ALL);
    }

    public String getExtra8() {
        return a(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
    }

    public Map getExtras() {
        return this.a.getExtras();
    }

    public String getIncentivizedCancelDialogBodyText() {
        return this.a.getIncentivizedCancelDialogBodyText();
    }

    public String getIncentivizedCancelDialogCloseButtonText() {
        return this.a.getIncentivizedCancelDialogCloseButtonText();
    }

    public String getIncentivizedCancelDialogKeepWatchingButtonText() {
        return this.a.getIncentivizedCancelDialogKeepWatchingButtonText();
    }

    public String getIncentivizedCancelDialogTitle() {
        return this.a.getIncentivizedCancelDialogTitle();
    }

    public String getIncentivizedUserId() {
        return this.a.getIncentivizedUserId();
    }

    public Orientation getOrientation() {
        return this.a.getOrientation();
    }

    public String getPlacement() {
        return this.a.getPlacement();
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean isBackButtonImmediatelyEnabled() {
        return this.a.isBackButtonImmediatelyEnabled();
    }

    public boolean isImmersiveMode() {
        return this.a.isImmersiveMode();
    }

    public boolean isIncentivized() {
        return this.a.isIncentivized();
    }

    public boolean isSoundEnabled() {
        return this.a.isSoundEnabled();
    }

    public void setBackButtonImmediatelyEnabled(boolean z) {
        this.a.a(z);
    }

    public void setExtra1(String str) {
        a(1, str);
    }

    public void setExtra2(String str) {
        a(GoogleScorer.CLIENT_PLUS, str);
    }

    public void setExtra3(String str) {
        a(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, str);
    }

    public void setExtra4(String str) {
        a(GoogleScorer.CLIENT_APPSTATE, str);
    }

    public void setExtra5(String str) {
        a(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, str);
    }

    public void setExtra6(String str) {
        a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, str);
    }

    public void setExtra7(String str) {
        a(GoogleScorer.CLIENT_ALL, str);
    }

    public void setExtra8(String str) {
        a(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED, str);
    }

    public void setImmersiveMode(boolean z) {
        this.a.b(z);
    }

    public void setIncentivized(boolean z) {
        this.a.c(z);
    }

    public void setIncentivizedCancelDialogBodyText(String str) {
        this.a.b(str);
    }

    public void setIncentivizedCancelDialogCloseButtonText(String str) {
        this.a.c(str);
    }

    public void setIncentivizedCancelDialogKeepWatchingButtonText(String str) {
        this.a.d(str);
    }

    public void setIncentivizedCancelDialogTitle(String str) {
        this.a.e(str);
    }

    public void setIncentivizedUserId(String str) {
        this.a.f(str);
    }

    public void setOrientation(Orientation orientation) {
        this.a.a(orientation);
    }

    public void setPlacement(String str) {
        this.a.g(str);
    }

    public void setSoundEnabled(boolean z) {
        this.a.d(z);
    }

    public String toString() {
        return this.a.toString();
    }
}