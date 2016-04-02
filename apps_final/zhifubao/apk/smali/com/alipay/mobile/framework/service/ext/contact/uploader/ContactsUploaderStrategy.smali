.class public Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;
.super Ljava/lang/Object;
.source "ContactsUploaderStrategy.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;->a:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;->b:Z

    .line 41
    return-void
.end method


# virtual methods
.method public getUploadAllTimeInterval()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;->a:I

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;->b:Z

    return v0
.end method

.method public isRunOnBg()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;->c:Z

    return v0
.end method

.method public setAppend(Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;->b:Z

    .line 24
    return-void
.end method

.method public setRunOnBg(Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;->c:Z

    .line 31
    return-void
.end method

.method public setUploadAllTimeInterval(I)V
    .locals 0

    .prologue
    .line 12
    iput p1, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderStrategy;->a:I

    .line 13
    return-void
.end method
