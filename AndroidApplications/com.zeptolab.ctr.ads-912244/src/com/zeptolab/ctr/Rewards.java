package com.zeptolab.ctr;

import android.app.Application;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.LinkedList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import me.kiip.sdk.Kiip;
import me.kiip.sdk.Kiip.Callback;
import me.kiip.sdk.Kiip.OnContentListener;
import me.kiip.sdk.Kiip.OnSwarmListener;
import me.kiip.sdk.KiipFragmentCompat;
import me.kiip.sdk.Modal;
import me.kiip.sdk.Modal.OnDismissListener;
import me.kiip.sdk.Modal.OnShowListener;
import me.kiip.sdk.Poptart;

public class Rewards {
    static final String TAG = "REWARDS";
    protected static Application app;
    protected CtrApp activity;
    protected KiipFragmentCompat kiipFragment;
    protected Poptart m_poptart;
    protected boolean readyToShow;
    protected CtrView view;

    class AnonymousClass_1 implements OnSwarmListener {
        final /* synthetic */ CtrView val$view;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ String val$challenge_id;
            final /* synthetic */ int val$day;
            final /* synthetic */ int val$month;
            final /* synthetic */ int val$year;

            AnonymousClass_1(String str, int i, int i2, int i3) {
                this.val$challenge_id = str;
                this.val$year = i;
                this.val$month = i2;
                this.val$day = i3;
            }

            public void run() {
                AnonymousClass_1.this.this$0.nativeRewardsStartChallenge(this.val$challenge_id, this.val$year, this.val$month, this.val$day);
            }
        }

        AnonymousClass_1(CtrView ctrView) {
            this.val$view = ctrView;
        }

