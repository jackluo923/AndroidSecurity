.class final Lcom/alipay/pushsdk/util/log/j;
.super Ljava/lang/Object;
.source "StorageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/util/log/i;


# direct methods
.method private constructor <init>(Lcom/alipay/pushsdk/util/log/i;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alipay/pushsdk/util/log/j;->a:Lcom/alipay/pushsdk/util/log/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/pushsdk/util/log/i;B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/util/log/j;-><init>(Lcom/alipay/pushsdk/util/log/i;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/pushsdk/util/log/j;->a:Lcom/alipay/pushsdk/util/log/i;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/i;->a(Lcom/alipay/pushsdk/util/log/i;)V

    .line 26
    return-void
.end method
