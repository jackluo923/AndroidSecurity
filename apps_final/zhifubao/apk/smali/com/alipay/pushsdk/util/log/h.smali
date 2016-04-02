.class final Lcom/alipay/pushsdk/util/log/h;
.super Ljava/lang/Thread;
.source "ServiceTraceSend.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/alipay/pushsdk/util/log/h;->a:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/g;->b(Landroid/content/Context;)V

    .line 70
    return-void
.end method
