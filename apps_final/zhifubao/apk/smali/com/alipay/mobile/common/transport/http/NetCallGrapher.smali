.class public Lcom/alipay/mobile/common/transport/http/NetCallGrapher;
.super Ljava/lang/Object;
.source "NetCallGrapher.java"


# instance fields
.field private A:I

.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:J

.field private t:J

.field private u:J

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->i:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->j:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->k:Ljava/lang/String;

    .line 168
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ","

    const-string/jumbo v1, "#"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs writeLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 310
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 311
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppVersion(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatus(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatusMsg(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, p9}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLogPro(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUrl(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 321
    if-eqz p11, :cond_0

    array-length v1, p11

    if-lez v1, :cond_0

    .line 322
    const/4 v1, 0x0

    aget-object v1, p11, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 324
    :cond_0
    if-eqz p11, :cond_1

    array-length v1, p11

    if-lt v1, v2, :cond_1

    .line 325
    const/4 v1, 0x1

    aget-object v1, p11, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 327
    :cond_1
    if-eqz p11, :cond_2

    array-length v1, p11

    if-lt v1, v3, :cond_2

    .line 328
    aget-object v1, p11, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 330
    :cond_2
    if-eqz p11, :cond_3

    array-length v1, p11

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 331
    aget-object v1, p11, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLegacyParam(Ljava/lang/String;)V

    .line 334
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string/jumbo v2, "monitor"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 335
    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getCenterTime()J
    .locals 2

    .prologue
    .line 557
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    return-wide v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectStatus()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->A:I

    return v0
.end method

.method public getCookieOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 565
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    return-wide v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getNet0()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    return v0
.end method

.method public getNet1()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    return v0
.end method

.method public getNetKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getRandom1()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->v:I

    return v0
.end method

.method public getRandom2()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->w:I

    return v0
.end method

.method public getResUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 549
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->s:J

    return-wide v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTime1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->p:Ljava/lang/String;

    return-object v0
.end method

.method public isDownLev()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    return v0
.end method

.method public isSuccess1()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    return v0
.end method

.method public isUniDomain()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->y:Z

    return v0
.end method

.method public isUpdateThis()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->l:Z

    return v0
.end method

.method public recordExcuteTime(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    .line 358
    return-void
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setCallUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->m:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public setCenterTime(J)V
    .locals 0

    .prologue
    .line 561
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    .line 562
    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->i:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setConnectStatus(I)V
    .locals 0

    .prologue
    .line 606
    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->A:I

    .line 607
    return-void
.end method

.method public setCookieOrigin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->n:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public setDownHttpsCall(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 199
    const-string/jumbo v0, "https"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    .line 200
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    .line 202
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->g:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setDownLev(Z)V
    .locals 0

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    .line 414
    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .prologue
    .line 569
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    .line 570
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 463
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    .line 464
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->r:Ljava/lang/String;

    .line 472
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    .line 474
    return-void

    .line 467
    :cond_0
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    .line 468
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public setErrorCode1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->r:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setExtUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->m:Ljava/lang/String;

    .line 372
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->n:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setHttpsCall()V
    .locals 1

    .prologue
    .line 188
    const-string/jumbo v0, "https"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    .line 192
    return-void
.end method

.method public setNet0(I)V
    .locals 0

    .prologue
    .line 381
    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    .line 382
    return-void
.end method

.method public setNet1(I)V
    .locals 0

    .prologue
    .line 389
    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    .line 390
    return-void
.end method

.method public setNetInfo(II)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    .line 179
    iput p2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    .line 181
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->j:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->k:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setProtocol1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setRandom1(I)V
    .locals 0

    .prologue
    .line 537
    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->v:I

    .line 538
    return-void
.end method

.method public setRandom2(I)V
    .locals 0

    .prologue
    .line 545
    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->w:I

    .line 546
    return-void
.end method

.method public setResUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->z:Ljava/lang/String;

    .line 591
    return-void
.end method

.method public setSpdyCall()V
    .locals 1

    .prologue
    .line 213
    const-string/jumbo v0, "spdy"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    .line 217
    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .prologue
    .line 553
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->s:J

    .line 554
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 421
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    .line 422
    return-void
.end method

.method public setSuccess1(Z)V
    .locals 0

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    .line 446
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->x:Ljava/lang/String;

    .line 583
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setTime1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->p:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setUniDomain(Z)V
    .locals 0

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->y:Z

    .line 599
    return-void
.end method

.method public setUpdateThis(Z)V
    .locals 0

    .prologue
    .line 509
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->l:Z

    .line 510
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "net:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";api:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";protocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";downLev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";success1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";errorCode1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";protocol1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";centerTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";endTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";connectionStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upGrapher2Server(Landroid/content/Context;)V
    .locals 15

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->v:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->w:I

    if-nez v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x0

    .line 250
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 252
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    const-string/jumbo v3, "spdy"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->v:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_3

    .line 253
    const/4 v0, 0x1

    move v12, v0

    .line 259
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v0, :cond_4

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->s:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->p:Ljava/lang/String;

    .line 267
    :goto_2
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    if-nez v0, :cond_6

    .line 268
    const-string/jumbo v1, "F"

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "MonitorPoint_NetworkError"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "s"

    const-string/jumbo v10, "c"

    const/4 v0, 0x6

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v0

    const/4 v0, 0x1

    iget-object v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    aput-object v13, v11, v0

    const/4 v0, 0x2

    iget-object v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    aput-object v13, v11, v0

    const/4 v13, 0x3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "T"

    :goto_3
    aput-object v0, v11, v13

    const/4 v0, 0x4

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Android|"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->A:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getStrategyVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v0

    const/4 v0, 0x5

    iget-object v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    aput-object v13, v11, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->writeLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 283
    :cond_2
    :goto_4
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v0, :cond_0

    .line 284
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    if-nez v0, :cond_a

    .line 285
    const-string/jumbo v1, "F"

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "MonitorPoint_NetworkError"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "s"

    const-string/jumbo v10, "c"

    const/4 v0, 0x6

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v0

    const/4 v0, 0x1

    iget-object v12, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->p:Ljava/lang/String;

    aput-object v12, v11, v0

    const/4 v0, 0x2

    iget-object v12, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    aput-object v12, v11, v0

    const/4 v12, 0x3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "T"

    :goto_5
    aput-object v0, v11, v12

    const/4 v0, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Android|"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->A:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getStrategyVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v0

    const/4 v0, 0x5

    iget-object v12, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    aput-object v12, v11, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->writeLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 301
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "NetCallGrapher"

    const-string/jumbo v2, "NetCallGrapher\u8bb0\u5f55\u5230map\u53d1\u751f\u5f02\u5e38"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->w:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_d

    .line 255
    const/4 v0, 0x1

    move v12, v0

    goto/16 :goto_1

    .line 263
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    iget-wide v3, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->s:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    goto/16 :goto_2

    .line 268
    :cond_5
    const-string/jumbo v0, "F"

    goto/16 :goto_3

    .line 274
    :cond_6
    if-nez v12, :cond_7

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->A:I

    if-eqz v0, :cond_2

    .line 275
    :cond_7
    const-string/jumbo v1, "T"

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "MonitorPoint_NetworkDigest"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "s"

    const-string/jumbo v10, "c"

    const/4 v0, 0x6

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v0

    const/4 v0, 0x1

    iget-object v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    aput-object v13, v11, v0

    const/4 v0, 0x2

    iget-object v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    aput-object v13, v11, v0

    const/4 v13, 0x3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "T"

    :goto_6
    aput-object v0, v11, v13

    const/4 v0, 0x4

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Android|"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->A:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getStrategyVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v0

    const/4 v0, 0x5

    iget-object v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    aput-object v13, v11, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->writeLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v0, "F"

    goto :goto_6

    .line 285
    :cond_9
    const-string/jumbo v0, "F"

    goto/16 :goto_5

    .line 292
    :cond_a
    if-nez v12, :cond_b

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->A:I

    if-eqz v0, :cond_0

    .line 293
    :cond_b
    const-string/jumbo v1, "T"

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, "MonitorPoint_NetworkDigest"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, "s"

    const-string/jumbo v10, "c"

    const/4 v0, 0x6

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v0

    const/4 v0, 0x1

    iget-object v12, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->p:Ljava/lang/String;

    aput-object v12, v11, v0

    const/4 v0, 0x2

    iget-object v12, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    aput-object v12, v11, v0

    const/4 v12, 0x3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "T"

    :goto_7
    aput-object v0, v11, v12

    const/4 v0, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Android|"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->A:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getStrategyVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v0

    const/4 v0, 0x5

    iget-object v12, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    aput-object v12, v11, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v11}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->writeLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "F"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_d
    move v12, v0

    goto/16 :goto_1
.end method
