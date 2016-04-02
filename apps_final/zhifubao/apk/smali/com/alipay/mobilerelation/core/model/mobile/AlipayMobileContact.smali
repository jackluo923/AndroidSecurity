.class public Lcom/alipay/mobilerelation/core/model/mobile/AlipayMobileContact;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mobile:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/core/model/mobile/AlipayUserinfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilerelation/core/model/mobile/AlipayMobileContact;->userList:Ljava/util/List;

    return-void
.end method
