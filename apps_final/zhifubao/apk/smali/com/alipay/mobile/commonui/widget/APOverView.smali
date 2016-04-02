.class public abstract Lcom/alipay/mobile/commonui/widget/APOverView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;


# static fields
.field public static final STATE_CLOSE:B = 0x0t

.field public static final STATE_FINISH:B = 0x4t

.field public static final STATE_LOAD:B = 0x3t

.field public static final STATE_OPEN:B = 0x1t

.field public static final STATE_OVER:B = 0x2t


# instance fields
.field protected mState:B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/commonui/widget/APOverView;->mState:B

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APOverView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/commonui/widget/APOverView;->mState:B

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APOverView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/commonui/widget/APOverView;->mState:B

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APOverView;->init()V

    return-void
.end method


# virtual methods
.method public getLoadingLogo()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoadingShadowView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNormalLogo()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNormalShadowView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getOverViewHeight()I
.end method

.method public getState()B
    .locals 1

    iget-byte v0, p0, Lcom/alipay/mobile/commonui/widget/APOverView;->mState:B

    return v0
.end method

.method public abstract init()V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onLoad()V
.end method

.method public abstract onOpen()V
.end method

.method public abstract onOver()V
.end method

.method public onPullto(DB)V
    .locals 0

    return-void
.end method

.method public setState(B)V
    .locals 0

    iput-byte p1, p0, Lcom/alipay/mobile/commonui/widget/APOverView;->mState:B

    return-void
.end method
