.class public Lcom/alipay/publiccore/core/model/account/ButtonObject;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "ButtonObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x78030e4b1f0dca68L


# instance fields
.field public actionParam:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public authType:Ljava/lang/String;

.field public clientPlatform:Ljava/lang/String;

.field public envMode:Ljava/lang/String;

.field public maxVersion:Ljava/lang/String;

.field public minVersion:Ljava/lang/String;

.field public msgShowType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public subButton:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 108
    if-ne p0, p1, :cond_1

    .line 109
    const/4 v0, 0x1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    instance-of v1, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;

    if-eqz v1, :cond_0

    .line 114
    check-cast p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;

    .line 115
    iget-object v1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionParam:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionParam:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->authType:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->authType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->clientPlatform:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->clientPlatform:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->envMode:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->envMode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->maxVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->maxVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->minVersion:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->minVersion:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->msgShowType:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->msgShowType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public getActionParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionParam:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubButton()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    return-object v0
.end method

.method public setActionParam(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionParam:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setSubButton(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    .line 100
    return-void
.end method
