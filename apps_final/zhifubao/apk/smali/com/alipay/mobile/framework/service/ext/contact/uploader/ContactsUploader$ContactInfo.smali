.class public Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;
.super Ljava/lang/Object;
.source "ContactsUploader.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field public phoneName:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 152
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;

    if-eqz v1, :cond_0

    .line 153
    check-cast p1, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;

    .line 154
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;->phoneName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploader$ContactInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
