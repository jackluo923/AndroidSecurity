.class public final Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;
.super Ljava/lang/Object;
.source "DataSetNotificationCenter.java"


# instance fields
.field final a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

.field final b:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

.field final c:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;Lcom/alipay/mobile/personalbase/notification/DataContentObserver;Z)V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    .line 252
    iput-object p2, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;->b:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 253
    iput-boolean p3, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;->c:Z

    .line 254
    return-void
.end method
