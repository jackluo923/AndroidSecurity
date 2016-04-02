.class public Lcom/alipay/mobile/look/biz/rpc/EmotionTemplate;
.super Lcom/alipay/mobile/look/biz/rpc/ToString;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x14e54ff9f4e66cd9L


# instance fields
.field public displayName:Ljava/lang/String;

.field public emotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/look/biz/rpc/Emotion;",
            ">;"
        }
    .end annotation
.end field

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

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplate;->templateID:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplate;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplate;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplate;->iconPath:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplate;->viewed:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplate;->newed:Z

    iput v1, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplate;->order:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/look/biz/rpc/EmotionTemplate;->emotions:Ljava/util/List;

    return-void
.end method
