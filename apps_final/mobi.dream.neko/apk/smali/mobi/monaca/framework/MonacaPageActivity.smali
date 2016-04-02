.class public Lmobi/monaca/framework/MonacaPageActivity;
.super Lorg/apache/cordova/DroidGap;
.source "MonacaPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/MonacaPageActivity$12;
    }
.end annotation


# static fields
.field private static final MONACA_TRANSIT_REQUEST:I = 0xd05

.field public static final TAG:Ljava/lang/String;

.field public static final TRANSITION_PARAM_NAME:Ljava/lang/String;

.field public static final URL_PARAM_NAME:Ljava/lang/String;


# instance fields
.field protected background:Landroid/graphics/drawable/Drawable;

.field protected closePageReceiver:Landroid/content/BroadcastReceiver;

.field protected currentMonacaUri:Lmobi/monaca/framework/MonacaURI;

.field protected handler:Landroid/os/Handler;

.field protected infoForJavaScript:Lorg/json/JSONObject;

.field protected isCapableForTransition:Z

.field private isOnDestroyMonacaCalled:Z

.field protected mApp:Lmobi/monaca/framework/MonacaApplication;

.field protected mCurrentHtml:Ljava/lang/String;

.field private mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

.field protected monacaSplashDialog:Landroid/app/Dialog;

.field protected pageIndex:I

.field protected pushData:Lmobi/monaca/utils/gcm/GCMPushDataset;

.field protected pushReceiver:Landroid/content/BroadcastReceiver;

.field protected transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

.field protected uiContext:Lmobi/monaca/framework/nativeui/UIContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lmobi/monaca/framework/UserIdentifier;->identifier:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Lmobi/monaca/framework/MonacaPageActivity;->TRANSITION_PARAM_NAME:Ljava/lang/String;

    .line 98
    sget-object v0, Lmobi/monaca/framework/UserIdentifier;->identifier:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sput-object v0, Lmobi/monaca/framework/MonacaPageActivity;->URL_PARAM_NAME:Ljava/lang/String;

    .line 99
    const-class v0, Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/MonacaPageActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    .line 104
    iput-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->handler:Landroid/os/Handler;

    .line 108
    iput v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->pageIndex:I

    .line 112
    iput-boolean v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->isOnDestroyMonacaCalled:Z

    .line 114
    new-instance v0, Lmobi/monaca/framework/MonacaPageActivity$1;

    invoke-direct {v0, p0}, Lmobi/monaca/framework/MonacaPageActivity$1;-><init>(Lmobi/monaca/framework/MonacaPageActivity;)V

    iput-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->closePageReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Lmobi/monaca/framework/MonacaPageActivity$2;

    invoke-direct {v0, p0}, Lmobi/monaca/framework/MonacaPageActivity$2;-><init>(Lmobi/monaca/framework/MonacaPageActivity;)V

    iput-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->pushReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->isCapableForTransition:Z

    .line 137
    iput-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    .line 141
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->infoForJavaScript:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lmobi/monaca/framework/MonacaPageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/MonacaPageActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/monaca/framework/MonacaPageActivity;)Lmobi/monaca/framework/nativeui/component/PageComponent;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/MonacaPageActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    return-object v0
.end method

