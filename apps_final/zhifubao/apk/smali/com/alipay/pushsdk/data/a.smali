.class public final Lcom/alipay/pushsdk/data/a;
.super Ljava/lang/Object;
.source "ConfigData.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, "mcometgw.alipay.com"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/a;->b:Ljava/lang/String;

    .line 13
    const/16 v0, 0x1bb

    iput v0, p0, Lcom/alipay/pushsdk/data/a;->c:I

    .line 14
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/a;->d:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/pushsdk/data/a;->e:Ljava/lang/String;

    .line 16
    sget v0, Lcom/alipay/pushsdk/util/a;->a:I

    iput v0, p0, Lcom/alipay/pushsdk/data/a;->f:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/pushsdk/data/a;->g:I

    .line 18
    return-void
.end method
