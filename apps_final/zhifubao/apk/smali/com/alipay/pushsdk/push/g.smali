.class public final Lcom/alipay/pushsdk/push/g;
.super Ljava/lang/Object;
.source "PacketIDFilter.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/connection/c;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/pushsdk/push/g;->a:I

    .line 20
    if-gez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Msg ID is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput p1, p0, Lcom/alipay/pushsdk/push/g;->a:I

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/c/a;)Z
    .locals 2

    .prologue
    .line 27
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/c/a;->a()I

    move-result v0

    iget v1, p0, Lcom/alipay/pushsdk/push/g;->a:I

    if-ne v0, v1, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PacketIDFilter by id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/pushsdk/push/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
