.class public Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public active:Z

.field public headUrl:Ljava/lang/String;

.field public realFriend:Z

.field public realNameStatus:Ljava/lang/String;

.field public showName:Ljava/lang/String;

.field public userAccount:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilerelation/common/service/facade/result/SearchResultVO;->active:Z

    return-void
.end method
