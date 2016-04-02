.class public Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
.super Ljava/lang/Object;
.source "Behavor.java"


# static fields
.field private static final BEHAVOR_TYPE:Ljava/lang/String; = "u"

.field private static final LOG_TYPE:Ljava/lang/String; = "c"


# instance fields
.field private appID:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private behaviourPro:Ljava/lang/String;

.field private extParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private legacyParam:Ljava/lang/String;

.field private logPro:Ljava/lang/String;

.field private param1:Ljava/lang/String;

.field private param2:Ljava/lang/String;

.field private param3:Ljava/lang/String;

.field private refViewID:Ljava/lang/String;

.field private seedID:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private statusMsg:Ljava/lang/String;

.field private trackDesc:Ljava/lang/String;

.field private trackId:Ljava/lang/String;

.field private trackToken:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userCaseID:Ljava/lang/String;

.field private viewID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const-string/jumbo v0, "u"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->behaviourPro:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "c"

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->logPro:Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->extParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addExtParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->extParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getBehaviourPro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->behaviourPro:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->extParams:Ljava/util/Map;

    return-object v0
.end method

.method public getLegacyParam()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->legacyParam:Ljava/lang/String;

    return-object v0
.end method

.method public getLogPro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->logPro:Ljava/lang/String;

    return-object v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->param1:Ljava/lang/String;

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->param2:Ljava/lang/String;

    return-object v0
.end method

.method public getParam3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->param3:Ljava/lang/String;

    return-object v0
.end method

.method public getRefViewID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->refViewID:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->seedID:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->statusMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->trackDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->trackToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCaseID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->userCaseID:Ljava/lang/String;

    return-object v0
.end method

.method public getViewID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->viewID:Ljava/lang/String;

    return-object v0
.end method

.method public removeExtParam(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->extParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->appID:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->appVersion:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setBehaviourPro(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->behaviourPro:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setLegacyParam(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->legacyParam:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setLogPro(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->logPro:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setParam1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->param1:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setParam2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->param2:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setParam3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->param3:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setRefViewID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->refViewID:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setSeedID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->seedID:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 311
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->status:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setStatusMsg(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 320
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->statusMsg:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setTrackDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->trackDesc:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->trackId:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setTrackToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->trackToken:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 329
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->url:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setUserCaseID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->userCaseID:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setViewID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->viewID:Ljava/lang/String;

    .line 216
    return-void
.end method
