.class final Lcom/alipay/mobile/security/gesture/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/component/n;


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/i;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/alipay/mobile/security/gesture/ui/i;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->values()[Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->CHECKERROROVER:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ERROROVERCLICKED:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->FORGETPASSWORD:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->PATTERNISRIGHT:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->SWITCHACCOUNT:Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/alipay/mobile/security/gesture/ui/i;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/i;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/security/gesture/component/AlipayPattern$CheckViewEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/i;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/i;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/i;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->k:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setHasGestureView(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/i;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/i;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/security/gesture/ui/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/a/a;->a()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/i;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->k:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setHasGestureView(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/i;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "checkGestureView"

    const-string/jumbo v3, "forgetGesture"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/i;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/i;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000169"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
