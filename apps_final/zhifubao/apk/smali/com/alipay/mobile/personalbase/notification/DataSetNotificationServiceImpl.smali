.class public Lcom/alipay/mobile/personalbase/notification/DataSetNotificationServiceImpl;
.super Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;
.source "DataSetNotificationServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;-><init>()V

    .line 14
    new-instance v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationServiceImpl;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;

    .line 15
    return-void
.end method


# virtual methods
.method public notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationServiceImpl;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 30
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationServiceImpl;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->a(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 20
    return-void
.end method

.method public unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationServiceImpl;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->a(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 25
    return-void
.end method
