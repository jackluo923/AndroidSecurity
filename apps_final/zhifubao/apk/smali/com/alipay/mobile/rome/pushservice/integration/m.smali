.class public final Lcom/alipay/mobile/rome/pushservice/integration/m;
.super Ljava/lang/Object;
.source "PushNoticeRichInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->a:Ljava/lang/String;

    .line 6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->b:Ljava/lang/String;

    .line 7
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->c:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->a:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->b:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->c:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->b:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/m;->c:Ljava/lang/String;

    return-object v0
.end method
