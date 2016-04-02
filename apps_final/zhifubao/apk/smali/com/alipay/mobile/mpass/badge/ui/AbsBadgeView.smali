.class public abstract Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;
.super Landroid/widget/FrameLayout;
.source "AbsBadgeView.java"


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

.field private c:Lcom/alipay/mobile/mpass/badge/IBadgeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "BadgeView"

    sput-object v0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getBadgeController()Lcom/alipay/mobile/mpass/badge/IBadgeController;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->c:Lcom/alipay/mobile/mpass/badge/IBadgeController;

    return-object v0
.end method

.method public getBadgeStyle()Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;->NONE:Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;

    return-object v0
.end method

.method public getMsgCount()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetInfo()Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    return-object v0
.end method

.method protected abstract onWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Z
.end method

.method public setBadgeController(Lcom/alipay/mobile/mpass/badge/IBadgeController;)V
    .locals 2

    .prologue
    .line 46
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/mpass/badge/BadgeManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "badgeController must be the BadgeManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->c:Lcom/alipay/mobile/mpass/badge/IBadgeController;

    .line 50
    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->compareString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->a:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->c:Lcom/alipay/mobile/mpass/badge/IBadgeController;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->c:Lcom/alipay/mobile/mpass/badge/IBadgeController;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/mpass/badge/IBadgeController;->requestWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;)V

    .line 79
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateWidgetInfo(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->onWidgetInfoUpdate(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/mpass/badge/ui/AbsBadgeView;->b:Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;

    .line 97
    :cond_0
    return-void
.end method
