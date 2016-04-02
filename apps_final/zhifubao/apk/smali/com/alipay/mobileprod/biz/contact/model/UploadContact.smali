.class public Lcom/alipay/mobileprod/biz/contact/model/UploadContact;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public deviceId:Ljava/lang/String;

.field public ownerMobile:Ljava/lang/String;

.field public ownerName:Ljava/lang/String;

.field public ownerUid:Ljava/lang/String;

.field public recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/model/UploadContactRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
