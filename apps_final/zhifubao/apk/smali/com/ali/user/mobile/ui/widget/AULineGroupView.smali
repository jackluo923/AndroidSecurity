.class public Lcom/ali/user/mobile/ui/widget/AULineGroupView;
.super Landroid/widget/LinearLayout;
.source "AULineGroupView.java"

# interfaces
.implements Lcom/ali/user/mobile/ui/widget/AULineGroupItemChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method private static a(Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;

    if-eqz v1, :cond_0

    .line 155
    check-cast p0, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;

    .line 157
    :goto_0
    return-object p0

    :cond_0
    move-object p0, v0

    goto :goto_0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 102
    const-string/jumbo v0, "APLineGroupView"

    const-string/jumbo v2, "resetPositionStyle"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move v2, v1

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 107
    :goto_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 127
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->a(Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 109
    invoke-static {v3}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->a(Landroid/view/View;)Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;

    move-result-object v3

    .line 110
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 112
    if-nez v0, :cond_4

    .line 113
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_4

    .line 114
    const/16 v4, 0x10

    invoke-interface {v3, v4}, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;->setItemPositionStyle(I)V

    .line 123
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    :cond_4
    if-nez v0, :cond_5

    .line 116
    const/16 v4, 0x11

    invoke-interface {v3, v4}, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;->setItemPositionStyle(I)V

    goto :goto_2

    .line 117
    :cond_5
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_6

    .line 118
    const/16 v4, 0x12

    invoke-interface {v3, v4}, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;->setItemPositionStyle(I)V

    goto :goto_2

    .line 120
    :cond_6
    const/16 v4, 0x13

    invoke-interface {v3, v4}, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;->setItemPositionStyle(I)V

    goto :goto_2
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->addView(Landroid/view/View;I)V

    .line 66
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 71
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 76
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void
.end method

.method public itemChanged(Landroid/view/View;Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;)V
    .locals 0

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->a()V

    .line 169
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 87
    const-string/jumbo v0, "APLineGroupView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "onFinishInflate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 92
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 93
    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->a()V

    .line 94
    const-string/jumbo v0, "APLineGroupView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/AULineGroupView;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "onLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method
