.class final Lcom/alipay/mobile/security/gesture/ui/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/component/t;


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bf;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/alipay/mobile/security/gesture/ui/bf;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;->values()[Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;->BACKCLICK:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;->SETSUCCESS:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;->SKIPCLICK:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/alipay/mobile/security/gesture/ui/bf;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/bf;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bf;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bf;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->onBackPressed()V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bf;->a:Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;

    invoke-static {v0, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureSettingActivity;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
