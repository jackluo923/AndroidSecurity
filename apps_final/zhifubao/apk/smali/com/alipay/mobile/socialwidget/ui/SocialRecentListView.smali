.class public Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;
.super Lcom/alipay/mobile/commonui/widget/APListView;
.source "SocialRecentListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/commonui/widget/APListView;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

.field private c:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

.field private d:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private e:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private f:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method private a(IZ)I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 283
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 284
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 285
    add-int/lit8 v4, p1, 0x1

    :goto_0
    if-lt v4, v6, :cond_0

    .line 303
    :goto_1
    return v3

    .line 286
    :cond_0
    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 287
    if-eqz v0, :cond_3

    .line 288
    const-string/jumbo v1, "unread"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 291
    const-string/jumbo v1, "notDisturb"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 292
    :goto_2
    const-string/jumbo v8, "redPointStyle"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz p2, :cond_2

    .line 294
    if-lez v7, :cond_3

    move v3, v4

    .line 295
    goto :goto_1

    :cond_1
    move v1, v3

    .line 291
    goto :goto_2

    .line 298
    :cond_2
    if-nez v1, :cond_3

    if-le v7, v2, :cond_3

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v3, v4

    .line 299
    goto :goto_1

    .line 285
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 307
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 307
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 309
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "com.alipay.socialsdk."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v2, "itemType"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string/jumbo v2, "itemId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 313
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_SocialHomeWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendRecentExternalChangeBroadcast:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->e:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;)Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getFirstVisiblePosition()I

    move-result v1

    .line 273
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getLastVisiblePosition()I

    move-result v2

    .line 274
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 275
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_3

    .line 276
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(IZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setSelection(I)V

    goto :goto_0

    .line 274
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 278
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a(IZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setSelection(I)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->d:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 77
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    invoke-virtual {p0, p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->d:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 80
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->e:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 81
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->f:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 82
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->g:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setScrollingCacheEnabled(Z)V

    .line 84
    return-void
.end method

.method public final a(Landroid/database/Cursor;Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    iput-object p2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->f:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Ljava/util/HashMap;)V

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->f:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->notifyDataSetChanged()V

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Ljava/util/HashMap;)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->b:Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 89
    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->d:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 93
    const-string/jumbo v2, "itemType"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 94
    const-string/jumbo v3, "itemId"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    packed-switch v2, :pswitch_data_0

    .line 110
    :pswitch_0
    const-string/jumbo v2, "uri"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-class v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 113
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/socialwidget/util/AppLaunchUtil;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 101
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage_;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->d:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :pswitch_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    const-string/jumbo v2, "actionType"

    const-string/jumbo v3, "actionTypeRecommendationPage"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000186"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
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
    const/4 v6, 0x1

    .line 121
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    .line 122
    if-nez v5, :cond_0

    .line 250
    :goto_0
    return v6

    .line 125
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string/jumbo v0, "itemType"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 127
    const-string/jumbo v0, "itemId"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    const-string/jumbo v0, "displayName"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 129
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->canMarkRead(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string/jumbo v0, "unread"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 132
    if-nez v0, :cond_3

    .line 133
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 134
    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 135
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->p:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 136
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    :goto_1
    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->canMakeTop(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const-string/jumbo v0, "top"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-ne v0, v6, :cond_4

    move v0, v6

    .line 146
    :goto_2
    if-eqz v0, :cond_5

    .line 147
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 148
    const/4 v1, 0x4

    iput v1, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 149
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->q:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 150
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_2
    :goto_3
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 159
    const/4 v1, 0x5

    iput v1, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->m:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 161
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v9, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu;

    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    invoke-direct {v9, v0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu;-><init>(Landroid/app/Activity;)V

    .line 163
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/w;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialwidget/ui/w;-><init>(Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;Ljava/lang/String;ILjava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v9, v7, v8, v0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu;->showDialog(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$ItemChoiceSelectListener;)V

    goto/16 :goto_0

    .line 138
    :cond_3
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 139
    iput v6, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->n:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 141
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 152
    :cond_5
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 153
    const/4 v1, 0x3

    iput v1, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 154
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/SocialRecentListView;->a:Landroid/app/Activity;

    sget v9, Lcom/alipay/mobile/socialwidget/R$string;->o:I

    invoke-virtual {v1, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/api/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 155
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method
