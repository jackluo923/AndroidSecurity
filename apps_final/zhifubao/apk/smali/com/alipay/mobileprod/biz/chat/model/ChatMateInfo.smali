.class public Lcom/alipay/mobileprod/biz/chat/model/ChatMateInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public banner:Lcom/alipay/mobileprod/biz/chat/model/BannerInfo;

.field public chatDeny:Z

.field public chatOpen:Z

.field public person:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/chat/model/ChatMateInfo;->chatOpen:Z

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/chat/model/ChatMateInfo;->chatDeny:Z

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/chat/model/ChatMateInfo;->person:Z

    return-void
.end method
