.class public final enum Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;
.super Ljava/lang/Enum;


# static fields
.field public static final enum Shift_down:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

.field public static final enum Shift_up:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

.field private static final synthetic a:[Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    const-string/jumbo v1, "Shift_up"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_up:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    const-string/jumbo v1, "Shift_down"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_down:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    sget-object v1, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_up:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->Shift_down:Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->a:[Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;
    .locals 1

    const-class v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->a:[Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    invoke-virtual {v0}, [Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/commonui/widget/keyboard/APKeyboard$Keyboard_Shift_State;

    return-object v0
.end method
