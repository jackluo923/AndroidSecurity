.class public Lcom/alipay/mobile/commonui/widget/toast/Style;
.super Ljava/lang/Object;


# static fields
.field public static final BLACK:I = 0x0

.field public static final BLUE:I = 0x1

.field public static final GRAY:I = 0x2

.field public static final GREEN:I = 0x3

.field public static final ORANGE:I = 0x4

.field public static final PURPLE:I = 0x5

.field public static final RED:I = 0x6

.field public static final WHITE:I = 0x7


# instance fields
.field public animations:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

.field public background:I

.field public buttonTextColor:I

.field public dividerColor:I

.field public textColor:I

.field public typefaceStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->FADE:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/Style;->animations:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/toast/Style;->typefaceStyle:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    const v0, -0x333334

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/toast/Style;->buttonTextColor:I

    return-void
.end method

.method public static getBackground(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_kitkat_gray:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_kitkat_black:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_kitkat_white:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_kitkat_gray:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_kitkat_purple:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_kitkat_red:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_kitkat_orange:I

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_kitkat_blue:I

    goto :goto_0

    :pswitch_7
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_kitkat_green:I

    goto :goto_0

    :cond_0
    packed-switch p0, :pswitch_data_1

    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_standard_gray:I

    goto :goto_0

    :pswitch_8
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_standard_black:I

    goto :goto_0

    :pswitch_9
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_standard_white:I

    goto :goto_0

    :pswitch_a
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_standard_gray:I

    goto :goto_0

    :pswitch_b
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_standard_purple:I

    goto :goto_0

    :pswitch_c
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_standard_red:I

    goto :goto_0

    :pswitch_d
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_standard_orange:I

    goto :goto_0

    :pswitch_e
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_standard_blue:I

    goto :goto_0

    :pswitch_f
    sget v0, Lcom/alipay/mobile/ui/R$drawable;->background_standard_green:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_e
        :pswitch_a
        :pswitch_f
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static getStyle(I)Lcom/alipay/mobile/commonui/widget/toast/Style;
    .locals 5

    const/4 v1, 0x2

    const v4, -0x777778

    const v3, -0xbbbbbc

    const/4 v2, -0x1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/Style;

    invoke-direct {v0}, Lcom/alipay/mobile/commonui/widget/toast/Style;-><init>()V

    packed-switch p0, :pswitch_data_0

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    :goto_0
    return-object v0

    :pswitch_0
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_1
    iput v3, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v3, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    iput v4, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->buttonTextColor:I

    goto :goto_0

    :pswitch_2
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    iput v4, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->buttonTextColor:I

    goto :goto_0

    :pswitch_3
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_4
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_5
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_6
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_7
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static getStyle(ILcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;)Lcom/alipay/mobile/commonui/widget/toast/Style;
    .locals 5

    const/4 v1, 0x2

    const v4, -0x777778

    const v3, -0xbbbbbc

    const/4 v2, -0x1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/Style;

    invoke-direct {v0}, Lcom/alipay/mobile/commonui/widget/toast/Style;-><init>()V

    iput-object p1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->animations:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    packed-switch p0, :pswitch_data_0

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    :goto_0
    return-object v0

    :pswitch_0
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_1
    iput v3, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v3, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    iput v4, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->buttonTextColor:I

    goto :goto_0

    :pswitch_2
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    iput v4, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->buttonTextColor:I

    goto :goto_0

    :pswitch_3
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_4
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_5
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_6
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_7
    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/alipay/mobile/commonui/widget/toast/Style;->getBackground(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    iput v2, v0, Lcom/alipay/mobile/commonui/widget/toast/Style;->dividerColor:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
