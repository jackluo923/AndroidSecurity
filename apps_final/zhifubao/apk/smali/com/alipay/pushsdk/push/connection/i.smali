.class final Lcom/alipay/pushsdk/push/connection/i;
.super Ljava/lang/Thread;
.source "PacketWriter.java"


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/connection/h;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/connection/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/i;->a:Lcom/alipay/pushsdk/push/connection/h;

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->a:Lcom/alipay/pushsdk/push/connection/h;

    invoke-static {v0, p0}, Lcom/alipay/pushsdk/push/connection/h;->a(Lcom/alipay/pushsdk/push/connection/h;Ljava/lang/Thread;)V

    .line 64
    return-void
.end method
