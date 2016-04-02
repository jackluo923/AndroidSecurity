.class public Lcom/alipay/mobileprod/biz/contact/model/CombinedContactRecord;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public contactPhone:Ljava/lang/String;

.field public dataSource:Ljava/lang/String;

.field public userAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/vo/UserInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public userNameShow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
