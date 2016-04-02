.class public Lcom/alipay/mobile/look/biz/rpc/Emotion;
.super Lcom/alipay/mobile/look/biz/rpc/ToString;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4559bca6a4610778L


# instance fields
.field public animationFilePath:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public emotionId:Ljava/lang/String;

.field public iconPath:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public newed:Z

.field public order:I

.field public templateID:Ljava/lang/String;

.field public viewed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/look/biz/rpc/ToString;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/Emotion;->templateID:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/Emotion;->emotionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/Emotion;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/Emotion;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/Emotion;->iconPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/Emotion;->animationFilePath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/look/biz/rpc/Emotion;->viewed:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/look/biz/rpc/Emotion;->newed:Z

    iput v1, p0, Lcom/alipay/mobile/look/biz/rpc/Emotion;->order:I

    return-void
.end method
