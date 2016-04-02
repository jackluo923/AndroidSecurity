.class final Lcom/alipay/android/phone/home/widget/a;
.super Ljava/lang/Object;
.source "HomeWidgetGroup.java"

# interfaces
.implements Lcom/alipay/mobile/mpass/badge/ui/BadgeView$ResolveDelegate;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/a;->a:Lcom/alipay/android/phone/home/widget/HomeWidgetGroup;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolveMsgCount(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)I
    .locals 1

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;->getMsgCountByStyle(Ljava/lang/String;)I

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final resolveStyle(Lcom/alipay/mobile/mpass/badge/ui/WidgetInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    return-object v0
.end method
