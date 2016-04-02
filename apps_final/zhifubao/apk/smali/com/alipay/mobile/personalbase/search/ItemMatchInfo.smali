.class public Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;
.super Ljava/lang/Object;
.source "ItemMatchInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public c4pypos:I

.field public pos:I

.field public pypos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pos:I

    .line 14
    iput p2, p0, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->pypos:I

    .line 15
    iput p3, p0, Lcom/alipay/mobile/personalbase/search/ItemMatchInfo;->c4pypos:I

    .line 17
    return-void
.end method
