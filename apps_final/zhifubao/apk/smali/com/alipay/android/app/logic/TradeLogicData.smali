.class public Lcom/alipay/android/app/logic/TradeLogicData;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lorg/apache/http/Header;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Lcom/alipay/android/app/logic/request/RequestConfig;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->b:Ljava/lang/String;

    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->c:Ljava/lang/String;

    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->d:Ljava/lang/String;

    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->e:Ljava/lang/String;

    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->f:Ljava/lang/String;

    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->g:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->h:I

    iput v2, p0, Lcom/alipay/android/app/logic/TradeLogicData;->i:I

    iput-boolean v1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->k:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/logic/TradeLogicData;->l:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->h:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->i:I

    return-void
.end method

.method public final a(Lcom/alipay/android/app/logic/request/RequestConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->j:Lcom/alipay/android/app/logic/request/RequestConfig;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->m:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->l:Z

    return-void
.end method

.method public final a([Lorg/apache/http/Header;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->a:[Lorg/apache/http/Header;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->h:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->c:Ljava/lang/String;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->k:Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->l:Z

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->i:I

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->f:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->g:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/Header;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "Msp-Param"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->a:[Lorg/apache/http/Header;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->j:Lcom/alipay/android/app/logic/request/RequestConfig;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/logic/TradeLogicData;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/logic/TradeLogicData;->j:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/logic/TradeLogicData;->j:Lcom/alipay/android/app/logic/request/RequestConfig;

    invoke-virtual {v2}, Lcom/alipay/android/app/logic/request/RequestConfig;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/alipay/android/app/util/LogAgent;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final l()[Lorg/apache/http/Header;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->a:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public final m()Lcom/alipay/android/app/logic/request/RequestConfig;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->j:Lcom/alipay/android/app/logic/request/RequestConfig;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/logic/TradeLogicData;->k:Z

    return v0
.end method
