.class public final enum Lcom/alipay/android/app/display/event/EventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/display/event/EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AllowBack:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Back:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Blur:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Cancel:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Change:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum ClearInvalid:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Click:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Continue:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum CountdownFinished:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum CountdownTick:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Dismiss:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Done:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Event:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Exit:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Focus:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum FocusChange:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum FocusClosed:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Loaded:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum LongClick:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum NetRedo:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Prev:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Scroll:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Submit:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Toast:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum Update:Lcom/alipay/android/app/display/event/EventType;

.field public static final enum WinDismiss:Lcom/alipay/android/app/display/event/EventType;

.field private static final synthetic b:[Lcom/alipay/android/app/display/event/EventType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Event"

    const-string/jumbo v2, "event"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Event:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Click"

    const-string/jumbo v2, "onclick"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Click:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "LongClick"

    const-string/jumbo v2, "onlongclick"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->LongClick:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Focus"

    const-string/jumbo v2, "onfocus"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Focus:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "FocusClosed"

    const-string/jumbo v2, "onFocusClosed"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->FocusClosed:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "FocusChange"

    const/4 v2, 0x5

    const-string/jumbo v3, "onfocuschange"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->FocusChange:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Blur"

    const/4 v2, 0x6

    const-string/jumbo v3, "onblue"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Blur:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Change"

    const/4 v2, 0x7

    const-string/jumbo v3, "onchange"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Change:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Scroll"

    const/16 v2, 0x8

    const-string/jumbo v3, "onscroll"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Scroll:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Back"

    const/16 v2, 0x9

    const-string/jumbo v3, "onBack"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Back:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Submit"

    const/16 v2, 0xa

    const-string/jumbo v3, "onsubmit"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Submit:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Loaded"

    const/16 v2, 0xb

    const-string/jumbo v3, "onLoad"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Loaded:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Dismiss"

    const/16 v2, 0xc

    const-string/jumbo v3, "onDismiss"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Dismiss:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "CountdownFinished"

    const/16 v2, 0xd

    const-string/jumbo v3, "onCountdownFinished"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->CountdownFinished:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "CountdownTick"

    const/16 v2, 0xe

    const-string/jumbo v3, "onCountdownTick"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->CountdownTick:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "NetRedo"

    const/16 v2, 0xf

    const-string/jumbo v3, "_client_local_function_net_redo"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->NetRedo:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Update"

    const/16 v2, 0x10

    const-string/jumbo v3, "_client_local_function_update"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Update:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Cancel"

    const/16 v2, 0x11

    const-string/jumbo v3, "_client_local_function_cancel"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Cancel:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Exit"

    const/16 v2, 0x12

    const-string/jumbo v3, "_client_local_function_exit"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Exit:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Continue"

    const/16 v2, 0x13

    const-string/jumbo v3, "_client_local_function_continue"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Continue:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Prev"

    const/16 v2, 0x14

    const-string/jumbo v3, "_client_local_function_pre"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Prev:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "ClearInvalid"

    const/16 v2, 0x15

    const-string/jumbo v3, "clear_invalid"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->ClearInvalid:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "WinDismiss"

    const/16 v2, 0x16

    const-string/jumbo v3, "_client_local_function_dismiss"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->WinDismiss:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "AllowBack"

    const/16 v2, 0x17

    const-string/jumbo v3, "allowback"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->AllowBack:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Toast"

    const/16 v2, 0x18

    const-string/jumbo v3, "toast_message"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Toast:Lcom/alipay/android/app/display/event/EventType;

    new-instance v0, Lcom/alipay/android/app/display/event/EventType;

    const-string/jumbo v1, "Done"

    const/16 v2, 0x19

    const-string/jumbo v3, "onDone"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/display/event/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->Done:Lcom/alipay/android/app/display/event/EventType;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/alipay/android/app/display/event/EventType;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Event:Lcom/alipay/android/app/display/event/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Click:Lcom/alipay/android/app/display/event/EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->LongClick:Lcom/alipay/android/app/display/event/EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Focus:Lcom/alipay/android/app/display/event/EventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->FocusClosed:Lcom/alipay/android/app/display/event/EventType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->FocusChange:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Blur:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Change:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Scroll:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Back:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Submit:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Loaded:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Dismiss:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->CountdownFinished:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->CountdownTick:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->NetRedo:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Update:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Cancel:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Exit:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Continue:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Prev:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->ClearInvalid:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->WinDismiss:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->AllowBack:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Toast:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/alipay/android/app/display/event/EventType;->Done:Lcom/alipay/android/app/display/event/EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/display/event/EventType;->b:[Lcom/alipay/android/app/display/event/EventType;

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

    iput-object p3, p0, Lcom/alipay/android/app/display/event/EventType;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/app/display/event/EventType;
    .locals 5

    invoke-static {}, Lcom/alipay/android/app/display/event/EventType;->values()[Lcom/alipay/android/app/display/event/EventType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/alipay/android/app/display/event/EventType;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/display/event/EventType;
    .locals 1

    const-class v0, Lcom/alipay/android/app/display/event/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/event/EventType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/display/event/EventType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/display/event/EventType;->b:[Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/display/event/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/display/event/EventType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/event/EventType;->a:Ljava/lang/String;

    return-object v0
.end method