        public void onSwarm(Kiip kiip, String str) {
            Matcher matcher = Pattern.compile("(\\w+)_(\\d{4})_(\\d{2})_(\\d{2})").matcher(str);
            if (matcher.find()) {
                String group = matcher.group(1);
                L.i(TAG, "onSwarm, id = " + group + "; year = " + matcher.group(GoogleScorer.CLIENT_PLUS) + "; month = " + matcher.group(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE) + "; day = " + matcher.group(GoogleScorer.CLIENT_APPSTATE));
                this.val$view.queueEvent(new AnonymousClass_1(group, Integer.parseInt(matcher.group(GoogleScorer.CLIENT_PLUS)), Integer.parseInt(matcher.group(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)), Integer.parseInt(matcher.group(GoogleScorer.CLIENT_APPSTATE))));
            } else {
                L.e(TAG, "Unexpected challenge id: " + str);
            }
        }
    }

    class AnonymousClass_2 implements OnContentListener {
        final /* synthetic */ CtrView val$view;

        class AnonymousClass_1 implements Runnable {
            final /* synthetic */ String val$content;
            final /* synthetic */ int val$quantity;

            AnonymousClass_1(String str, int i) {
                this.val$content = str;
                this.val$quantity = i;
            }

            public void run() {
                AnonymousClass_2.this.this$0.nativeRewardsOnContent(this.val$content, this.val$quantity);
            }
        }

        AnonymousClass_2(CtrView ctrView) {
            this.val$view = ctrView;
        }

        public void onContent(Kiip kiip, String str, int i, String str2, String str3) {
            L.i(TAG, "onContent content=" + str + " quantity=" + i + " transactionId=" + str2 + " signature=" + str3);
            this.val$view.queueEvent(new AnonymousClass_1(str, i));
        }
    }

    class AnonymousClass_5 implements Runnable {
        final /* synthetic */ boolean val$callback;
        final /* synthetic */ String val$momentID;

        AnonymousClass_5(String str, boolean z) {
            this.val$momentID = str;
            this.val$callback = z;
        }

        public void run() {
            Kiip.getInstance().saveMoment(this.val$momentID, new Callback() {

                class AnonymousClass_4 implements Runnable {
                    final /* synthetic */ boolean val$f_result;

                    AnonymousClass_4(boolean z) {
                        this.val$f_result = z;
                    }

                    public void run() {
                        AnonymousClass_1.this.this$1.this$0.nativeRewardsEventFinished(AnonymousClass_1.this.this$1.val$momentID, this.val$f_result);
                    }
                }

                public void onFailed(Kiip kiip, Exception exception) {
                    L.e(TAG, "rewards", exception);
                    if (AnonymousClass_5.this.val$callback) {
                        AnonymousClass_5.this.this$0.view.queueEvent(new Runnable() {
                            public void run() {
                                AnonymousClass_1.this.this$1.this$0.nativeRewardsEventFailed(AnonymousClass_1.this.this$1.val$momentID);
                            }
                        });
                    }
                }

                public void onFinished(Kiip kiip, Poptart poptart) {
                    L.i(TAG, "rewards, saveMoment onFinished");
                    boolean z = false;
                    if (poptart != null) {
                        Modal modal = poptart.getModal();
                        if (modal != null) {
                            L.i(TAG, "poptart modal tag = " + modal.getTag() + ", momentId = " + AnonymousClass_5.this.val$momentID);
                            modal.setOnShowListener(new OnShowListener() {
                                public void onShow(Modal modal) {
                                    L.i(TAG, "Modal onShow, tag = " + modal.getTag());
                                    AnonymousClass_1.this.this$1.this$0.view.queueEvent(new Runnable() {
                                        public void run() {
                                            AnonymousClass_2.this.this$2.this$1.this$0.nativeRewardsOnShowInterstitial();
                                        }
                                    });
                                }
                            });
                            modal.setOnDismissListener(new OnDismissListener() {
                                public void onDismiss(Modal modal) {
                                    L.i(TAG, "Modal onDismiss, tag = " + modal.getTag());
                                    AnonymousClass_1.this.this$1.this$0.view.queueEvent(new Runnable() {
                                        public void run() {
                                            AnonymousClass_3.this.this$2.this$1.this$0.nativeRewardsOnHideInterstitial();
                                        }
                                    });
                                }
                            });
                            z = true;
                        }
                    } else {
                        L.i(TAG, "No Poptart");
                    }
                    if (z) {
                        AnonymousClass_5.this.this$0.m_poptart = poptart;
                        AnonymousClass_5.this.this$0.readyToShow = true;
                    }
                    if (AnonymousClass_5.this.val$callback) {
                        AnonymousClass_5.this.this$0.view.queueEvent(new AnonymousClass_4(z));
                    }
                }
            });
        }
    }

    class AnonymousClass_6 implements Runnable {
        final /* synthetic */ boolean val$callback;
        final /* synthetic */ String val$momentID;
        final /* synthetic */ int val$value;

        AnonymousClass_6(String str, int i, boolean z) {
            this.val$momentID = str;
            this.val$value = i;
            this.val$callback = z;
        }

        public void run() {
            Kiip.getInstance().saveMoment(this.val$momentID, (double) this.val$value, new Callback() {

                class AnonymousClass_4 implements Runnable {
                    final /* synthetic */ boolean val$f_result;

                    AnonymousClass_4(boolean z) {
                        this.val$f_result = z;
                    }

                    public void run() {
                        AnonymousClass_1.this.this$1.this$0.nativeRewardsEventFinished(AnonymousClass_1.this.this$1.val$momentID, this.val$f_result);
                    }
                }

                public void onFailed(Kiip kiip, Exception exception) {
                    L.e(TAG, "rewards", exception);
                    if (AnonymousClass_6.this.val$callback) {
                        AnonymousClass_6.this.this$0.view.queueEvent(new Runnable() {
                            public void run() {
                                AnonymousClass_1.this.this$1.this$0.nativeRewardsEventFailed(AnonymousClass_1.this.this$1.val$momentID);
                            }
                        });
                    }
                }

                public void onFinished(Kiip kiip, Poptart poptart) {
                    boolean z = false;
                    if (poptart != null) {
                        Modal modal = poptart.getModal();
                        if (modal != null) {
                            L.i(TAG, "poptart modal tag = " + modal.getTag() + ", momentId = " + AnonymousClass_6.this.val$momentID);
                            modal.setOnShowListener(new OnShowListener() {
                                public void onShow(Modal modal) {
                                    L.i(TAG, "Modal onShow, tag = " + modal.getTag());
                                    AnonymousClass_1.this.this$1.this$0.view.queueEvent(new Runnable() {
                                        public void run() {
                                            AnonymousClass_2.this.this$2.this$1.this$0.nativeRewardsOnShowInterstitial();
                                        }
                                    });
                                }
                            });
                            modal.setOnDismissListener(new OnDismissListener() {
                                public void onDismiss(Modal modal) {
                                    L.i(TAG, "Modal onDismiss, tag = " + modal.getTag());
                                    AnonymousClass_1.this.this$1.this$0.view.queueEvent(new Runnable() {
                                        public void run() {
                                            AnonymousClass_3.this.this$2.this$1.this$0.nativeRewardsOnHideInterstitial();
                                        }
                                    });
                                }
                            });
                            z = true;
                        }
                    }
                    if (z) {
                        AnonymousClass_6.this.this$0.m_poptart = poptart;
                        AnonymousClass_6.this.this$0.readyToShow = true;
                    }
                    if (AnonymousClass_6.this.val$callback) {
                        AnonymousClass_6.this.this$0.view.queueEvent(new AnonymousClass_4(z));
                    }
                }
            });
        }
    }

    public Rewards(CtrApp ctrApp, CtrView ctrView) {
        this.readyToShow = false;
        this.m_poptart = null;
        this.activity = ctrApp;
        this.view = ctrView;
        KiipFragmentCompat.setDefaultQueue(new LinkedList());
        Kiip init = Kiip.init(app, ZBuildConfig.id_kiip_key, ZBuildConfig.id_kiip_secret);
        init.setOnSwarmListener(new AnonymousClass_1(ctrView));
        init.setOnContentListener(new AnonymousClass_2(ctrView));
        Kiip.setInstance(init);
        this.kiipFragment = new KiipFragmentCompat();
        ctrApp.getSupportFragmentManager().beginTransaction().add(this.kiipFragment, TAG).commit();
    }

    public static void setApplication(Application application) {
        app = application;
    }

    public void disable() {
        onEndSession();
        this.activity.disableRewards();
    }

    public void event(String str, boolean z) {
        L.i(TAG, "EVENT " + str);
        if (!this.readyToShow) {
            this.activity.runOnUiThread(new AnonymousClass_5(str, z));
        }
    }

    public void eventWithValue(String str, int i, boolean z) {
        L.i(TAG, "EVENT " + str + " VALUE " + i);
        if (!this.readyToShow) {
            this.activity.runOnUiThread(new AnonymousClass_6(str, i, z));
        }
    }

    protected native void nativeRewardsEventFailed(String str);

    protected native void nativeRewardsEventFinished(String str, boolean z);

    protected native void nativeRewardsOnContent(String str, int i);

    protected native void nativeRewardsOnHideInterstitial();

    protected native void nativeRewardsOnShowInterstitial();

    protected native void nativeRewardsStartChallenge(String str, int i, int i2, int i3);

    public void onDestroy() {
    }

    public void onEndSession() {
        Kiip.getInstance().endSession(new Callback() {
            public void onFailed(Kiip kiip, Exception exception) {
                L.e(TAG, "rewards", exception);
            }

            public void onFinished(Kiip kiip, Poptart poptart) {
                L.i(TAG, "rewards, endSession onFinished");
            }
        });
    }

    public void onStartSession() {
        Kiip.getInstance().startSession(new Callback() {
            public void onFailed(Kiip kiip, Exception exception) {
                L.e(TAG, "rewards", exception);
            }

            public void onFinished(Kiip kiip, Poptart poptart) {
                Rewards.this.kiipFragment.showPoptart(poptart);
                L.i(TAG, "rewards, startSession onFinished");
            }
        });
    }

    public boolean showInterstitial() {
        if (!this.readyToShow) {
            return false;
        }
        this.readyToShow = false;
        this.activity.runOnUiThread(new Runnable() {
            public void run() {
                Rewards.this.kiipFragment.showPoptart(Rewards.this.m_poptart);
            }
        });
        return true;
    }
}