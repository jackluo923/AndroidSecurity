.class public Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    sput v1, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a:I

    sput v1, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-small"

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "x-small"

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "small"

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "medium"

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "large"

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "x-large"

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-large"

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "switch"

    const-string/jumbo v2, "mini_switch_selector"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "skip"

    const-string/jumbo v2, "mini_switch_selector"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "white_content"

    const-string/jumbo v2, "mini_bg_white"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "gray_content"

    const-string/jumbo v2, "mini_bg_gray"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "red_content"

    const-string/jumbo v2, "mini_bg_red"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "detail"

    const-string/jumbo v2, "mini_icon_info"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "tip"

    const-string/jumbo v2, "mini_icon_info"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "header_line"

    const-string/jumbo v2, "mini_header_line"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "mini_logo"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "logo_orange"

    const-string/jumbo v2, "mini_logo"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "small_logo"

    const-string/jumbo v2, "mini_small_logo"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_icon"

    const-string/jumbo v2, "alipay_icon"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "footer_line"

    const-string/jumbo v2, "mini_footer_line"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "middle_line"

    const-string/jumbo v2, "mini_footer_line"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sure"

    const-string/jumbo v2, "mini_icon_sure"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "page_title"

    const-string/jumbo v2, "mini_card_title_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "dash_line"

    const-string/jumbo v2, "mini_dash_line_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "vertical_line"

    const-string/jumbo v2, "mini_vertical_line"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "mini_info"

    const-string/jumbo v2, "mini_page_card_safecode_info"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "result_ok"

    const-string/jumbo v2, "mini_icon_ok"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "normal"

    const-string/jumbo v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "hover"

    const-string/jumbo v2, "mini_btn_confirm_hover"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "normal_second"

    const-string/jumbo v2, "mini_btn_cancel_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "hover_second"

    const-string/jumbo v2, "mini_btn_cancel_hover"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable_second"

    const-string/jumbo v2, "mini_btn_disable"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable_gray"

    const-string/jumbo v2, "mini_btn_disable"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable_blue"

    const-string/jumbo v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_normal"

    const-string/jumbo v2, "mini_btn_normal"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_hover"

    const-string/jumbo v2, "mini_btn_push"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_disable"

    const-string/jumbo v2, "mini_smsbtn_disable"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable"

    const-string/jumbo v2, "mini_btn_disable"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "login_disable"

    const-string/jumbo v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "finger_print_info"

    const-string/jumbo v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "goto"

    const-string/jumbo v2, "mini_arrow"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "msp_info"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "back"

    const-string/jumbo v2, "mini_back"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "mini_fullscreen_switch"

    const-string/jumbo v2, "mini_fullscreen_switch_selector"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "hui"

    const-string/jumbo v2, "mini_channel_hui"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "gou"

    const-string/jumbo v2, "mini_channel_gou"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "red_dot"

    const-string/jumbo v2, "mini_red_dot"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "info"

    const-string/jumbo v2, "mini_info_icon"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "icon_camera"

    const-string/jumbo v2, "mini_icon_camera"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "inputGroup"

    const-string/jumbo v2, "mini_input_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "help"

    const-string/jumbo v2, "mini_help_icon"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "help2"

    const-string/jumbo v2, "mini_help_icon"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "three_point"

    const-string/jumbo v2, "mini_three_point"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "unfold"

    const-string/jumbo v2, "mini_arrow_unfold"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "success"

    const-string/jumbo v2, "msp_success"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "setpwd_logo"

    const-string/jumbo v2, "mini_setpwd_logo"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "insurance"

    const-string/jumbo v2, "mini_insurance"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "default_head"

    const-string/jumbo v2, "mini_default_head"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "default_bank_icon"

    const-string/jumbo v2, "mini_bank_icon"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "bindcard"

    const-string/jumbo v2, "mini_bindcard"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "label_tip"

    const-string/jumbo v2, "mini_label_tip"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "orange_bg"

    const-string/jumbo v2, "mini_orange_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "small_close"

    const-string/jumbo v2, "mini_small_close"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "promotion_close"

    const-string/jumbo v2, "mini_promotion_close"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "promotion_close_pressed"

    const-string/jumbo v2, "mini_promotion_close_pressed"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "promotion_bg"

    const-string/jumbo v2, "mini_promotion_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "promotion_up_bg"

    const-string/jumbo v2, "mini_promotion_up_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "promotion_down_bg"

    const-string/jumbo v2, "mini_promotion_down_bg"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "busy"

    const-string/jumbo v2, "mini_channel_busy"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "taobao_disable"

    const-string/jumbo v2, "mini_taobao_disable"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "taobao_hover"

    const-string/jumbo v2, "mini_taobao_hover"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "taobao_normal"

    const-string/jumbo v2, "mini_taobao_normal"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "taobao_hover_second"

    const-string/jumbo v2, "mini_taobao_hover_second"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "taobao_normal_second"

    const-string/jumbo v2, "mini_taobao_normal_second"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_icon"

    const-string/jumbo v2, "alipay_icon"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_head_img"

    const-string/jumbo v2, "mini_default_head"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "bank_logo"

    const-string/jumbo v2, "mini_bank_icon"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "change"

    const-string/jumbo v2, "mini_change"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "pwd_tips"

    const-string/jumbo v2, "mini_pwd_tips"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "check_channal"

    const-string/jumbo v2, "mini_check_channal"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "uncheck_channal"

    const-string/jumbo v2, "mini_uncheck_channal"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "black_back"

    const-string/jumbo v2, "mini_black_back"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "red_people"

    const-string/jumbo v2, "mini_red_people"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "minpwd_red"

    const-string/jumbo v2, "mini_minpwd_red"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "check_red"

    const-string/jumbo v2, "mini_check_red"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "check_selected_red"

    const-string/jumbo v2, "mini_check_selected_red"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "help_red"

    const-string/jumbo v2, "mini_help_red"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "btn_normal_orange"

    const-string/jumbo v2, "mini_btn_normal_orange"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "btn_hover_orange"

    const-string/jumbo v2, "mini_btn_hover_orange"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "btn_normal_red"

    const-string/jumbo v2, "mini_btn_normal_red"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "btn_hover_red"

    const-string/jumbo v2, "mini_btn_hover_red"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "btn_disable_red"

    const-string/jumbo v2, "mini_btn_disable_red"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "guide_checkbox_red"

    const-string/jumbo v2, "mini_guide_checkbox_red"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "guide_setting_red"

    const-string/jumbo v2, "mini_guide_setting_red"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "guide_iknow"

    const-string/jumbo v2, "mini_guide_iknow"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "finger"

    const-string/jumbo v2, "mini_finger"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "guide_contract"

    const-string/jumbo v2, "mini_guide_contract"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "guide_contract_nopwd"

    const-string/jumbo v2, "mini_guide_contract_nopwd"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "authorize_logo"

    const-string/jumbo v2, "mini_authorize_logo"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "bracelet"

    const-string/jumbo v2, "mini_bracelet"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "drawable"

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/android/app/util/ResUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "alipay_icon"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "msp_text_color_gray"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v2, v0, [I

    const-string/jumbo v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget v0, v2, v1

    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->f(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;I)I
    .locals 2

    const/4 v0, -0x2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    int-to-float v0, p2

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->f(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-lez v1, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;[F)I
    .locals 3

    const/4 v0, -0x2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->f(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-lez v1, :cond_3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 10

    const/4 v3, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    array-length v0, p0

    if-lez v0, :cond_2

    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    new-array v5, v3, [I

    move v1, v2

    move v3, v4

    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_1

    aget-object v6, p0, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    packed-switch v1, :pswitch_data_0

    :goto_1
    move v3, v2

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v2

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v2

    move v3, v2

    goto :goto_2

    :pswitch_1
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v4

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    new-array v3, v8, [I

    fill-array-data v3, :array_2

    aput-object v3, v0, v8

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v8

    move v3, v2

    goto :goto_2

    :pswitch_2
    new-array v3, v4, [I

    const v7, -0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v9

    invoke-static {v6}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v9

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v1

    :goto_3
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x101009e
        -0x10100a7
        -0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v0, v2

    int-to-float v2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v10, p2

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v9, v0, v2, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v0, -0xbdbdbe

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 v3, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    if-le v3, v2, :cond_0

    move v0, v2

    :goto_0
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    int-to-float v1, v3

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v7, v1, v2, v0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v7, v4, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v5

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public static a(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v0, "mini_margin_6"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v2, 0x140

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-static {p1, p0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 10

    const v9, -0x101009e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    array-length v0, p1

    if-lez v0, :cond_8

    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move v0, v1

    move v2, v3

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_6

    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    const-string/jumbo v6, "check_channal"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "uncheck_channal"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "check_red"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "check_selected_red"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v0, v4

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v6, "check_channal"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "uncheck_channal"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    invoke-static {p0, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_2
    const-string/jumbo v6, "check_red"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    invoke-static {p0, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v6, v3, [I

    aput v9, v6, v1

    invoke-static {p0, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "uncheck_channal"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    invoke-static {p0, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v6, v3, [I

    aput v9, v6, v1

    invoke-static {p0, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    const-string/jumbo v6, "check_selected_red"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-array v6, v8, [I

    fill-array-data v6, :array_3

    invoke-static {p0, v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    move-object v0, v4

    goto :goto_1

    :cond_7
    move-object v0, v5

    goto :goto_1

    :cond_8
    move-object v0, v4

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_3
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data
.end method

.method public static a(Landroid/app/Activity;ILcom/alipay/android/app/ui/quickpay/window/IUIForm;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "mini_keepbackground_layout"

    move-object v2, v0

    move-object v0, v1

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {p0, v1}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "mini_keeppre_layout"

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "mini_layout_parent"

    const-string/jumbo v0, "mini_layout"

    goto :goto_0

    :cond_4
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IFormShower;ZLcom/alipay/android/app/ui/quickpay/window/IUIForm;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    :cond_0
    if-nez p3, :cond_1

    const/16 v0, 0x8

    invoke-static {p0, v0, p4}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;ILcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "\u786e\u5b9a\u9000\u51fa\u652f\u4ed8\uff1f"

    :goto_0
    const-string/jumbo v0, "msp_error_title_default"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Exit:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v0, v3}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->o()V

    const-string/jumbo v3, "\u662f"

    new-array v4, v6, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    aput-object v0, v4, v8

    const-string/jumbo v5, "\u5426"

    new-array v6, v6, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v7, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->LocalDismiss:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v0, v7}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    aput-object v0, v6, v8

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    return-void

    :cond_2
    move-object v2, p1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/app/Dialog;

    const-string/jumbo v1, "mini_safty_dialog"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->h(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string/jumbo v2, "mini_safty_code_info_layout"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "iKnow"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/util/e;

    invoke-direct {v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/e;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;[Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;[Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-direct {v1, p3, p1}, Lcom/alipay/android/app/ui/quickpay/util/g;-><init>(Lcom/alipay/android/app/ui/quickpay/window/IUIForm;[Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)V

    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "msp_mini_choose_identitify"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    const-string/jumbo v1, "msp_mini_read_protocal_title"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/util/i;

    invoke-direct {v2, p1, p0, p2}, Lcom/alipay/android/app/ui/quickpay/util/i;-><init>([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;Ljava/lang/String;)V
    .locals 9

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "msp_mini_choose_identitify"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/h;

    move-object v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/util/h;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IUIForm;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, p2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static a(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZZ)V
    .locals 9

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZZZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p2, v2, v1

    aput p3, v2, v0

    new-instance v4, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;

    invoke-direct {v4}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;-><init>()V

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a([I)V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "corner"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "("

    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v3, ")"

    invoke-virtual {p4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a(I)V

    invoke-virtual {v4, p6}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a(Z)V

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->Corner:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "net:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    if-eqz v0, :cond_5

    if-eqz p8, :cond_5

    const-string/jumbo v0, "net:"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a()Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    move-result-object v0

    if-eqz p7, :cond_4

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Background:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    :goto_2
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/content/Context;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string/jumbo v2, "round"

    invoke-virtual {p4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->Round:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    invoke-virtual {v4, v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Image:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a()Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    move-result-object v0

    if-eqz p7, :cond_6

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Background:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Image:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    goto :goto_4
.end method

.method public static a(Landroid/widget/EditText;)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/j;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/util/j;-><init>(Landroid/widget/EditText;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x3

    const-string/jumbo v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x11

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;I)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;I)I
    .locals 3

    const/4 v0, -0x2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    int-to-float v0, p2

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->f(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v1, v2

    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_3
    if-eqz v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "local"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public static varargs b(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    array-length v0, p1

    if-lez v0, :cond_9

    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move v0, v1

    move v2, v3

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_7

    aget-object v6, p1, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v2, "normal"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v6}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v2, v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "hover"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-ne v0, v3, :cond_4

    :cond_3
    new-array v2, v8, [I

    fill-array-data v2, :array_1

    invoke-static {p0, v6}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v8, [I

    fill-array-data v2, :array_2

    invoke-static {p0, v6}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v2, v1

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "disable"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-ne v0, v8, :cond_6

    :cond_5
    new-array v2, v3, [I

    const v7, -0x101009e

    aput v7, v2, v1

    invoke-static {p0, v6}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_6
    move v2, v1

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    move-object v0, v4

    :goto_2
    return-object v0

    :cond_8
    move-object v0, v5

    goto :goto_2

    :cond_9
    move-object v0, v4

    goto :goto_2

    nop

    :array_0
    .array-data 4
        0x101009e
        -0x10100a7
        -0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    new-instance v1, Landroid/app/Dialog;

    const-string/jumbo v0, "mini_safty_dialog"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->h(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v2, "mini_safty_code_info_layout"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v0, "iKnow"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v0, "msp_mini_code_title"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v4, "mini_expiry_date_title"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v0, "msp_mini_code_info"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v4, "mini_expiry_date_content"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v0, "msp_mini_code_drawable"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v4, "mini_expiry_date_card"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/f;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/f;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static b(Landroid/widget/EditText;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)F
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static c(Ljava/lang/String;)F
    .locals 2

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "medium"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public static d(Landroid/app/Activity;)I
    .locals 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    :goto_0
    div-float v0, v1, v0

    const v2, 0x3f19999a    # 0.6f

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f600000    # 0.875f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a:I

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    sub-float v2, v0, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    sget v2, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a:I

    int-to-float v2, v2

    sub-float/2addr v0, v5

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v5

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    float-to-int v0, v1

    sput v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a:I

    :cond_0
    sget v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a:I

    return v0

    :cond_1
    const/high16 v0, 0x43f00000    # 480.0f

    sub-float v0, v1, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    const/high16 v2, 0x438f0000    # 286.0f

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a:I

    goto :goto_1

    :cond_2
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)[F
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v4, 0x4

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    :goto_1
    if-ge v1, v4, :cond_0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    aput v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static e(Landroid/app/Activity;)I
    .locals 4

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->d(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Landroid/app/Activity;)F

    move-result v1

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v0, v0, 0x6

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "mini_win_default_height"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v2, v0, v1

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->f(Landroid/app/Activity;)I

    move-result v3

    if-le v2, v3, :cond_0

    add-int/2addr v0, v1

    sput v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    :cond_0
    sget v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    return v0
.end method

.method public static e(Ljava/lang/String;)[F
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v4, 0x4

    new-array v0, v4, [F

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    :goto_1
    if-ge v1, v4, :cond_0

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    aput v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)F
    .locals 2

    const-string/jumbo v0, "%"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private static f(Landroid/app/Activity;)I
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    sget v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "mini_win_default_height"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    sub-float v2, v1, v4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    sget v2, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    int-to-float v2, v2

    sub-float/2addr v1, v4

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    float-to-int v0, v0

    sput v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    :cond_0
    sget v0, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    return v0
.end method
