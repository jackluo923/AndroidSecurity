.class final Lcom/alipay/mobile/personalbase/notification/a;
.super Ljava/lang/Object;
.source "DataSetNotificationCenter.java"


# instance fields
.field public final a:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

.field public final b:Z

.field final synthetic c:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;Lcom/alipay/mobile/personalbase/notification/DataContentObserver;Z)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/notification/a;->c:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/alipay/mobile/personalbase/notification/a;->a:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 116
    iput-boolean p3, p0, Lcom/alipay/mobile/personalbase/notification/a;->b:Z

    .line 117
    return-void
.end method
