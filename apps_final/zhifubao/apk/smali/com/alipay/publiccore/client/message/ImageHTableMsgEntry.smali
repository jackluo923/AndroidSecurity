.class public Lcom/alipay/publiccore/client/message/ImageHTableMsgEntry;
.super Lcom/alipay/publiccore/client/message/BaseMsgEntry;
.source "ImageHTableMsgEntry.java"


# static fields
.field private static final serialVersionUID:J = -0x3ed9679ecf40e65bL


# instance fields
.field public tableRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/message/TableRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/client/message/BaseMsgEntry;-><init>()V

    return-void
.end method
