.class public abstract Lcom/alipay/mobile/command/listener/AbstractListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/command/listener/NotifyListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/command/listener/NotifyListener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/alipay/mobile/command/listener/NotifyListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/command/listener/NotifyListener",
            "<TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/command/listener/AbstractListener;->priority()I

    move-result v0

    invoke-interface {p1}, Lcom/alipay/mobile/command/listener/NotifyListener;->priority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/alipay/mobile/command/listener/NotifyListener;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/command/listener/AbstractListener;->compareTo(Lcom/alipay/mobile/command/listener/NotifyListener;)I

    move-result v0

    return v0
.end method
