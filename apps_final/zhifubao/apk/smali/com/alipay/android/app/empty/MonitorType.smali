.class public final enum Lcom/alipay/android/app/empty/MonitorType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/empty/MonitorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEVICE:Lcom/alipay/android/app/empty/MonitorType;

.field public static final enum EXCEPTION:Lcom/alipay/android/app/empty/MonitorType;

.field public static final enum EXECUTE:Lcom/alipay/android/app/empty/MonitorType;

.field public static final enum LBS:Lcom/alipay/android/app/empty/MonitorType;

.field public static final enum NETWROK:Lcom/alipay/android/app/empty/MonitorType;

.field public static final enum PROTOCOL:Lcom/alipay/android/app/empty/MonitorType;

.field public static final enum PUSH:Lcom/alipay/android/app/empty/MonitorType;

.field public static final enum THREADSYNC:Lcom/alipay/android/app/empty/MonitorType;

.field public static final enum UI:Lcom/alipay/android/app/empty/MonitorType;

.field public static final enum UNKNOWN:Lcom/alipay/android/app/empty/MonitorType;

.field private static final synthetic c:[Lcom/alipay/android/app/empty/MonitorType;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/alipay/android/app/empty/MonitorType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, -0x1

    const-string/jumbo v3, "UNKNOWN"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/android/app/empty/MonitorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->UNKNOWN:Lcom/alipay/android/app/empty/MonitorType;

    new-instance v0, Lcom/alipay/android/app/empty/MonitorType;

    const-string/jumbo v1, "NETWROK"

    const-string/jumbo v2, "NETWROK"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/alipay/android/app/empty/MonitorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->NETWROK:Lcom/alipay/android/app/empty/MonitorType;

    new-instance v0, Lcom/alipay/android/app/empty/MonitorType;

    const-string/jumbo v1, "PROTOCOL"

    const-string/jumbo v2, "PROTOCOL"

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/alipay/android/app/empty/MonitorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->PROTOCOL:Lcom/alipay/android/app/empty/MonitorType;

    new-instance v0, Lcom/alipay/android/app/empty/MonitorType;

    const-string/jumbo v1, "UI"

    const-string/jumbo v2, "UI"

    invoke-direct {v0, v1, v8, v7, v2}, Lcom/alipay/android/app/empty/MonitorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->UI:Lcom/alipay/android/app/empty/MonitorType;

    new-instance v0, Lcom/alipay/android/app/empty/MonitorType;

    const-string/jumbo v1, "EXECUTE"

    const-string/jumbo v2, "EXECUTE"

    invoke-direct {v0, v1, v9, v8, v2}, Lcom/alipay/android/app/empty/MonitorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->EXECUTE:Lcom/alipay/android/app/empty/MonitorType;

    new-instance v0, Lcom/alipay/android/app/empty/MonitorType;

    const-string/jumbo v1, "THREADSYNC"

    const/4 v2, 0x5

    const-string/jumbo v3, "THREADSYNC"

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/alipay/android/app/empty/MonitorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->THREADSYNC:Lcom/alipay/android/app/empty/MonitorType;

    new-instance v0, Lcom/alipay/android/app/empty/MonitorType;

    const-string/jumbo v1, "DEVICE"

    const/4 v2, 0x6

    const/4 v3, 0x5

    const-string/jumbo v4, "DEVICE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/empty/MonitorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->DEVICE:Lcom/alipay/android/app/empty/MonitorType;

    new-instance v0, Lcom/alipay/android/app/empty/MonitorType;

    const-string/jumbo v1, "PUSH"

    const/4 v2, 0x7

    const/4 v3, 0x6

    const-string/jumbo v4, "PUSH"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/empty/MonitorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->PUSH:Lcom/alipay/android/app/empty/MonitorType;

    new-instance v0, Lcom/alipay/android/app/empty/MonitorType;

    const-string/jumbo v1, "LBS"

    const/16 v2, 0x8

    const/4 v3, 0x7

    const-string/jumbo v4, "LBS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/empty/MonitorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->LBS:Lcom/alipay/android/app/empty/MonitorType;

    new-instance v0, Lcom/alipay/android/app/empty/MonitorType;

    const-string/jumbo v1, "EXCEPTION"

    const/16 v2, 0x9

    const/16 v3, 0x8

    const-string/jumbo v4, "EXCEPTION"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/empty/MonitorType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->EXCEPTION:Lcom/alipay/android/app/empty/MonitorType;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alipay/android/app/empty/MonitorType;

    sget-object v1, Lcom/alipay/android/app/empty/MonitorType;->UNKNOWN:Lcom/alipay/android/app/empty/MonitorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/empty/MonitorType;->NETWROK:Lcom/alipay/android/app/empty/MonitorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/empty/MonitorType;->PROTOCOL:Lcom/alipay/android/app/empty/MonitorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/empty/MonitorType;->UI:Lcom/alipay/android/app/empty/MonitorType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/android/app/empty/MonitorType;->EXECUTE:Lcom/alipay/android/app/empty/MonitorType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/empty/MonitorType;->THREADSYNC:Lcom/alipay/android/app/empty/MonitorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/empty/MonitorType;->DEVICE:Lcom/alipay/android/app/empty/MonitorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/empty/MonitorType;->PUSH:Lcom/alipay/android/app/empty/MonitorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/empty/MonitorType;->LBS:Lcom/alipay/android/app/empty/MonitorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/app/empty/MonitorType;->EXCEPTION:Lcom/alipay/android/app/empty/MonitorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/empty/MonitorType;->c:[Lcom/alipay/android/app/empty/MonitorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/android/app/empty/MonitorType;->a:I

    iput-object p4, p0, Lcom/alipay/android/app/empty/MonitorType;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/alipay/android/app/empty/MonitorType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->UNKNOWN:Lcom/alipay/android/app/empty/MonitorType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->NETWROK:Lcom/alipay/android/app/empty/MonitorType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->PROTOCOL:Lcom/alipay/android/app/empty/MonitorType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->UI:Lcom/alipay/android/app/empty/MonitorType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->EXECUTE:Lcom/alipay/android/app/empty/MonitorType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->THREADSYNC:Lcom/alipay/android/app/empty/MonitorType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->DEVICE:Lcom/alipay/android/app/empty/MonitorType;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->PUSH:Lcom/alipay/android/app/empty/MonitorType;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->LBS:Lcom/alipay/android/app/empty/MonitorType;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->EXCEPTION:Lcom/alipay/android/app/empty/MonitorType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/empty/MonitorType;
    .locals 1

    const-class v0, Lcom/alipay/android/app/empty/MonitorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/empty/MonitorType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/empty/MonitorType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/empty/MonitorType;->c:[Lcom/alipay/android/app/empty/MonitorType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/empty/MonitorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/empty/MonitorType;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/empty/MonitorType;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/empty/MonitorType;->b:Ljava/lang/String;

    return-object v0
.end method
