.class public Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_COLOR:I = -0x1

.field public static final NO_SIZE:F = -1.0f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONArray;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->d:Lorg/json/JSONArray;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIconfontColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getIconfontFonts()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->d:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getIconfontId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getIconfontSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getIconfontUnicode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->d:Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setIconfontColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setIconfontFonts(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->d:Lorg/json/JSONArray;

    return-void
.end method

.method public setIconfontId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setIconfontSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setIconfontUnicode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/iconfont/model/IconfontInfo;->c:Ljava/lang/String;

    return-void
.end method
