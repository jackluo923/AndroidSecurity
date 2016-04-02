.class final Lcom/alipay/pushsdk/push/b/b;
.super Ljava/lang/Object;
.source "PushLBSHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/b/a;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/b/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/b/b;->a:Lcom/alipay/pushsdk/push/b/a;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/pushsdk/push/b/g;

    check-cast p2, Lcom/alipay/pushsdk/push/b/g;

    iget v0, p1, Lcom/alipay/pushsdk/push/b/g;->c:I

    iget v1, p2, Lcom/alipay/pushsdk/push/b/g;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/alipay/pushsdk/push/b/g;->c:I

    iget v1, p2, Lcom/alipay/pushsdk/push/b/g;->c:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
