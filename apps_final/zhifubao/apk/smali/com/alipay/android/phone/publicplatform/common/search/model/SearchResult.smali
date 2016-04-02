.class public Lcom/alipay/android/phone/publicplatform/common/search/model/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/publicplatform/common/search/model/SearchUiModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchResult;->c:Ljava/util/List;

    .line 9
    return-void
.end method


# virtual methods
.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchUiModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/publicplatform/common/search/model/SearchUiModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchResult;->c:Ljava/util/List;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchResult;->a:Z

    return v0
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchResult;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setSearchUiModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/publicplatform/common/search/model/SearchUiModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchResult;->c:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/alipay/android/phone/publicplatform/common/search/model/SearchResult;->a:Z

    .line 20
    return-void
.end method
