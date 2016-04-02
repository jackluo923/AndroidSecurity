.class public Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailInfoResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public emails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailInfoResult;->emails:Ljava/util/List;

    return-void
.end method
