.class public final enum Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Bnvb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Dismiss:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum FullPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum OpenUrl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum OpenWeb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ReadPhoneNum:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ReadSms:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Redo:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ReturnData:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ScanCard:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum ScanFace:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field public static final enum WapPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field private static final synthetic c:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Submit"

    const-string/jumbo v2, "submit"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "None"

    const-string/jumbo v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Redo"

    const-string/jumbo v2, "redo"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Redo:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Back"

    const-string/jumbo v2, "back"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Bncb"

    const-string/jumbo v2, "bncb"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Bnvb"

    const/4 v2, 0x5

    const-string/jumbo v3, "bnvb"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bnvb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "OpenUrl"

    const/4 v2, 0x6

    const-string/jumbo v3, "openurl"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenUrl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Dismiss"

    const/4 v2, 0x7

    const-string/jumbo v3, "dismiss"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Dismiss:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Exit"

    const/16 v2, 0x8

    const-string/jumbo v3, "exit"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ReturnData"

    const/16 v2, 0x9

    const-string/jumbo v3, "returndata"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReturnData:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Scan"

    const/16 v2, 0xa

    const-string/jumbo v3, "scan"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Auth"

    const/16 v2, 0xb

    const-string/jumbo v3, "auth"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ScanCard"

    const/16 v2, 0xc

    const-string/jumbo v3, "scancard"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanCard:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ReadSms"

    const/16 v2, 0xd

    const-string/jumbo v3, "readsms"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadSms:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "OpenWeb"

    const/16 v2, 0xe

    const-string/jumbo v3, "openweb"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenWeb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "WapPay"

    const/16 v2, 0xf

    const-string/jumbo v3, "wappay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->WapPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ScanFace"

    const/16 v2, 0x10

    const-string/jumbo v3, "scanface"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanFace:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "FullPay"

    const/16 v2, 0x11

    const-string/jumbo v3, "fullpay"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->FullPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "ReadPhoneNum"

    const/16 v2, 0x12

    const-string/jumbo v3, "readphonenum"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadPhoneNum:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const-string/jumbo v1, "Operation"

    const/16 v2, 0x13

    const-string/jumbo v3, "operation"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->None:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Redo:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bncb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bnvb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenUrl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Dismiss:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReturnData:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanCard:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadSms:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->OpenWeb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->WapPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ScanFace:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->FullPay:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ReadPhoneNum:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->c:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
    .locals 1

    const-class v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->c:[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v0}, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a:[Ljava/lang/String;

    return-void
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->a:[Ljava/lang/String;

    return-object v0
.end method
