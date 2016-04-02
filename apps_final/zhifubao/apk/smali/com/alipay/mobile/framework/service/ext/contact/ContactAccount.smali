.class public Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
.super Ljava/lang/Object;
.source "ContactAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x6e68a755d362e929L


# instance fields
.field public account:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public active:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public area:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public blacked:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public extVersion:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public friendStatus:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public gender:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public groupMemberCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public groupNickName:Ljava/lang/String;

.field public headImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public isFrom:Ljava/lang/String;

.field public isTop:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public phoneName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public phoneNo:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public province:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public rawInputString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public realNameStatus:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public remarkName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public signature:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public starFriend:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userGrade:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "_id"
        id = true
    .end annotation
.end field

.field public userType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userType:Ljava/lang/String;

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->active:Z

    .line 240
    const-string/jumbo v0, "account"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isFrom:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 244
    if-ne p0, p1, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    .line 248
    :cond_0
    if-nez p1, :cond_1

    .line 249
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 256
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    .line 168
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 169
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    return-object v0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    .line 186
    :goto_0
    if-nez v0, :cond_0

    .line 187
    const-string/jumbo v0, ""

    .line 189
    :cond_0
    return-object v0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->phoneNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->phoneNo:Ljava/lang/String;

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 262
    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 264
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 266
    return v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isAlipayAccount()Z
    .locals 2

    .prologue
    .line 213
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMyFriend()Z
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
