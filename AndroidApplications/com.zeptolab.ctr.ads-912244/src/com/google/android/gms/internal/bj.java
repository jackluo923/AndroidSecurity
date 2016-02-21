package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;

public final class bj implements MediationBannerListener, MediationInterstitialListener {
    private final bh mT;

    class AnonymousClass_10 implements Runnable {
        final /* synthetic */ ErrorCode mV;

        AnonymousClass_10(ErrorCode errorCode) {
            this.mV = errorCode;
        }

        public void run() {
            try {
                bj.this.mT.onAdFailedToLoad(bk.a(this.mV));
            } catch (RemoteException e) {
                da.b("Could not call onAdFailedToLoad.", e);
            }
        }
    }

    class AnonymousClass_5 implements Runnable {
        final /* synthetic */ ErrorCode mV;

        AnonymousClass_5(ErrorCode errorCode) {
            this.mV = errorCode;
        }

        public void run() {
            try {
                bj.this.mT.onAdFailedToLoad(bk.a(this.mV));
            } catch (RemoteException e) {
                da.b("Could not call onAdFailedToLoad.", e);
            }
        }
    }

    public bj(bh bhVar) {
        this.mT = bhVar;
    }

    public void onClick(MediationBannerAdapter mediationBannerAdapter) {
        da.s("Adapter called onClick.");
        if (cz.aX()) {
            try {
                this.mT.O();
            } catch (RemoteException e) {
                da.b("Could not call onAdClicked.", e);
            }
        } else {
            da.w("onClick must be called on the main UI thread.");
            cz.pT.post(new Runnable() {
                public void run() {
                    try {
                        bj.this.mT.O();
                    } catch (RemoteException e) {
                        da.b("Could not call onAdClicked.", e);
                    }
                }
            });
        }
    }

    public void onDismissScreen(MediationBannerAdapter mediationBannerAdapter) {
        da.s("Adapter called onDismissScreen.");
        if (cz.aX()) {
            try {
                this.mT.onAdClosed();
            } catch (RemoteException e) {
                da.b("Could not call onAdClosed.", e);
            }
        } else {
            da.w("onDismissScreen must be called on the main UI thread.");
            cz.pT.post(new Runnable() {
                public void run() {
                    try {
                        bj.this.mT.onAdClosed();
                    } catch (RemoteException e) {
                        da.b("Could not call onAdClosed.", e);
                    }
                }
            });
        }
    }

    public void onDismissScreen(MediationInterstitialAdapter mediationInterstitialAdapter) {
        da.s("Adapter called onDismissScreen.");
        if (cz.aX()) {
            try {
                this.mT.onAdClosed();
            } catch (RemoteException e) {
                da.b("Could not call onAdClosed.", e);
            }
        } else {
            da.w("onDismissScreen must be called on the main UI thread.");
            cz.pT.post(new Runnable() {
                public void run() {
                    try {
                        bj.this.mT.onAdClosed();
                    } catch (RemoteException e) {
                        da.b("Could not call onAdClosed.", e);
                    }
                }
            });
        }
    }

    public void onFailedToReceiveAd(MediationBannerAdapter mediationBannerAdapter, ErrorCode errorCode) {
        da.s("Adapter called onFailedToReceiveAd with error. " + errorCode);
        if (cz.aX()) {
            try {
                this.mT.onAdFailedToLoad(bk.a(errorCode));
            } catch (RemoteException e) {
                da.b("Could not call onAdFailedToLoad.", e);
            }
        } else {
            da.w("onFailedToReceiveAd must be called on the main UI thread.");
            cz.pT.post(new AnonymousClass_5(errorCode));
        }
    }

    public void onFailedToReceiveAd(MediationInterstitialAdapter mediationInterstitialAdapter, ErrorCode errorCode) {
        da.s("Adapter called onFailedToReceiveAd with error " + errorCode + ".");
        if (cz.aX()) {
            try {
                this.mT.onAdFailedToLoad(bk.a(errorCode));
            } catch (RemoteException e) {
                da.b("Could not call onAdFailedToLoad.", e);
            }
        } else {
            da.w("onFailedToReceiveAd must be called on the main UI thread.");
            cz.pT.post(new AnonymousClass_10(errorCode));
        }
    }

