package com.vungle.publisher;

import java.util.Map;

public interface a {
    Map getExtras();

    String getIncentivizedCancelDialogBodyText();

    String getIncentivizedCancelDialogCloseButtonText();

    String getIncentivizedCancelDialogKeepWatchingButtonText();

    String getIncentivizedCancelDialogTitle();

    String getIncentivizedUserId();

    Orientation getOrientation();

    String getPlacement();

    boolean isBackButtonImmediatelyEnabled();

    boolean isImmersiveMode();

    boolean isIncentivized();

    boolean isSoundEnabled();
}