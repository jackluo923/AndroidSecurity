.class public Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;
.super Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;


# instance fields
.field private isOpen:Z

.field private nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->isOpen:Z

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public setIsOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->isOpen:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->nickname:Ljava/lang/String;

    return-void
.end method
