.class public Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_$IntentBuilder_;
.super Ljava/lang/Object;
.source "NoNetworkTipPage_.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_$IntentBuilder_;->a:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/NoNetworkTipPage_$IntentBuilder_;->b:Landroid/content/Intent;

    .line 78
    return-void
.end method