.method private getScreenOrientationOfMonacaPageActivity(Landroid/content/pm/PackageInfo;)I
    .locals 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 567
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 568
    .local v0, "activies":[Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1

    .line 569
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 570
    aget-object v1, v0, v2

    .line 571
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-class v4, Lmobi/monaca/framework/MonacaPageActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    iget v3, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 578
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "i":I
    :goto_1
    return v3

    .line 569
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "i":I
    :cond_1
    const/4 v3, 0x4

    goto :goto_1
.end method

.method private final onDestroyMonacaCaller()V
    .locals 1

    .prologue
    .line 855
    iget-boolean v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->isOnDestroyMonacaCalled:Z

    if-nez v0, :cond_0

    .line 857
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->onDestroyMonaca()V

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->isOnDestroyMonacaCalled:Z

    .line 860
    :cond_0
    return-void
.end method

.method private requestJStoProcessMessages()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->script_request_processjs:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method private triggerOnReactivate()V
    .locals 2

    .prologue
    .line 832
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, v1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    if-eqz v1, :cond_0

    .line 833
    sget v1, Lmobi/monaca/framework/psedo/R$string;->script_trigger_onreactivate:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "script":Ljava/lang/String;
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 836
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public _popPage()V
    .locals 3

    .prologue
    .line 1097
    invoke-static {}, Lmobi/monaca/framework/MonacaApplication;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1098
    .local v0, "pageNum":I
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->finish()V

    .line 1100
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1102
    sget v1, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_close_enter:I

    sget v2, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_close_exit:I

    invoke-virtual {p0, v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->overridePendingTransition(II)V

    .line 1104
    :cond_0
    return-void
.end method

.method public applyScreenOrientation(Lmobi/monaca/framework/nativeui/component/PageOrientation;)V
    .locals 2
    .param p1, "pageOrientation"    # Lmobi/monaca/framework/nativeui/component/PageOrientation;

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 529
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->applyScreenOrientationFromManifest()V

    .line 554
    :goto_0
    return-void

    .line 533
    :cond_0
    sget-object v0, Lmobi/monaca/framework/MonacaPageActivity$12;->$SwitchMap$mobi$monaca$framework$nativeui$component$PageOrientation:[I

    invoke-virtual {p1}, Lmobi/monaca/framework/nativeui/component/PageOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 535
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 539
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 543
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 549
    :pswitch_3
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->applyScreenOrientationFromManifest()V

    goto :goto_0

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected applyScreenOrientationFromManifest()V
    .locals 6

    .prologue
    .line 558
    :try_start_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 559
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getScreenOrientationOfMonacaPageActivity(Landroid/content/pm/PackageInfo;)I

    move-result v2

    .line 560
    .local v2, "screenOrientation":I
    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaPageActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "screenOrientation":I
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected applyUiToView()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 584
    iget-object v10, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    if-nez v10, :cond_1

    .line 585
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->applyScreenOrientationFromManifest()V

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v10, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    invoke-virtual {v10}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {p0, v10}, Lmobi/monaca/framework/MonacaPageActivity;->setupBackground(Landroid/graphics/drawable/Drawable;)V

    .line 589
    iget-object v10, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    invoke-virtual {v10}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getScreenOrientation()Lmobi/monaca/framework/nativeui/component/PageOrientation;

    move-result-object v10

    invoke-virtual {p0, v10}, Lmobi/monaca/framework/MonacaPageActivity;->applyScreenOrientation(Lmobi/monaca/framework/nativeui/component/PageOrientation;)V

    .line 592
    iget-object v10, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 593
    iget-object v10, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v10}, Lorg/apache/cordova/CordovaWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 594
    .local v0, "appViewParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 595
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 598
    :cond_2
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 599
    .local v4, "container":Landroid/widget/RelativeLayout;
    iget-object v10, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    iget-object v10, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    invoke-virtual {v10}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getTopComponent()Lmobi/monaca/framework/nativeui/component/Component;

    move-result-object v6

    check-cast v6, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;

    .line 603
    .local v6, "topComponent":Lmobi/monaca/framework/nativeui/container/ToolbarContainer;
    const/4 v8, 0x0

    .line 604
    .local v8, "topComponentViewId":I
    if-eqz v6, :cond_3

    .line 606
    invoke-virtual {v6}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v8

    .line 607
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 609
    .local v7, "topComponentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 610
    invoke-virtual {v6}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v10, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 615
    .local v5, "shadowViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x3

    invoke-virtual {v5, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 616
    invoke-virtual {v6}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->getShadowView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v10, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    .end local v5    # "shadowViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "topComponentParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v10, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    invoke-virtual {v10}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getBottomComponent()Lmobi/monaca/framework/nativeui/component/Component;

    move-result-object v1

    check-cast v1, Lmobi/monaca/framework/nativeui/container/Container;

    .line 621
    .local v1, "bottomComponentContainer":Lmobi/monaca/framework/nativeui/container/Container;
    const/4 v2, 0x0

    .line 622
    .local v2, "bottomComponentContainerViewId":I
    if-eqz v1, :cond_4

    .line 623
    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/container/Container;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v2

    .line 624
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 626
    .local v3, "bottomComponentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xc

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 627
    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/container/Container;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v10, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v5, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 632
    .restart local v5    # "shadowViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x2

    invoke-virtual {v5, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 633
    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/container/Container;->getShadowView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v10, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    .end local v3    # "bottomComponentParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "shadowViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 639
    .local v9, "webViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 640
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lmobi/monaca/framework/nativeui/container/ToolbarContainer;->isTransparent()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 641
    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 646
    :goto_1
    if-eqz v1, :cond_6

    .line 647
    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/container/Container;->isTransparent()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 648
    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 650
    :cond_5
    const/4 v10, 0x2

    invoke-virtual {v9, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 652
    :cond_6
    iget-object v10, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 654
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xf

    if-ne v10, v11, :cond_0

    .line 655
    iget-object v10, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 643
    :cond_7
    const/4 v10, 0x3

    invoke-virtual {v9, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method protected buildCurrentUriHtml()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 924
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmobi/monaca/framework/util/AssetUtils;->assetToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "html":Ljava/lang/String;
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->currentMonacaUri:Lmobi/monaca/framework/MonacaURI;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaURI;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmobi/monaca/framework/util/UrlUtil;->isMonacaUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->currentMonacaUri:Lmobi/monaca/framework/MonacaURI;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaURI;->hasQueryParams()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->currentMonacaUri:Lmobi/monaca/framework/MonacaURI;

    invoke-virtual {v1, v0}, Lmobi/monaca/framework/MonacaURI;->getQueryParamsContainingHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 930
    :cond_0
    return-object v0
.end method

.method protected createDisplayInfo()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 443
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 445
    .local v2, "result":Lorg/json/JSONObject;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 446
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 448
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 450
    .local v0, "display":Landroid/view/Display;
    :try_start_0
    sget v3, Lmobi/monaca/framework/psedo/R$string;->width:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 451
    sget v3, Lmobi/monaca/framework/psedo/R$string;->height:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    return-object v2

    .line 452
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected createIntentForNextPage(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)Landroid/content/Intent;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lmobi/monaca/framework/transition/TransitionParams;

    .prologue
    .line 1017
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1019
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmobi/monaca/framework/MonacaPageActivity;->URL_PARAM_NAME:Ljava/lang/String;

    invoke-static {p1}, Lmobi/monaca/framework/util/UrlUtil;->getResolvedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    if-eqz p2, :cond_0

    .line 1021
    sget-object v1, Lmobi/monaca/framework/MonacaPageActivity;->TRANSITION_PARAM_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1023
    :cond_0
    return-object v0
.end method

.method protected createWebViewClient(Lmobi/monaca/framework/MonacaPageActivity;Lorg/apache/cordova/CordovaWebView;)Landroid/webkit/WebViewClient;
    .locals 3
    .param p1, "page"    # Lmobi/monaca/framework/MonacaPageActivity;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 1164
    const/4 v0, 0x0

    .line 1166
    .local v0, "client":Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 1167
    new-instance v0, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;

    .end local v0    # "client":Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;
    invoke-direct {v0, p1, p2}, Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;-><init>(Lmobi/monaca/framework/MonacaPageActivity;Lorg/apache/cordova/CordovaWebView;)V

    .line 1171
    .restart local v0    # "client":Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;
    :goto_0
    return-object v0

    .line 1169
    :cond_0
    new-instance v0, Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;

    .end local v0    # "client":Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;
    invoke-direct {v0, p1, p2}, Lmobi/monaca/framework/view/MonacaPageHoneyCombWebViewClient;-><init>(Lmobi/monaca/framework/MonacaPageActivity;Lorg/apache/cordova/CordovaWebView;)V

    .restart local v0    # "client":Lmobi/monaca/framework/view/MonacaPageGingerbreadWebViewClient;
    goto :goto_0
.end method

.method public dismissPage()V
    .locals 3

    .prologue
    .line 1128
    invoke-static {}, Lmobi/monaca/framework/MonacaApplication;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1129
    .local v0, "pageNum":I
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->finish()V

    .line 1131
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1132
    sget v1, Lmobi/monaca/framework/psedo/R$anim;->monaca_dialog_close_enter:I

    sget v2, Lmobi/monaca/framework/psedo/R$anim;->monaca_dialog_close_exit:I

    invoke-virtual {p0, v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->overridePendingTransition(II)V

    .line 1134
    :cond_0
    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 1118
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/DroidGap;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 1119
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 3
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 1123
    sget-object v0, Lmobi/monaca/framework/MonacaPageActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish from child. child class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/monaca/framework/util/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->finishFromChild(Landroid/app/Activity;)V

    .line 1125
    return-void
.end method

.method public getAppWWWPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->slash:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->www_slash:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mCurrentHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentMonacaUri()Lmobi/monaca/framework/MonacaURI;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->currentMonacaUri:Lmobi/monaca/framework/MonacaURI;

    return-object v0
.end method

.method public getCurrentUriWithoutOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->currentMonacaUri:Lmobi/monaca/framework/MonacaURI;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaURI;->getUrlWithoutOptions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getHomeUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lmobi/monaca/framework/psedo/R$string;->asset_url:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->relative_index_path:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    .local v0, "index":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1179
    .end local v0    # "index":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "index":Ljava/lang/String;
    :cond_1
    sget v1, Lmobi/monaca/framework/psedo/R$string;->url:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->relative_parent_path:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->url:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInfoForJavaScript()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->infoForJavaScript:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected getSplashDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lmobi/monaca/framework/MonacaSScreenActivity;->SPLASH_IMAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 201
    .local v0, "is":Ljava/io/InputStream;
    const-string v1, "splash_default"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getStyle(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "componentId"    # Ljava/lang/String;

    .prologue
    .line 706
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentIDsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    invoke-virtual {v1}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentIDsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/nativeui/component/Component;

    .line 708
    .local v0, "component":Lmobi/monaca/framework/nativeui/component/Component;
    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/Component;->getStyle()Lorg/json/JSONObject;

    move-result-object v1

    .line 711
    .end local v0    # "component":Lmobi/monaca/framework/nativeui/component/Component;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getUIFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    const/4 v3, 0x0

    .line 668
    .local v3, "stream":Ljava/io/InputStream;
    if-nez p1, :cond_0

    .line 669
    const-string v5, ""

    .line 701
    :goto_0
    return-object v5

    .line 674
    :cond_0
    sget v5, Lmobi/monaca/framework/psedo/R$string;->asset_url:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 675
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "file:///android_asset/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->openAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 676
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 687
    .local v2, "reader":Ljava/io/Reader;
    :goto_1
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 689
    .local v4, "writer":Ljava/io/Writer;
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 692
    .local v0, "buffer":[C
    :goto_2
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "n":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_4

    .line 693
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 696
    .end local v1    # "n":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 697
    if-eqz v3, :cond_1

    .line 698
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v5

    .line 678
    .end local v0    # "buffer":[C
    .end local v2    # "reader":Ljava/io/Reader;
    .end local v4    # "writer":Ljava/io/Writer;
    :cond_2
    sget v5, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 680
    new-instance v5, Ljava/io/File;

    const/4 v6, 0x7

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 681
    new-instance v2, Ljava/io/FileReader;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .restart local v2    # "reader":Ljava/io/Reader;
    goto :goto_1

    .line 684
    .end local v2    # "reader":Ljava/io/Reader;
    :cond_3
    invoke-static {p0, p1}, Lmobi/monaca/framework/util/InputStreamLoader;->loadAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 685
    new-instance v2, Ljava/io/InputStreamReader;

    sget v5, Lmobi/monaca/framework/psedo/R$string;->encoding:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .restart local v2    # "reader":Ljava/io/Reader;
    goto :goto_1

    .line 696
    .restart local v0    # "buffer":[C
    .restart local v1    # "n":I
    .restart local v4    # "writer":Ljava/io/Writer;
    :cond_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 697
    if-eqz v3, :cond_5

    .line 698
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 701
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method protected getUIJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 507
    const/4 v3, 0x0

    .line 509
    .local v3, "uiJSONString":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lmobi/monaca/framework/util/UrlUtil;->getUIFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaPageActivity;->getUIFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 517
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 522
    :goto_0
    return-object v2

    .line 510
    :catch_0
    move-exception v1

    .local v1, "e1":Ljava/io/IOException;
    move-object v2, v4

    .line 512
    goto :goto_0

    .line 519
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 520
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 521
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmobi/monaca/framework/nativeui/UIUtil;->reportJSONParseError(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v4

    .line 522
    goto :goto_0
.end method

.method public getUiContext()Lmobi/monaca/framework/nativeui/UIContext;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    return-object v0
.end method

.method public goHomeAsync(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/MonacaPageActivity;->getHomeUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, "homeUrl":Ljava/lang/String;
    new-instance v1, Lmobi/monaca/framework/MonacaPageActivity$11;

    invoke-direct {v1, p0, v0}, Lmobi/monaca/framework/MonacaPageActivity$11;-><init>(Lmobi/monaca/framework/MonacaPageActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1161
    return-void
.end method

.method public hasBackButtonEventer()Z
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getBackButtonEventer()Lmobi/monaca/framework/nativeui/ComponentEventer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnTapBackButtonAction()Z
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->eventer:Lmobi/monaca/framework/nativeui/UIEventer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->eventer:Lmobi/monaca/framework/nativeui/UIEventer;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/UIEventer;->hasOnTapBackButtonAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 389
    new-instance v3, Lmobi/monaca/framework/view/MonacaWebView;

    invoke-direct {v3, p0}, Lmobi/monaca/framework/view/MonacaWebView;-><init>(Lmobi/monaca/framework/MonacaPageActivity;)V

    .line 392
    .local v3, "webView":Lorg/apache/cordova/CordovaWebView;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-ne v5, v6, :cond_0

    .line 393
    invoke-virtual {v3, v7, v8}, Lorg/apache/cordova/CordovaWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 396
    :cond_0
    iget-object v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v5}, Lmobi/monaca/framework/nativeui/UIContext;->getSettings()Lmobi/monaca/framework/InternalSettings;

    move-result-object v5

    iget-boolean v5, v5, Lmobi/monaca/framework/InternalSettings;->forceDisableWebviewGPU:Z

    if-eqz v5, :cond_1

    .line 399
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->method_setlayertype:I

    invoke-virtual {p0, v6}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/graphics/Paint;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 400
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lorg/apache/cordova/CordovaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 407
    .local v2, "webSettings":Landroid/webkit/WebSettings;
    sget-object v5, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 409
    invoke-virtual {p0, p0, v3}, Lmobi/monaca/framework/MonacaPageActivity;->createWebViewClient(Lmobi/monaca/framework/MonacaPageActivity;Lorg/apache/cordova/CordovaWebView;)Landroid/webkit/WebViewClient;

    move-result-object v4

    check-cast v4, Lorg/apache/cordova/CordovaWebViewClient;

    .line 410
    .local v4, "webViewClient":Lorg/apache/cordova/CordovaWebViewClient;
    new-instance v1, Lmobi/monaca/framework/MonacaChromeClient;

    invoke-direct {v1, p0, v3}, Lmobi/monaca/framework/MonacaChromeClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 411
    .local v1, "webChromeClient":Lmobi/monaca/framework/MonacaChromeClient;
    invoke-virtual {p0, v3, v4, v1}, Lmobi/monaca/framework/MonacaPageActivity;->init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaWebViewClient;Lorg/apache/cordova/CordovaChromeClient;)V

    .line 412
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->initMonaca()V

    .line 413
    return-void

    .line 401
    .end local v1    # "webChromeClient":Lmobi/monaca/framework/MonacaChromeClient;
    .end local v2    # "webSettings":Landroid/webkit/WebSettings;
    .end local v4    # "webViewClient":Lorg/apache/cordova/CordovaWebViewClient;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public initMonaca()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 346
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setFocusable(Z)V

    .line 347
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setFocusableInTouchMode(Z)V

    .line 354
    const-string v0, "INITIALIZATION"

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->loadUrl(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lmobi/monaca/framework/MonacaPageActivity$5;

    invoke-direct {v1, p0}, Lmobi/monaca/framework/MonacaPageActivity$5;-><init>(Lmobi/monaca/framework/MonacaPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 369
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Lmobi/monaca/framework/MonacaPageActivity$6;

    invoke-direct {v1, p0}, Lmobi/monaca/framework/MonacaPageActivity$6;-><init>(Lmobi/monaca/framework/MonacaPageActivity;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 384
    return-void
.end method

.method protected isIndex()Z
    .locals 2

    .prologue
    .line 196
    iget v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->pageIndex:I

    invoke-static {}, Lmobi/monaca/framework/MonacaApplication;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInitializationMessage(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1257
    const/4 v0, -0x6

    if-ne p1, v0, :cond_0

    sget-object v0, Lmobi/monaca/framework/view/MonacaWebView;->INITIALIZATION_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/monaca/framework/view/MonacaWebView;->INITIALIZATION_MADIATOR:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadBackground(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 316
    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    invoke-virtual {v4}, Lmobi/monaca/framework/transition/TransitionParams;->hasBackgroundImage()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    const/4 v2, 0x0

    .line 318
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->www_slash:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v5, v5, Lmobi/monaca/framework/transition/TransitionParams;->backgroundImagePath:Ljava/lang/String;

    invoke-static {v5}, Lmobi/monaca/framework/nativeui/UIContext;->getPreferredPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "preferedPath":Ljava/lang/String;
    invoke-static {p0, v3}, Lmobi/monaca/framework/util/AssetUtils;->existsAsset(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    move-object v2, v3

    .line 326
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->openAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lmobi/monaca/framework/transition/BackgroundDrawable;

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {v4, v0, v5, v6}, Lmobi/monaca/framework/transition/BackgroundDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/view/Display;I)V

    iput-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "preferedPath":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 322
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "preferedPath":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->www_slash:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v5, v5, Lmobi/monaca/framework/transition/TransitionParams;->backgroundImagePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lmobi/monaca/framework/MonacaPageActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/monaca/framework/util/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected loadLayoutInformation()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lmobi/monaca/framework/psedo/R$string;->script_loadlayoutinfo:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->infoForJavaScript:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method protected loadParams()V
    .locals 5

    .prologue
    .line 460
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lmobi/monaca/framework/MonacaPageActivity;->TRANSITION_PARAM_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lmobi/monaca/framework/transition/TransitionParams;

    iput-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    .line 463
    iget-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    if-nez v2, :cond_0

    .line 464
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getRequestedOrientation()I

    move-result v2

    invoke-static {v2}, Lmobi/monaca/framework/transition/TransitionParams;->createDefaultParams(I)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v2

    iput-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    .line 467
    :cond_0
    sget-object v2, Lmobi/monaca/framework/MonacaPageActivity;->URL_PARAM_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lmobi/monaca/framework/MonacaPageActivity;->URL_PARAM_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "startPage":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->shouldLoadExtractedIndex()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lmobi/monaca/framework/psedo/R$string;->file_scheme:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lmobi/monaca/framework/psedo/R$string;->relative_index_path:I

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->getFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    :cond_1
    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->setCurrentUri(Ljava/lang/String;)V

    .line 473
    return-void

    .line 467
    .end local v1    # "startPage":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lmobi/monaca/framework/psedo/R$string;->asset_url:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->relative_index_path:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public loadUiFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/MonacaPageActivity;->getUIJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 492
    .local v8, "uiJSON":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 494
    :try_start_0
    new-instance v1, Lmobi/monaca/framework/nativeui/component/PageComponent;

    iget-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-direct {v1, v2, v8}, Lmobi/monaca/framework/nativeui/component/PageComponent;-><init>(Lmobi/monaca/framework/nativeui/UIContext;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->applyUiToView()V

    .line 504
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v7

    .line 496
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    new-instance v0, Lmobi/monaca/utils/log/LogItem;

    invoke-static {}, Lmobi/monaca/utils/TimeStamp;->getCurrentTimeStamp()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmobi/monaca/utils/log/LogItem$Source;->SYSTEM:Lmobi/monaca/utils/log/LogItem$Source;

    sget-object v3, Lmobi/monaca/utils/log/LogItem$LogLevel;->ERROR:Lmobi/monaca/utils/log/LogItem$LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lmobi/monaca/framework/psedo/R$string;->nc_report_header:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lmobi/monaca/utils/log/LogItem;-><init>(Ljava/lang/String;Lmobi/monaca/utils/log/LogItem$Source;Lmobi/monaca/utils/log/LogItem$LogLevel;Ljava/lang/String;Ljava/lang/String;I)V

    .line 498
    .local v0, "logItem":Lmobi/monaca/utils/log/LogItem;
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lmobi/monaca/framework/util/MyLog;->sendBroadcastDebugLog(Landroid/content/Context;Lmobi/monaca/utils/log/LogItem;)V

    goto :goto_0
.end method

.method public loadUri(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "withoutUIFile"    # Z

    .prologue
    const/4 v1, 0x0

    .line 935
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/MonacaPageActivity;->setCurrentUri(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v6

    .line 940
    .local v6, "currentUriWithoutQuery":Ljava/lang/String;
    sget v0, Lmobi/monaca/framework/psedo/R$string;->notfound_asset_url:I

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->show404Page(Ljava/lang/String;)V

    .line 970
    :goto_0
    return-void

    .line 946
    :cond_0
    if-nez p2, :cond_1

    .line 947
    iput-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    .line 948
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->loadUiFile(Ljava/lang/String;)V

    .line 952
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->buildCurrentUriHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mCurrentHtml:Ljava/lang/String;

    .line 953
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->mCurrentHtml:Ljava/lang/String;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->mine_type:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lmobi/monaca/framework/psedo/R$string;->mine_type:I

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/cordova/CordovaWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 955
    :catch_0
    move-exception v7

    .line 958
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/MonacaPageActivity;->show404Page(Ljava/lang/String;)V

    goto :goto_0

    .line 963
    :cond_2
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setBackgroundColor(I)V

    .line 964
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->loadLayoutInformation()V

    .line 966
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->currentMonacaUri:Lmobi/monaca/framework/MonacaURI;

    invoke-virtual {v1}, Lmobi/monaca/framework/MonacaURI;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->clearView()V

    .line 968
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->invalidate()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1108
    const/16 v0, 0xd05

    if-ne p1, v0, :cond_0

    .line 1109
    invoke-direct {p0}, Lmobi/monaca/framework/MonacaPageActivity;->triggerOnReactivate()V

    .line 1113
    :goto_0
    return-void

    .line 1111
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/DroidGap;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1192
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1197
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {p0, p1}, Lmobi/monaca/framework/MonacaPageActivity;->loadBackground(Landroid/content/res/Configuration;)V

    .line 1200
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1205
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/nativeui/UIContext;->fireOnRotateListeners(I)V

    .line 1209
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->invalidate()V

    .line 1213
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    const/high16 v3, 0x1000000

    .line 149
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 150
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaApplication;

    iput-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mApp:Lmobi/monaca/framework/MonacaApplication;

    .line 151
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->pushReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lmobi/monaca/framework/MonacaNotifActivity;->ACTION_RECEIVED_PUSH:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->prepare()V

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 159
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 168
    invoke-static {}, Lmobi/monaca/framework/MonacaApplication;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 169
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->init()V

    .line 170
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->currentMonacaUri:Lmobi/monaca/framework/MonacaURI;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaURI;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->loadUri(Ljava/lang/String;Z)V

    .line 183
    :goto_0
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v0, v0, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->MODAL:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v0, v1, :cond_3

    .line 184
    sget v0, Lmobi/monaca/framework/psedo/R$anim;->monaca_dialog_open_enter:I

    sget v1, Lmobi/monaca/framework/psedo/R$anim;->monaca_dialog_open_exit:I

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->overridePendingTransition(II)V

    .line 193
    :cond_1
    :goto_1
    return-void

    .line 172
    :cond_2
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->init()V

    .line 173
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->loadUiFile(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lmobi/monaca/framework/MonacaPageActivity$3;

    invoke-direct {v1, p0}, Lmobi/monaca/framework/MonacaPageActivity$3;-><init>(Lmobi/monaca/framework/MonacaPageActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v0, v0, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_LEFT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v0, v1, :cond_4

    .line 186
    sget v0, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_open_enter:I

    sget v1, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_open_exit:I

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 187
    :cond_4
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v0, v0, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_RIGHT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v0, v1, :cond_5

    .line 188
    sget v0, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_right_open_enter:I

    sget v1, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_right_open_exit:I

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->overridePendingTransition(II)V

    goto :goto_1

    .line 190
    :cond_5
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v0, v0, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v1, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->NONE:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v0, v1, :cond_1

    .line 191
    sget v0, Lmobi/monaca/framework/psedo/R$anim;->monaca_none:I

    sget v1, Lmobi/monaca/framework/psedo/R$anim;->monaca_none:I

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->overridePendingTransition(II)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 909
    invoke-direct {p0}, Lmobi/monaca/framework/MonacaPageActivity;->onDestroyMonacaCaller()V

    .line 910
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onDestroy()V

    .line 911
    return-void
.end method

.method protected onDestroyMonaca()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->isCapableForTransition:Z

    .line 872
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->pushReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 873
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 875
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->removeMonacaSplash()V

    .line 877
    invoke-static {p0}, Lmobi/monaca/framework/MonacaApplication;->removePage(Lmobi/monaca/framework/MonacaPageActivity;)V

    .line 878
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->closePageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 880
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 882
    iput-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    .line 885
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getComponentIDsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 887
    iput-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    .line 889
    :cond_1
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 891
    iput-object v2, p0, Lmobi/monaca/framework/MonacaPageActivity;->closePageReceiver:Landroid/content/BroadcastReceiver;

    .line 893
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 894
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->stopLoading()V

    .line 897
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaWebView;->setWebViewClient(Lorg/apache/cordova/CordovaWebViewClient;)V

    .line 904
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1028
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1029
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->hasOnTapBackButtonAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    iget-object v0, v0, Lmobi/monaca/framework/nativeui/component/PageComponent;->eventer:Lmobi/monaca/framework/nativeui/UIEventer;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/UIEventer;->onTapBackButton()V

    .line 1038
    :goto_0
    const/4 v0, 0x1

    .line 1040
    :goto_1
    return v0

    .line 1031
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->hasBackButtonEventer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/component/PageComponent;->getBackButtonEventer()Lmobi/monaca/framework/nativeui/ComponentEventer;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/monaca/framework/nativeui/ComponentEventer;->onTap()V

    goto :goto_0

    .line 1033
    :cond_1
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->isBackButtonBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1034
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/DroidGap;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1036
    :cond_2
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->popPage()V

    goto :goto_0

    .line 1040
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/DroidGap;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1046
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->hasBackButtonEventer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->hasOnTapBackButtonAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    :cond_0
    const/4 v0, 0x1

    .line 1049
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/DroidGap;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1220
    return-void
.end method

.method public onPageFinished(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 780
    invoke-direct {p0}, Lmobi/monaca/framework/MonacaPageActivity;->requestJStoProcessMessages()V

    .line 782
    invoke-virtual {p0, p2}, Lmobi/monaca/framework/MonacaPageActivity;->processMonacaReady(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public onPageStarted(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 798
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/CordovaWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 799
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 800
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 801
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CordovaWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 841
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onPause()V

    .line 842
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->removeMonacaSplash()V

    .line 843
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mApp:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaApplication;->hideMonacaSpinnerDialog()V

    .line 845
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    invoke-direct {p0}, Lmobi/monaca/framework/MonacaPageActivity;->onDestroyMonacaCaller()V

    .line 848
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 255
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    if-eqz v1, :cond_1

    .line 256
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 257
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->mPageComponent:Lmobi/monaca/framework/nativeui/component/PageComponent;

    iget-object v1, v1, Lmobi/monaca/framework/nativeui/component/PageComponent;->menuName:Ljava/lang/String;

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->findMenuRepresentation(Ljava/lang/String;)Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;

    move-result-object v0

    .line 258
    .local v0, "menuRepresentation":Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;
    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v0, v1, p1}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;->configureMenu(Lmobi/monaca/framework/nativeui/UIContext;Landroid/view/Menu;)V

    .line 268
    :cond_0
    :goto_0
    return v2

    .line 263
    .end local v0    # "menuRepresentation":Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 264
    const-string v1, "default"

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->findMenuRepresentation(Ljava/lang/String;)Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;

    move-result-object v0

    .line 265
    .restart local v0    # "menuRepresentation":Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;
    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {v0, v1, p1}, Lmobi/monaca/framework/nativeui/menu/MenuRepresentation;->configureMenu(Lmobi/monaca/framework/nativeui/UIContext;Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1248
    invoke-virtual {p0, p1, p2, p3}, Lmobi/monaca/framework/MonacaPageActivity;->isInitializationMessage(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1252
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/DroidGap;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1244
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 807
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onRestart()V

    .line 808
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->loadBackground(Landroid/content/res/Configuration;)V

    .line 809
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 812
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 818
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->method_onresume:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->isCapableForTransition:Z

    .line 823
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mApp:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaApplication;->showMonacaSpinnerDialogIfAny()V

    .line 825
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onResume()V

    .line 828
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->postInvalidate()V

    .line 829
    return-void

    .line 819
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1186
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onStop()V

    .line 1187
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->unloadBackground()V

    .line 1188
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 754
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onWindowFocusChanged(Z)V

    .line 755
    if-eqz p1, :cond_0

    .line 756
    sget v0, Lmobi/monaca/framework/psedo/R$string;->visible:I

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/monaca/framework/util/BenchmarkTimer;->mark(Ljava/lang/String;)V

    .line 757
    invoke-static {}, Lmobi/monaca/framework/util/BenchmarkTimer;->finish()V

    .line 758
    invoke-direct {p0}, Lmobi/monaca/framework/MonacaPageActivity;->requestJStoProcessMessages()V

    .line 760
    :cond_0
    return-void
.end method

.method public popPage()V
    .locals 3

    .prologue
    .line 1076
    invoke-static {}, Lmobi/monaca/framework/MonacaApplication;->getPages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1077
    .local v0, "pageNum":I
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->finish()V

    .line 1079
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1081
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v1, v1, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v2, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->MODAL:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v1, v2, :cond_1

    .line 1082
    sget v1, Lmobi/monaca/framework/psedo/R$anim;->monaca_dialog_close_enter:I

    sget v2, Lmobi/monaca/framework/psedo/R$anim;->monaca_dialog_close_exit:I

    invoke-virtual {p0, v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->overridePendingTransition(II)V

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v1, v1, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v2, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_LEFT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v1, v2, :cond_2

    .line 1085
    sget v1, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_close_enter:I

    sget v2, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_close_exit:I

    invoke-virtual {p0, v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 1087
    :cond_2
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v1, v1, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v2, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_RIGHT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v1, v2, :cond_3

    .line 1088
    sget v1, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_right_close_enter:I

    sget v2, Lmobi/monaca/framework/psedo/R$anim;->monaca_slide_right_close_exit:I

    invoke-virtual {p0, v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 1090
    :cond_3
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v1, v1, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v2, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->NONE:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v1, v2, :cond_0

    .line 1091
    sget v1, Lmobi/monaca/framework/psedo/R$anim;->monaca_none:I

    sget v2, Lmobi/monaca/framework/psedo/R$anim;->monaca_none:I

    invoke-virtual {p0, v1, v2}, Lmobi/monaca/framework/MonacaPageActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public popPageAsync(Lmobi/monaca/framework/transition/TransitionParams;)V
    .locals 2
    .param p1, "params"    # Lmobi/monaca/framework/transition/TransitionParams;

    .prologue
    .line 1137
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lmobi/monaca/framework/MonacaPageActivity$10;

    invoke-direct {v1, p0, p1}, Lmobi/monaca/framework/MonacaPageActivity$10;-><init>(Lmobi/monaca/framework/MonacaPageActivity;Lmobi/monaca/framework/transition/TransitionParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1150
    return-void
.end method

.method protected prepare()V
    .locals 8

    .prologue
    .line 273
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 274
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 275
    const-string v5, "get_pushdata_key"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    .line 276
    .local v4, "s":Ljava/io/Serializable;
    if-eqz v4, :cond_0

    .line 277
    check-cast v4, Lmobi/monaca/utils/gcm/GCMPushDataset;

    .end local v4    # "s":Ljava/io/Serializable;
    iput-object v4, p0, Lmobi/monaca/framework/MonacaPageActivity;->pushData:Lmobi/monaca/utils/gcm/GCMPushDataset;

    .line 281
    :cond_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->loadParams()V

    .line 283
    invoke-static {p0}, Lmobi/monaca/framework/MonacaApplication;->addPage(Lmobi/monaca/framework/MonacaPageActivity;)V

    .line 284
    invoke-static {}, Lmobi/monaca/framework/MonacaApplication;->getPages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->pageIndex:I

    .line 286
    iget-object v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->mApp:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v5}, Lmobi/monaca/framework/MonacaApplication;->getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;

    move-result-object v0

    .line 287
    .local v0, "appJsonSetting":Lmobi/monaca/framework/AppJsonSetting;
    const/4 v1, 0x0

    .line 288
    .local v1, "autoHide":Z
    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0}, Lmobi/monaca/framework/AppJsonSetting;->getAutoHide()Z

    move-result v1

    .line 291
    :cond_1
    iget v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->pageIndex:I

    if-nez v5, :cond_2

    if-nez v1, :cond_2

    .line 292
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->showMonacaSplash()V

    .line 295
    :cond_2
    iget-object v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->closePageReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lmobi/monaca/framework/transition/ClosePageIntent;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lmobi/monaca/framework/MonacaPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    new-instance v5, Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lmobi/monaca/framework/nativeui/UIContext;-><init>(Ljava/lang/String;Lmobi/monaca/framework/MonacaPageActivity;)V

    iput-object v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    .line 299
    iget-object v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v5, v5, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v6, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->NONE:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v5, v6, :cond_4

    .line 308
    :cond_3
    :goto_0
    :try_start_0
    iget-object v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->infoForJavaScript:Lorg/json/JSONObject;

    sget v6, Lmobi/monaca/framework/psedo/R$string;->info_display:I

    invoke-virtual {p0, v6}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->createDisplayInfo()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    return-void

    .line 300
    :cond_4
    iget-object v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v5, v5, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v6, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->MODAL:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v5, v6, :cond_5

    .line 301
    sget v5, Lmobi/monaca/framework/psedo/R$style;->MonacaDialogTheme:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaPageActivity;->setTheme(I)V

    goto :goto_0

    .line 302
    :cond_5
    iget-object v5, p0, Lmobi/monaca/framework/MonacaPageActivity;->transitionParams:Lmobi/monaca/framework/transition/TransitionParams;

    iget-object v5, v5, Lmobi/monaca/framework/transition/TransitionParams;->animationType:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    sget-object v6, Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;->SLIDE_LEFT:Lmobi/monaca/framework/transition/TransitionParams$TransitionAnimationType;

    if-ne v5, v6, :cond_3

    .line 303
    sget v5, Lmobi/monaca/framework/psedo/R$style;->MonacaSlideTheme:I

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/MonacaPageActivity;->setTheme(I)V

    goto :goto_0

    .line 309
    :catch_0
    move-exception v3

    .line 310
    .local v3, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected processMonacaReady(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1223
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->pushData:Lmobi/monaca/utils/gcm/GCMPushDataset;

    if-eqz v0, :cond_0

    .line 1224
    invoke-static {p0, p1}, Lmobi/monaca/framework/util/UrlUtil;->isMonacaUri(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->pushData:Lmobi/monaca/utils/gcm/GCMPushDataset;

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->sendPushToWebView(Lmobi/monaca/utils/gcm/GCMPushDataset;)V

    .line 1226
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->pushData:Lmobi/monaca/utils/gcm/GCMPushDataset;

    .line 1231
    :cond_0
    return-void
.end method

.method public push404Page(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorUrl"    # Ljava/lang/String;

    .prologue
    .line 985
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 986
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lmobi/monaca/framework/MonacaPageActivity;->URL_PARAM_NAME:Ljava/lang/String;

    sget v3, Lmobi/monaca/framework/psedo/R$string;->notfound_asset_url:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget v3, Lmobi/monaca/framework/psedo/R$string;->transition_anim_none:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/monaca/framework/transition/TransitionParams;->from(Lorg/json/JSONObject;Ljava/lang/String;)Lmobi/monaca/framework/transition/TransitionParams;

    move-result-object v1

    .line 990
    .local v1, "params":Lmobi/monaca/framework/transition/TransitionParams;
    sget-object v2, Lmobi/monaca/framework/MonacaPageActivity;->TRANSITION_PARAM_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 991
    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 992
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->finish()V

    .line 993
    return-void
.end method

.method public pushPageAsync(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V
    .locals 3
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "params"    # Lmobi/monaca/framework/transition/TransitionParams;

    .prologue
    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->relative_parent_path:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lmobi/monaca/framework/util/BenchmarkTimer;->start()V

    .line 1065
    sget v1, Lmobi/monaca/framework/psedo/R$string;->bench_pushpage_async:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/monaca/framework/util/BenchmarkTimer;->mark(Ljava/lang/String;)V

    .line 1066
    iget-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lmobi/monaca/framework/MonacaPageActivity$9;

    invoke-direct {v2, p0, v0, p2}, Lmobi/monaca/framework/MonacaPageActivity$9;-><init>(Lmobi/monaca/framework/MonacaPageActivity;Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1073
    return-void
.end method

.method public pushPageWithIntent(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Lmobi/monaca/framework/transition/TransitionParams;

    .prologue
    .line 996
    iget-boolean v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->isCapableForTransition:Z

    if-eqz v1, :cond_0

    .line 997
    invoke-virtual {p0, p1, p2}, Lmobi/monaca/framework/MonacaPageActivity;->createIntentForNextPage(Ljava/lang/String;Lmobi/monaca/framework/transition/TransitionParams;)Landroid/content/Intent;

    move-result-object v0

    .line 999
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->isCapableForTransition:Z

    .line 1000
    const/16 v1, 0xd05

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1001
    invoke-virtual {p2}, Lmobi/monaca/framework/transition/TransitionParams;->needsToClearStack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lmobi/monaca/framework/MonacaPageActivity$8;

    invoke-direct {v2, p0}, Lmobi/monaca/framework/MonacaPageActivity$8;-><init>(Lmobi/monaca/framework/MonacaPageActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1014
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->stopLoading()V

    .line 916
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->loadUri(Ljava/lang/String;Z)V

    .line 917
    return-void
.end method

.method public removeMonacaSplash()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->monacaSplashDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->monacaSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->monacaSplashDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->monacaSplashDialog:Landroid/app/Dialog;

    .line 251
    :cond_0
    return-void
.end method

.method protected sendPushToWebView(Lmobi/monaca/utils/gcm/GCMPushDataset;)V
    .locals 3
    .param p1, "pushData"    # Lmobi/monaca/utils/gcm/GCMPushDataset;

    .prologue
    .line 1234
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lmobi/monaca/framework/psedo/R$string;->script_trigger_monaca_cloud_pushsend_forward:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmobi/monaca/utils/gcm/GCMPushDataset;->getExtraJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->script_trigger_monaca_cloud_pushsend_backward:I

    invoke-virtual {p0, v2}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method public setCurrentUri(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1272
    new-instance v0, Lmobi/monaca/framework/MonacaURI;

    invoke-direct {v0, p1}, Lmobi/monaca/framework/MonacaURI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->currentMonacaUri:Lmobi/monaca/framework/MonacaURI;

    .line 1273
    new-instance v0, Lmobi/monaca/framework/nativeui/UIContext;

    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getCurrentUriWithoutOptions()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lmobi/monaca/framework/nativeui/UIContext;-><init>(Ljava/lang/String;Lmobi/monaca/framework/MonacaPageActivity;)V

    iput-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->uiContext:Lmobi/monaca/framework/nativeui/UIContext;

    .line 1274
    return-void
.end method

.method public setupBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 417
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setBackgroundColor(I)V

    .line 418
    if-eqz p1, :cond_2

    .line 419
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CordovaWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 427
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->setContentView(Landroid/view/View;)V

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected shouldLoadExtractedIndex()Z
    .locals 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lmobi/monaca/framework/MonacaPageActivity;->URL_PARAM_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mApp:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaApplication;->getAppJsonSetting()Lmobi/monaca/framework/AppJsonSetting;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/monaca/framework/AppJsonSetting;->shouldExtractAssets()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->mApp:Lmobi/monaca/framework/MonacaApplication;

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaApplication;->needToUseBootloader()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show404Page(Ljava/lang/String;)V
    .locals 8
    .param p1, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 974
    :try_start_0
    invoke-virtual {p0}, Lmobi/monaca/framework/MonacaPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$raw;->error404:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    .line 975
    .local v7, "is":Ljava/io/InputStream;
    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 978
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    sget v1, Lmobi/monaca/framework/psedo/R$string;->notfound_raw_url:I

    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lmobi/monaca/framework/psedo/R$string;->mine_type:I

    invoke-virtual {p0, v3}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lmobi/monaca/framework/psedo/R$string;->encoding:I

    invoke-virtual {p0, v4}, Lmobi/monaca/framework/MonacaPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/cordova/CordovaWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    .end local v2    # "html":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 979
    :catch_0
    move-exception v6

    .line 980
    .local v6, "e":Ljava/io/IOException;
    sget-object v0, Lmobi/monaca/framework/MonacaPageActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/monaca/framework/util/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showMonacaSplash()V
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .line 208
    .local v0, "activity":Lmobi/monaca/framework/MonacaPageActivity;
    new-instance v1, Lmobi/monaca/framework/MonacaPageActivity$4;

    invoke-direct {v1, p0, v0}, Lmobi/monaca/framework/MonacaPageActivity$4;-><init>(Lmobi/monaca/framework/MonacaPageActivity;Lmobi/monaca/framework/MonacaPageActivity;)V

    .line 243
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lmobi/monaca/framework/MonacaPageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method protected unloadBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 340
    iput-object v1, p0, Lmobi/monaca/framework/MonacaPageActivity;->background:Landroid/graphics/drawable/Drawable;

    .line 341
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 343
    :cond_0
    return-void
.end method

.method public updateStyle(Lmobi/monaca/framework/nativeui/UpdateStyleQuery;)V
    .locals 1
    .param p1, "query"    # Lmobi/monaca/framework/nativeui/UpdateStyleQuery;

    .prologue
    .line 716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v0, "queries":Ljava/util/List;, "Ljava/util/List<Lmobi/monaca/framework/nativeui/UpdateStyleQuery;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-virtual {p0, v0}, Lmobi/monaca/framework/MonacaPageActivity;->updateStyleBulkily(Ljava/util/List;)V

    .line 719
    return-void
.end method

.method public updateStyleBulkily(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobi/monaca/framework/nativeui/UpdateStyleQuery;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Lmobi/monaca/framework/nativeui/UpdateStyleQuery;>;"
    iget-object v0, p0, Lmobi/monaca/framework/MonacaPageActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lmobi/monaca/framework/MonacaPageActivity$7;

    invoke-direct {v1, p0, p1}, Lmobi/monaca/framework/MonacaPageActivity$7;-><init>(Lmobi/monaca/framework/MonacaPageActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 750
    return-void
.end method
