.class public Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;
.super Ljava/lang/Object;
.source "SocialHomePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;
.implements Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SocialSdk_SocialHomeWidget"

.field public static final TAB_ID:Ljava/lang/String; = "20000217"

.field private static a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;


# instance fields
.field private A:Landroid/view/View;

.field private B:Z

.field private C:Landroid/database/Cursor;

.field private D:I

.field private E:I

.field private F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

.field private I:Z

.field private J:Z

.field private K:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

.field private M:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

.field private N:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

.field private O:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

.field private P:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TabChangeListener;

.field private Q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

.field private i:Landroid/view/View;

.field private j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

.field private k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private l:Landroid/view/View;

.field private m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

.field private n:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

.field private o:Z

.field private p:Z

.field private q:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

.field private r:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private s:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

.field private t:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private u:Lcom/alipay/mobile/base/config/ConfigService;

.field private v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private w:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

.field private x:Landroid/os/HandlerThread;

.field private y:Lcom/alipay/mobile/commonui/widget/APPopMenu;

.field private z:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Z

    .line 99
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->p:Z

    .line 113
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->B:Z

    .line 115
    iput v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:I

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->E:I

    .line 120
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Z

    .line 121
    iput-boolean v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->J:Z

    .line 133
    sput-object p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    .line 134
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "SocialHomePage\u521b\u5efa"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;-><init>(Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader$SdkLoadCallback;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    .line 137
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->t:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->u:Lcom/alipay/mobile/base/config/ConfigService;

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 143
    return-void
.end method

.method static synthetic a()Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 4

    .prologue
    .line 652
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->w:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->w:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->K:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->K:Ljava/util/HashMap;

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->K:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->loadRecentListCursor(Ljava/util/HashMap;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->queryTotalUnread()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:I

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u52a0\u8f7d\u5237\u65b0\u6700\u8fd1\u9875\u9762\u6570\u636e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-\u672a\u8bfb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/t;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/t;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->K:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "extra_handle_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "biz_type"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->setUpNewChatRoom(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "actionBuildNewGroup"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, "20000166"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Z

    if-nez v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e()V

    .line 625
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->showEmptyView()V

    .line 643
    :goto_0
    return-void

    .line 628
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->E:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u63a5\u6536\u4e2d, \u6682\u65f6\u4e0d\u5237\u65b0"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u8bf7\u6c42\u5237\u65b0\u670b\u53cbtab"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 634
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c()V

    .line 638
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->w:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    if-eqz v0, :cond_4

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->w:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 636
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c()V

    goto :goto_1

    .line 641
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u65e0\u6cd5\u5237\u65b0\u670b\u53cbtab,handler\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "guide_shown_v2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 646
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u521d\u59cb\u5316\u5237\u65b0\u7ebf\u7a0b"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "socialtabrefresh"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/os/HandlerThread;

    .line 648
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 649
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;-><init>(Landroid/os/Looper;Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->w:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$LoadDataHandler;

    .line 650
    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 676
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Landroid/database/Cursor;

    .line 679
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e()V

    .line 680
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 681
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->showEmptyView()V

    .line 685
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u771f\u6b63\u5237\u65b0\u670b\u53cbtab\u5217\u8868"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->K:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Landroid/database/Cursor;Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;Ljava/util/HashMap;)V

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    if-eqz v0, :cond_2

    .line 690
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 692
    :cond_2
    return-void

    .line 683
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->hideEmptyView()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:I

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 695
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getCurrentChatState()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->E:I

    .line 696
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    if-nez v0, :cond_0

    .line 731
    :goto_0
    return-void

    .line 699
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->E:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 701
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f()V

    .line 702
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->stopProgressBar()V

    .line 704
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u6807\u9898\u670b\u53cb-\u4e0d\u53ef\u7528"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialwidget/R$string;->x:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->startProgressBar()V

    .line 709
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u6807\u9898\u8fde\u63a5\u4e2d"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 714
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f()V

    .line 715
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->stopProgressBar()V

    .line 716
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u6807\u9898\u670b\u53cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->startProgressBar()V

    .line 721
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialwidget/R$string;->z:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u6807\u9898\u63a5\u6536\u4e2d"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->stopProgressBar()V

    .line 727
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialwidget/R$string;->y:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u6807\u9898\u672a\u8fde\u63a5"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private f()V
    .locals 5

    .prologue
    .line 734
    iget v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:I

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialwidget/R$string;->u:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 740
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v2, Lcom/alipay/mobile/socialwidget/R$string;->v:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 738
    iget v4, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 737
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 3

    .prologue
    .line 839
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762Context\u4e22\u5931, \u91cd\u65b0\u751f\u6210"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e()V

    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 1

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Z

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->b()V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Z

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->c()V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/s;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/s;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/commonui/widget/APPopMenu;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b()V

    return-void
.end method

.method static synthetic o(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d()V

    return-void
.end method


# virtual methods
.method public cleanSocialChatPush()V
    .locals 4

    .prologue
    .line 743
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 744
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 743
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 745
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.eg.android.AlipayGphone.push.action.SYNC_PUSH_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    const-string/jumbo v2, "op_type"

    const-string/jumbo v3, "removeBizMsg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string/jumbo v2, "bizId"

    const-string/jumbo v3, "chat"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 749
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->x:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->b()V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    if-eqz v0, :cond_5

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->L:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->L:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->N:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    if-eqz v0, :cond_4

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->N:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->O:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    if-eqz v0, :cond_5

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->O:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 435
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_7

    .line 437
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->P:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TabChangeListener;

    if-eqz v1, :cond_6

    .line 438
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->P:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TabChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->Q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

    if-eqz v1, :cond_7

    .line 441
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->Q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 444
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762Destroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 184
    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->f:I

    .line 183
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 185
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->M:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 186
    const-string/jumbo v2, "\u670b\u53cb"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/mpass/badge/BadgeManager;

    move-result-object v3

    .line 189
    sget v2, Lcom/alipay/mobile/socialwidget/R$id;->N:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 190
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    const-string/jumbo v4, "SocialHomeTab"

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setWidgetId(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->z:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/mpass/badge/BadgeManager;->registerBadgeView(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 193
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->s:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 195
    invoke-virtual {v1, v5, v2, v5, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 197
    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$ButtonOnTouchListener;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 206
    sget v2, Lcom/alipay/mobile/socialwidget/R$layout;->e:I

    const/4 v3, 0x0

    .line 205
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v2, Lcom/alipay/mobile/socialwidget/R$id;->L:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setSwitchContainerVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/mobile/socialwidget/R$drawable;->j:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setRightButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v2, Lcom/alipay/mobile/socialwidget/ui/m;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialwidget/ui/m;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setRightButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/mobile/ui/R$drawable;->titlebar_search_normal:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v2, Lcom/alipay/mobile/socialwidget/ui/n;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialwidget/ui/n;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setLeftButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setThirdButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v2, Lcom/alipay/mobile/socialwidget/R$drawable;->c:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setThirdButtonIconResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->k:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v2, Lcom/alipay/mobile/socialwidget/ui/p;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialwidget/ui/p;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setThirdButtonListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v2, Lcom/alipay/mobile/socialwidget/R$id;->G:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v2, Lcom/alipay/mobile/socialwidget/R$id;->e:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 213
    sget v2, Lcom/alipay/mobile/socialwidget/R$layout;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 214
    sget v2, Lcom/alipay/mobile/socialwidget/R$id;->z:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Landroid/view/View;

    .line 215
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Landroid/view/View;

    const-string/jumbo v3, "nonetwork"

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 216
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->A:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->addHeaderView(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->u:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v2, "SOCIAL_FRIEND"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "create_group"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    const-string/jumbo v3, "payee"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    move v1, v2

    :goto_2
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v5, Lcom/alipay/mobile/socialwidget/R$string;->w:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/socialwidget/R$drawable;->d:I

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v6, Lcom/alipay/mobile/socialwidget/R$string;->a:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/socialwidget/R$drawable;->a:I

    invoke-direct {v5, v6, v7}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v7, Lcom/alipay/mobile/socialwidget/R$string;->t:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/socialwidget/R$drawable;->q:I

    invoke-direct {v6, v7, v8}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v8, Lcom/alipay/mobile/socialwidget/R$string;->s:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/alipay/mobile/socialwidget/R$drawable;->k:I

    invoke-direct {v7, v8, v9}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->l:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v9, Lcom/alipay/mobile/socialwidget/R$drawable;->e:I

    invoke-direct {v8, v3, v9}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/alipay/mobile/commonui/widget/APPopMenu;

    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-direct {v3, v4, v2}, Lcom/alipay/mobile/commonui/widget/APPopMenu;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->y:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    new-instance v3, Lcom/alipay/mobile/socialwidget/ui/q;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/mobile/socialwidget/ui/q;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;IZ)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->cleanSocialChatPush()V

    .line 203
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d()V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    return-object v0

    .line 220
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_2

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hideEmptyView()V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9690\u85cf\u7a7aview"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 527
    :cond_0
    return-void
.end method

.method public loadEmptyChatApp()V
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->B:Z

    if-nez v0, :cond_0

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->B:Z

    .line 755
    const-string/jumbo v0, "20000242"

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->b(Ljava/lang/String;)V

    .line 757
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 479
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    const-string/jumbo v1, "nonetwork"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 485
    const-class v2, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;

    .line 484
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0

    .line 487
    :cond_2
    const-string/jumbo v1, "guideopen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    if-eqz v0, :cond_3

    .line 489
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->d()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    .line 492
    :cond_3
    iput-boolean v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Z

    .line 493
    iput-boolean v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->J:Z

    .line 494
    invoke-direct {p0, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Z)V

    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setEnabled(Z)V

    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-nez v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->t:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 500
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-eqz v0, :cond_5

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->P:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 502
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeView(Landroid/view/View;)V

    .line 507
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b()V

    .line 508
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->enableFriendTabAsync()V

    .line 509
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u4e0a\u62a5\u5f00\u542f\u670b\u53cbtab"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762Refresh"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a()V

    .line 352
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762Resume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/alipay/mobile/socialwidget/util/BaseHelperUtil;->a()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Ljava/lang/String;

    .line 371
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->g:Ljava/lang/String;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->t:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Landroid/view/View;

    if-nez v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-nez v0, :cond_1

    .line 377
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    .line 378
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 380
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->addView(Landroid/view/View;)V

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Landroid/view/View;

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->addView(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->r:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->queryWelcomeList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->G:Ljava/util/List;

    .line 388
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Landroid/view/View;

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->t:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 389
    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->G:Ljava/util/List;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Landroid/view/View;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Ljava/lang/String;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    .line 388
    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->a()V

    .line 391
    iput-boolean v8, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Z

    .line 392
    iput-boolean v8, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->J:Z

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "listview\u9875\u9762disable"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 396
    new-instance v1, Lcom/alipay/mobile/socialwidget/ui/r;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialwidget/ui/r;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    .line 401
    const-wide/16 v2, 0xfa0

    .line 396
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->cleanSocialChatPush()V

    .line 410
    return-void

    .line 375
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "guide_shown_v2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/alipay/mobile/socialsdk/config/SocialPreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto/16 :goto_0

    .line 402
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->J:Z

    if-nez v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-eqz v0, :cond_5

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->h:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeView(Landroid/view/View;)V

    .line 406
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setEnabled(Z)V

    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "listview\u9875\u9762enable"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onReturn()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u9875\u9762Return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a()V

    .line 358
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->cleanSocialChatPush()V

    .line 359
    return-void
.end method

.method public preSdkRefresh()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 591
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "preSdkRefresh, \u524d\u7f6e\u5c06sdk\u72b6\u6001\u6e05\u6389"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iput-object v4, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->G:Ljava/util/List;

    .line 593
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;->d()V

    iput-object v4, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->H:Lcom/alipay/mobile/socialwidget/ui/GuideAnimationCreator;

    iput-boolean v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->I:Z

    iput-boolean v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->J:Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->m:Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->j:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->removeAllViews()V

    :cond_2
    iput-object v4, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->i:Landroid/view/View;

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u91cd\u7f6e\u9875\u9762\u4e3a\u7a7a\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->C:Landroid/database/Cursor;

    .line 596
    iput v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->D:I

    .line 598
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e()V

    .line 599
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d()V

    .line 600
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "preSdkRefresh done"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method public sdkLoaded()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 531
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->p:Z

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "sdk\u5df2\u7ecf\u521d\u59cb\u5316,\u4e0d\u9700\u8981\u518d\u6b21\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "sdkLoaded"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iput-boolean v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Z

    .line 537
    iput-boolean v3, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->p:Z

    .line 538
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->L:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://contactsdb/recent_session"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->L:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 540
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://contactsdb/ali_account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->L:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://contactsdb/chatgroup_info"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->L:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 542
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://share_lbs_update/lbs"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->L:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 544
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    .line 545
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://contactsdb/recent_visual"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->M:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$RecentDataObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 547
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getCurrentChatState()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->E:I

    .line 548
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->N:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    .line 549
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://chatsyncstate/state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->N:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 550
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->O:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    .line 551
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->v:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "content://chatsyncstate/timeout"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->O:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$NetworkStateObserver;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 553
    invoke-direct {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c()V

    .line 556
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 557
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 558
    const-string/jumbo v2, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    const-string/jumbo v2, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    new-instance v2, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TabChangeListener;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TabChangeListener;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    iput-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->P:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TabChangeListener;

    .line 561
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->P:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$TabChangeListener;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 563
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 564
    invoke-direct {p0, v4}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Z)V

    .line 567
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 568
    const-string/jumbo v2, "com.alipay.mobile.android.main.avatar.action.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    const-string/jumbo v2, "com.alipay.mobile.android.main.nickname.action.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    new-instance v2, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;)V

    iput-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->Q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

    .line 571
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->Q:Lcom/alipay/mobile/socialwidget/ui/SocialHomePage$OwnerInfoChangeListener;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_0
.end method

.method public sdkRefreshed()V
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "sdkRefreshed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->p:Z

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->o:Z

    .line 579
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->s:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 580
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->q:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getCurrentChatState()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->E:I

    .line 581
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->a(Z)V

    .line 587
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "sdk\u8fd8\u6ca1\u521d\u59cb\u5316\u8fc7, \u8c03\u7528load"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->sdkLoaded()V

    goto :goto_0
.end method

.method public setActApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 169
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 153
    check-cast p1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->d:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    .line 154
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->n:Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/util/SocialSdkLoader;->a()V

    .line 149
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->e:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public showEmptyView()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->F:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    const-string/jumbo v2, "\u663e\u793a\u7a7aview"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialHomePage;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 519
    :cond_0
    return-void
.end method
