.class public Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "StrangerSessionPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "stranger_session_list"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/framework/app/ui/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "stranger_list"
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

.field private c:Landroid/database/Cursor;

.field private d:Lcom/alipay/mobile/socialwidget/ui/ab;

.field private e:Landroid/os/HandlerThread;

.field private f:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

.field private g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private h:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->h:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "strangerrecentrefresh"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/ab;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/socialwidget/ui/ab;-><init>(Landroid/os/Looper;Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d:Lcom/alipay/mobile/socialwidget/ui/ab;

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c()V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 71
    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 70
    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->h:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 75
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/socialwidget/ui/ac;-><init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;B)V

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v2, "content://contactsdb/recent_session"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v2, "content://contactsdb/ali_account"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v2, "content://contactsdb/chatgroup_info"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v2, "content://contactsdb/stranger_visual"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 84
    return-void
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    if-nez v0, :cond_0

    .line 201
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->loadRecentStrangerCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c:Landroid/database/Cursor;

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 222
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/aa;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/aa;-><init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d:Lcom/alipay/mobile/socialwidget/ui/ab;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/ui/ab;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d:Lcom/alipay/mobile/socialwidget/ui/ab;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialwidget/ui/ab;->sendMessage(Landroid/os/Message;)Z

    .line 227
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d:Lcom/alipay/mobile/socialwidget/ui/ab;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d:Lcom/alipay/mobile/socialwidget/ui/ab;

    invoke-virtual {v1}, Lcom/alipay/mobile/socialwidget/ui/ab;->a()V

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    if-eqz v1, :cond_2

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Landroid/database/Cursor;)V

    .line 104
    return-void

    .line 99
    :catch_0
    move-exception v1

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_PersonalBase"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 119
    const-string/jumbo v1, "itemType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 120
    const-string/jumbo v2, "itemId"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 127
    const-string/jumbo v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string/jumbo v3, "itemType"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 129
    const-string/jumbo v4, "itemId"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    const-string/jumbo v5, "displayName"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 131
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->canMarkRead(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    const-string/jumbo v7, "unread"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 135
    if-nez v7, :cond_2

    .line 136
    new-instance v7, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v7}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 137
    const/4 v8, 0x2

    iput v8, v7, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 138
    sget v8, Lcom/alipay/mobile/socialwidget/R$string;->p:I

    invoke-virtual {p0, v8}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 139
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->canMakeTop(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 148
    const-string/jumbo v7, "top"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 149
    :goto_1
    if-eqz v0, :cond_4

    .line 150
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 151
    const/4 v7, 0x4

    iput v7, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 152
    sget v7, Lcom/alipay/mobile/socialwidget/R$string;->q:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 153
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    :goto_2
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 162
    const/4 v7, 0x5

    iput v7, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 163
    sget v7, Lcom/alipay/mobile/socialwidget/R$string;->m:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 164
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu;-><init>(Landroid/app/Activity;)V

    .line 166
    new-instance v7, Lcom/alipay/mobile/socialwidget/ui/y;

    invoke-direct {v7, p0, v2, v3, v4}, Lcom/alipay/mobile/socialwidget/ui/y;-><init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu;->showDialog(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$ItemChoiceSelectListener;)V

    .line 196
    return v1

    .line 141
    :cond_2
    new-instance v7, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v7}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 142
    iput v1, v7, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 143
    sget v8, Lcom/alipay/mobile/socialwidget/R$string;->n:I

    invoke-virtual {p0, v8}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 144
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 155
    :cond_4
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 156
    const/4 v7, 0x3

    iput v7, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 157
    sget v7, Lcom/alipay/mobile/socialwidget/R$string;->o:I

    invoke-virtual {p0, v7}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 158
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