    public void onLeaveApplication(MediationBannerAdapter mediationBannerAdapter) {
        da.s("Adapter called onLeaveApplication.");
        if (cz.aX()) {
            try {
                this.mT.onAdLeftApplication();
            } catch (RemoteException e) {
                da.b("Could not call onAdLeftApplication.", e);
            }
        } else {
            da.w("onLeaveApplication must be called on the main UI thread.");
            cz.pT.post(new Runnable() {
                public void run() {
                    try {
                        bj.this.mT.onAdLeftApplication();
                    } catch (RemoteException e) {
                        da.b("Could not call onAdLeftApplication.", e);
                    }
                }
            });
        }
    }

    public void onLeaveApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        da.s("Adapter called onLeaveApplication.");
        if (cz.aX()) {
            try {
                this.mT.onAdLeftApplication();
            } catch (RemoteException e) {
                da.b("Could not call onAdLeftApplication.", e);
            }
        } else {
            da.w("onLeaveApplication must be called on the main UI thread.");
            cz.pT.post(new Runnable() {
                public void run() {
                    try {
                        bj.this.mT.onAdLeftApplication();
                    } catch (RemoteException e) {
                        da.b("Could not call onAdLeftApplication.", e);
                    }
                }
            });
        }
    }

    public void onPresentScreen(MediationBannerAdapter mediationBannerAdapter) {
        da.s("Adapter called onPresentScreen.");
        if (cz.aX()) {
            try {
                this.mT.onAdOpened();
            } catch (RemoteException e) {
                da.b("Could not call onAdOpened.", e);
            }
        } else {
            da.w("onPresentScreen must be called on the main UI thread.");
            cz.pT.post(new Runnable() {
                public void run() {
                    try {
                        bj.this.mT.onAdOpened();
                    } catch (RemoteException e) {
                        da.b("Could not call onAdOpened.", e);
                    }
                }
            });
        }
    }

    public void onPresentScreen(MediationInterstitialAdapter mediationInterstitialAdapter) {
        da.s("Adapter called onPresentScreen.");
        if (cz.aX()) {
            try {
                this.mT.onAdOpened();
            } catch (RemoteException e) {
                da.b("Could not call onAdOpened.", e);
            }
        } else {
            da.w("onPresentScreen must be called on the main UI thread.");
            cz.pT.post(new Runnable() {
                public void run() {
                    try {
                        bj.this.mT.onAdOpened();
                    } catch (RemoteException e) {
                        da.b("Could not call onAdOpened.", e);
                    }
                }
            });
        }
    }

    public void onReceivedAd(MediationBannerAdapter mediationBannerAdapter) {
        da.s("Adapter called onReceivedAd.");
        if (cz.aX()) {
            try {
                this.mT.onAdLoaded();
            } catch (RemoteException e) {
                da.b("Could not call onAdLoaded.", e);
            }
        } else {
            da.w("onReceivedAd must be called on the main UI thread.");
            cz.pT.post(new Runnable() {
                public void run() {
                    try {
                        bj.this.mT.onAdLoaded();
                    } catch (RemoteException e) {
                        da.b("Could not call onAdLoaded.", e);
                    }
                }
            });
        }
    }

    public void onReceivedAd(MediationInterstitialAdapter mediationInterstitialAdapter) {
        da.s("Adapter called onReceivedAd.");
        if (cz.aX()) {
            try {
                this.mT.onAdLoaded();
            } catch (RemoteException e) {
                da.b("Could not call onAdLoaded.", e);
            }
        } else {
            da.w("onReceivedAd must be called on the main UI thread.");
            cz.pT.post(new Runnable() {
                public void run() {
                    try {
                        bj.this.mT.onAdLoaded();
                    } catch (RemoteException e) {
                        da.b("Could not call onAdLoaded.", e);
                    }
                }
            });
        }
    }
}