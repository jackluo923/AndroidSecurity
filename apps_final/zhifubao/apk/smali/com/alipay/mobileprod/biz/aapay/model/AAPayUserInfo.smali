.class public Lcom/alipay/mobileprod/biz/aapay/model/AAPayUserInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public avatarURL:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public sortValue:I

.field public userId:Ljava/lang/String;

.field public userLogonId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobileprod/biz/aapay/model/AAPayUserInfo;->sortValue:I

    return-void
.end method
