.class public Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
.super Ljava/lang/Object;
.source "Behavor.java"


# instance fields
.field private final behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public addExtParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-object p0
.end method

.method public autoOpenPage()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->autoOpenPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 95
    return-void
.end method

.method public build()Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    return-object v0
.end method

.method public click()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->click(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 75
    return-void
.end method

.method public longClick()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->longClick(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 83
    return-void
.end method

.method public openPage()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 79
    return-void
.end method

.method public setAppID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 29
    return-object p0
.end method

.method public setParam1(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 51
    return-object p0
.end method

.method public setParam2(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 56
    return-object p0
.end method

.method public setParam3(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 61
    return-object p0
.end method

.method public setRefViewID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 41
    return-object p0
.end method

.method public setSeedID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 46
    return-object p0
.end method

.method public setViewID(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 35
    return-object p0
.end method

.method public slide()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->slide(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 91
    return-void
.end method

.method public submit()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;->behavor:Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->submit(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 87
    return-void
.end method
