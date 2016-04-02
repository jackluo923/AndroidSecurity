.class public Lcom/alipay/mobileprod/biz/contact/vo/UserInfoVO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public acctStatus:Ljava/lang/String;

.field public active:Z

.field public alias:Ljava/lang/String;

.field public headUrl:Ljava/lang/String;

.field public userAccount:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/contact/vo/UserInfoVO;->active:Z

    return-void
.end method
