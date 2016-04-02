.class public final enum Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Block:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Button:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Cell:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum CheckBox:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Component:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum FingerPwd:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Icon:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Img:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum IndexList:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Input:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Label:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Line:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Link:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Password:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Radio:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum RadioGroup:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum RichText:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum RtLabel:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Sbmit:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum SimplePassword:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Span:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Switch:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum Title:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field public static final enum WebView:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

.field private static final synthetic b:[Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;


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

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Label"

    const-string/jumbo v2, "label"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Label:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "RichText"

    const-string/jumbo v2, "richtext"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->RichText:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Input"

    const-string/jumbo v2, "input"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Input:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Password"

    const-string/jumbo v2, "password"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Password:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "SimplePassword"

    const-string/jumbo v2, "spassword"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->SimplePassword:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "CheckBox"

    const/4 v2, 0x5

    const-string/jumbo v3, "checkbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->CheckBox:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Radio"

    const/4 v2, 0x6

    const-string/jumbo v3, "radio"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Radio:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Span"

    const/4 v2, 0x7

    const-string/jumbo v3, "span"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Span:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Link"

    const/16 v2, 0x8

    const-string/jumbo v3, "link"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Link:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Icon"

    const/16 v2, 0x9

    const-string/jumbo v3, "icon"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Icon:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Img"

    const/16 v2, 0xa

    const-string/jumbo v3, "img"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Img:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Button"

    const/16 v2, 0xb

    const-string/jumbo v3, "button"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Button:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Sbmit"

    const/16 v2, 0xc

    const-string/jumbo v3, "submit"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Sbmit:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Component"

    const/16 v2, 0xd

    const-string/jumbo v3, "component"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Component:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "WebView"

    const/16 v2, 0xe

    const-string/jumbo v3, "web"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->WebView:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Line"

    const/16 v2, 0xf

    const-string/jumbo v3, "line"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Line:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Title"

    const/16 v2, 0x10

    const-string/jumbo v3, "title"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Title:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Block"

    const/16 v2, 0x11

    const-string/jumbo v3, "block"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Block:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Cell"

    const/16 v2, 0x12

    const-string/jumbo v3, "cell"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Cell:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "IndexList"

    const/16 v2, 0x13

    const-string/jumbo v3, "indexlist"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->IndexList:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "Switch"

    const/16 v2, 0x14

    const-string/jumbo v3, "switch"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Switch:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "RadioGroup"

    const/16 v2, 0x15

    const-string/jumbo v3, "radiogroup"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->RadioGroup:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "RtLabel"

    const/16 v2, 0x16

    const-string/jumbo v3, "rtlabel"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->RtLabel:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const-string/jumbo v1, "FingerPwd"

    const/16 v2, 0x17

    const-string/jumbo v3, "fingerpwd"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->FingerPwd:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Label:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->RichText:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Input:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Password:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->SimplePassword:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->CheckBox:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Radio:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Span:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Link:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Icon:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Img:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Button:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Sbmit:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Component:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->WebView:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Line:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Title:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Block:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Cell:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->IndexList:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Switch:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->RadioGroup:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->RtLabel:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->FingerPwd:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->b:[Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

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

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;
    .locals 5

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->values()[Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->a:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;
    .locals 1

    const-class v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->b:[Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->a:Ljava/lang/String;

    return-object v0
.end method
