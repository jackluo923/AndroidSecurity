.class public Lcom/alipay/mobile/common/share/ShareItem;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/share/ShareItem;->b:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/share/ShareItem;->b:I

    return v0
.end method

.method public getShareType()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/share/ShareItem;->c:I

    return v0
.end method

.method public isAlert()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/share/ShareItem;->d:Z

    return v0
.end method

.method public setAlert(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/share/ShareItem;->d:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareItem;->a:Ljava/lang/String;

    return-void
.end method

.method public setResId(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/share/ShareItem;->b:I

    return-void
.end method

.method public setShareType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/share/ShareItem;->c:I

    return-void
.end method
