.class public Lcom/alipay/android/app/template/util/TemplateLayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "TemplateLayoutParams.java"

# interfaces
.implements Lcom/alipay/android/app/template/TScriptable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_UNITSPEC:I

.field private static b:Ljava/lang/String;

.field private static synthetic e:[I


# instance fields
.field private a:Z

.field public backgroundHSize:I

.field public backgroundWSize:I

.field public bgColors:[Ljava/lang/String;

.field public bgImages:[Ljava/lang/String;

.field public blurRadius:I

.field public borderColor:Ljava/lang/String;

.field public borderRadius:I

.field public borders:[I

.field private c:Lcom/alipay/android/app/template/anim/ITemplateAnimator;

.field public classes:[Ljava/lang/String;

.field public contentAlign:Lcom/alipay/android/app/template/view/AlignType;

.field public contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

.field public contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

.field public contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;

.field public cssText:Ljava/lang/String;

.field private d:Lcom/alipay/android/app/template/view/widget/TElement;

.field public defaultChecked:Z

.field public defaultValue:Ljava/lang/String;

.field public displayStr:Ljava/lang/String;

.field public failureValue:Ljava/lang/String;

.field public fontFamily:Ljava/lang/String;

.field public fontSizeAdjust:Z

.field public fontWeight:Ljava/lang/String;

.field public heightStr:I

.field public hint:Ljava/lang/String;

.field public href:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isDisabled:Z

.field public isFocus:Z

.field public isSingleLine:Z

.field public keyboard:Ljava/lang/String;

.field public layoutType:Lcom/alipay/android/app/template/view/LayoutType;

.field public lineHeight:I

.field public mFontSizeAdjust:Z

.field public mNeedAnim:Z

.field public mParentWebkitBox:Z

.field public mTransition:I

.field public margins:[I

.field public markableProps:Ljava/util/HashMap;

.field public maxHeightStr:I

.field public maxLines:I

.field public maxWidthStr:I

.field public minHeightStr:I

.field public minWidthStr:I

.field public name:Ljava/lang/String;

.field public needWrap:Z

.field public onClickScript:Ljava/lang/String;

.field public onInputScript:Ljava/lang/String;

.field public onKeyDownScript:Ljava/lang/String;

.field public onKeyUpScript:Ljava/lang/String;

.field public onLoadScript:Ljava/lang/String;

.field public onLongClickScript:Ljava/lang/String;

.field public onMouseDownScript:Ljava/lang/String;

.field public onMouseMoveScript:Ljava/lang/String;

.field public onMouseOutScript:Ljava/lang/String;

.field public onMouseOverScript:Ljava/lang/String;

.field public onMouseUpScript:Ljava/lang/String;

.field public opacity:F

.field public orientation:I

.field public paddings:[I

.field public parentLayoutType:Lcom/alipay/android/app/template/view/LayoutType;

.field public positionType:Lcom/alipay/android/app/template/view/PositionType;

.field public positions:[I

.field public positionsInt:[I

.field public scaleType:Lcom/alipay/android/app/template/view/TScaleType;

.field public selected:Z

.field public src:Ljava/lang/String;

.field public tagName:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public textColors:[Ljava/lang/String;

.field public textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

.field public textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

.field public textSize:I

.field public value:Ljava/lang/String;

.field public view:Landroid/view/View;

.field public viewType:Lcom/alipay/android/app/template/view/ViewType;

.field public visibleStr:Ljava/lang/String;

.field public weight:F

.field public whiteSpace:Ljava/lang/String;

.field public widthStr:I

.field public zIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    const/high16 v1, -0x40000000    # -2.0f

    .line 90
    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->makeUnitSpec(II)I

    move-result v0

    sput v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    .line 165
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->b:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 217
    const/4 v0, -0x2

    invoke-direct {p0, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 40
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a:Z

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    .line 48
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultChecked:Z

    .line 52
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    .line 54
    new-array v0, v6, [I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v3

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v7

    const/4 v1, 0x2

    .line 55
    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    .line 57
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderColor:Ljava/lang/String;

    .line 61
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    .line 63
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    .line 65
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    .line 67
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    .line 69
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->backgroundWSize:I

    .line 70
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->backgroundHSize:I

    .line 72
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    .line 74
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    .line 76
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxHeightStr:I

    .line 78
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxWidthStr:I

    .line 80
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->minHeightStr:I

    .line 82
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->minWidthStr:I

    .line 84
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mFontSizeAdjust:Z

    .line 93
    new-array v0, v6, [I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v3

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v7

    const/4 v1, 0x2

    .line 94
    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    .line 96
    new-array v0, v6, [I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v3

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v7

    const/4 v1, 0x2

    .line 97
    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    .line 99
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    .line 101
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

    .line 103
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

    .line 105
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    .line 107
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 109
    iput v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    .line 111
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 113
    const-string/jumbo v0, "normal"

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    .line 119
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    .line 121
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onClickScript:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLoadScript:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseDownScript:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseMoveScript:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOutScript:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOverScript:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseUpScript:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyDownScript:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyUpScript:Ljava/lang/String;

    .line 143
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    .line 145
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontWeight:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontFamily:Ljava/lang/String;

    .line 149
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->hint:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->href:Ljava/lang/String;

    .line 153
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    .line 163
    sget-object v0, Lcom/alipay/android/app/template/view/TScaleType;->ScaleToFill:Lcom/alipay/android/app/template/view/TScaleType;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->scaleType:Lcom/alipay/android/app/template/view/TScaleType;

    .line 167
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->name:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    .line 171
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->selected:Z

    .line 173
    sget-object v0, Lcom/alipay/android/app/template/view/PositionType;->staticc:Lcom/alipay/android/app/template/view/PositionType;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionType:Lcom/alipay/android/app/template/view/PositionType;

    .line 175
    new-array v0, v6, [I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v3

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v7

    const/4 v1, 0x2

    .line 176
    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    .line 178
    iput v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->lineHeight:I

    .line 180
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    .line 182
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    .line 184
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mParentWebkitBox:Z

    .line 186
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isSingleLine:Z

    .line 188
    iput v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mTransition:I

    .line 190
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mNeedAnim:Z

    .line 192
    iput v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->orientation:I

    .line 194
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->c:Lcom/alipay/android/app/template/anim/ITemplateAnimator;

    .line 196
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 198
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    .line 200
    iput v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->zIndex:I

    .line 204
    iput v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->blurRadius:I

    .line 206
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->cssText:Ljava/lang/String;

    .line 208
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontSizeAdjust:Z

    .line 210
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->keyboard:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    .line 214
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isFocus:Z

    .line 218
    invoke-static {}, Lcom/alipay/android/app/template/anim/TemplateAnimatorFactory;->getTemplateIcecreamAnimator()Lcom/alipay/android/app/template/anim/ITemplateAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->c:Lcom/alipay/android/app/template/anim/ITemplateAnimator;

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 222
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a:Z

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    .line 48
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultChecked:Z

    .line 52
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    .line 54
    new-array v0, v5, [I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v3

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v7

    const/4 v1, 0x2

    .line 55
    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    .line 57
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderColor:Ljava/lang/String;

    .line 61
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    .line 63
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    .line 65
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    .line 67
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    .line 69
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->backgroundWSize:I

    .line 70
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->backgroundHSize:I

    .line 72
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    .line 74
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    .line 76
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxHeightStr:I

    .line 78
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxWidthStr:I

    .line 80
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->minHeightStr:I

    .line 82
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->minWidthStr:I

    .line 84
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mFontSizeAdjust:Z

    .line 93
    new-array v0, v5, [I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v3

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v7

    const/4 v1, 0x2

    .line 94
    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    .line 96
    new-array v0, v5, [I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v3

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v7

    const/4 v1, 0x2

    .line 97
    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    .line 99
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    .line 101
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

    .line 103
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

    .line 105
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    .line 107
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 109
    iput v6, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    .line 111
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 113
    const-string/jumbo v0, "normal"

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    .line 119
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    .line 121
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onClickScript:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLoadScript:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseDownScript:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseMoveScript:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOutScript:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOverScript:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseUpScript:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    .line 139
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyDownScript:Ljava/lang/String;

    .line 141
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyUpScript:Ljava/lang/String;

    .line 143
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    .line 145
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontWeight:Ljava/lang/String;

    .line 147
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontFamily:Ljava/lang/String;

    .line 149
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->hint:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->href:Ljava/lang/String;

    .line 153
    sget v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    .line 163
    sget-object v0, Lcom/alipay/android/app/template/view/TScaleType;->ScaleToFill:Lcom/alipay/android/app/template/view/TScaleType;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->scaleType:Lcom/alipay/android/app/template/view/TScaleType;

    .line 167
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->name:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    .line 171
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->selected:Z

    .line 173
    sget-object v0, Lcom/alipay/android/app/template/view/PositionType;->staticc:Lcom/alipay/android/app/template/view/PositionType;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionType:Lcom/alipay/android/app/template/view/PositionType;

    .line 175
    new-array v0, v5, [I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v3

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v7

    const/4 v1, 0x2

    .line 176
    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    .line 178
    iput v6, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->lineHeight:I

    .line 180
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    .line 182
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->needWrap:Z

    .line 184
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mParentWebkitBox:Z

    .line 186
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isSingleLine:Z

    .line 188
    iput v6, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mTransition:I

    .line 190
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mNeedAnim:Z

    .line 192
    iput v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->orientation:I

    .line 194
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->c:Lcom/alipay/android/app/template/anim/ITemplateAnimator;

    .line 196
    iput-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 198
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    .line 200
    iput v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->zIndex:I

    .line 204
    iput v6, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->blurRadius:I

    .line 206
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->cssText:Ljava/lang/String;

    .line 208
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontSizeAdjust:Z

    .line 210
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->keyboard:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    .line 214
    iput-boolean v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isFocus:Z

    .line 223
    invoke-static {}, Lcom/alipay/android/app/template/anim/TemplateAnimatorFactory;->getTemplateIcecreamAnimator()Lcom/alipay/android/app/template/anim/ITemplateAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->c:Lcom/alipay/android/app/template/anim/ITemplateAnimator;

    .line 224
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1184
    :cond_0
    return-void
.end method

.method private a(I[IILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 885
    array-length v0, p2

    new-array v0, v0, [I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p1, v0, p3

    .line 886
    const/4 v1, 0x1

    invoke-direct {p0, p4, v0, v1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    aput p1, p2, p3

    .line 889
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1132
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    invoke-static {p1}, Lcom/alipay/android/app/template/util/UiUtil;->parseStandarColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    .line 1136
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/alipay/android/app/template/util/UiUtil;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1138
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1140
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/android/app/template/view/StyleEnum;[I)V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 579
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_0

    .line 580
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_0

    .line 581
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_WIDTH:Lcom/alipay/android/app/template/view/StyleEnum;

    if-ne p1, v0, :cond_5

    .line 582
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 583
    array-length v1, v0

    .line 584
    if-ne v1, v5, :cond_2

    .line 585
    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    .line 586
    aput v0, p2, v4

    .line 587
    aput v0, p2, v5

    .line 588
    aput v0, p2, v6

    .line 589
    aput v0, p2, v7

    .line 634
    :cond_1
    :goto_0
    return-void

    .line 591
    :cond_2
    new-array v1, v3, [Ljava/lang/String;

    .line 593
    array-length v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 592
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    aget-object v0, v1, v7

    .line 595
    aget-object v2, v1, v6

    .line 596
    aget-object v3, v1, v4

    invoke-static {v3}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v3

    aput v3, p2, v5

    .line 597
    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v1

    aput v1, p2, v6

    .line 598
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 599
    aget v0, p2, v6

    aput v0, p2, v4

    .line 603
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 604
    aget v0, p2, v5

    aput v0, p2, v7

    goto :goto_0

    .line 601
    :cond_3
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v4

    goto :goto_1

    .line 606
    :cond_4
    invoke-static {v2}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v7

    goto :goto_0

    .line 611
    :cond_5
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN_BOTTOM:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_6

    .line 612
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->POSITION_BOTTOM:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_6

    .line 613
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING_BOTTOM:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_6

    .line 614
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_BOTTOM:Lcom/alipay/android/app/template/view/StyleEnum;

    if-ne p1, v0, :cond_7

    .line 615
    :cond_6
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v7

    goto :goto_0

    .line 616
    :cond_7
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN_LEFT:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_8

    .line 617
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->POSITION_LEFT:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_8

    .line 618
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING_LEFT:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_8

    .line 619
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_LEFT:Lcom/alipay/android/app/template/view/StyleEnum;

    if-ne p1, v0, :cond_9

    .line 620
    :cond_8
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v4

    goto :goto_0

    .line 621
    :cond_9
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN_RIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_a

    .line 622
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->POSITION_RIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_a

    .line 623
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING_RIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_a

    .line 624
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_RIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    if-ne p1, v0, :cond_b

    .line 625
    :cond_a
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v6

    goto/16 :goto_0

    .line 626
    :cond_b
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN_TOP:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_c

    .line 627
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->POSITION_TOP:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_c

    .line 628
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING_TOP:Lcom/alipay/android/app/template/view/StyleEnum;

    if-eq p1, v0, :cond_c

    .line 629
    sget-object v0, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_TOP:Lcom/alipay/android/app/template/view/StyleEnum;

    if-ne p1, v0, :cond_1

    .line 630
    :cond_c
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    aput v0, p2, v5

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 855
    invoke-direct {p0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a()V

    .line 856
    iget-boolean v2, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mNeedAnim:Z

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->c:Lcom/alipay/android/app/template/anim/ITemplateAnimator;

    if-eqz v2, :cond_1

    .line 857
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->c:Lcom/alipay/android/app/template/anim/ITemplateAnimator;

    invoke-interface {v1, p1, p2, p3}, Lcom/alipay/android/app/template/anim/ITemplateAnimator;->checkAndAddHolder(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 860
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 856
    goto :goto_0

    :cond_1
    move v0, v1

    .line 860
    goto :goto_1
.end method

.method private b(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1164
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    .line 1166
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 1168
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->initBackground(Landroid/app/Activity;)V

    .line 1170
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1173
    :cond_1
    return-void
.end method

.method private static synthetic b()[I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/view/StyleEnum;->values()[Lcom/alipay/android/app/template/view/StyleEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->ACTIVE_BACKGROUND:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->ACTIVE_BACKGROUND_COLOR:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->ACTIVE_BACKGROUND_IMAGE:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->ACTIVE_COLOR:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BACKGROUND:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BACKGROUND_COLOR:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_39

    :goto_6
    :try_start_6
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BACKGROUND_IMAGE:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_38

    :goto_7
    :try_start_7
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BACKGROUND_SIZE:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_37

    :goto_8
    :try_start_8
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_36

    :goto_9
    :try_start_9
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_BOTTOM:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_35

    :goto_a
    :try_start_a
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_COLOR:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_34

    :goto_b
    :try_start_b
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_LEFT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_33

    :goto_c
    :try_start_c
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_RADIUS:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_32

    :goto_d
    :try_start_d
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_RIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_31

    :goto_e
    :try_start_e
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_TOP:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_30

    :goto_f
    :try_start_f
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->BORDER_WIDTH:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2f

    :goto_10
    :try_start_10
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->CHECKED_BACKGROUND_IMAGE:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2e

    :goto_11
    :try_start_11
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->COLOR:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_2d

    :goto_12
    :try_start_12
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->DISABLED_BACKGROUND:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2c

    :goto_13
    :try_start_13
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->DISABLED_BACKGROUND_COLOR:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2b

    :goto_14
    :try_start_14
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->DISABLED_BACKGROUND_IMAGE:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_2a

    :goto_15
    :try_start_15
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->DISABLED_COLOR:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_29

    :goto_16
    :try_start_16
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->DISPLAY:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_28

    :goto_17
    :try_start_17
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->FONT_SIZE:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_27

    :goto_18
    :try_start_18
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->FONT_SIZE_ADJUST:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_26

    :goto_19
    :try_start_19
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->FONT_WEIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_25

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->HEIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_24

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->LINE_HEIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_23

    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_22

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN_BOTTOM:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_21

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN_LEFT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_20

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN_RIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :goto_20
    :try_start_20
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN_TOP:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_1e

    :goto_21
    :try_start_21
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->MAX_HEIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_1d

    :goto_22
    :try_start_22
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->MAX_WIDTH:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_1c

    :goto_23
    :try_start_23
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->MIN_HEIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_1b

    :goto_24
    :try_start_24
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->MIN_WIDTH:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_1a

    :goto_25
    :try_start_25
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->OPACITY:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_19

    :goto_26
    :try_start_26
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->OVERFLOW:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_18

    :goto_27
    :try_start_27
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_17

    :goto_28
    :try_start_28
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING_BOTTOM:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_16

    :goto_29
    :try_start_29
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING_LEFT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_15

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING_RIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_14

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING_TOP:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_13

    :goto_2c
    :try_start_2c
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->POSITION:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_12

    :goto_2d
    :try_start_2d
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->POSITION_BOTTOM:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_11

    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->POSITION_LEFT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_10

    :goto_2f
    :try_start_2f
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->POSITION_RIGHT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_f

    :goto_30
    :try_start_30
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->POSITION_TOP:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_e

    :goto_31
    :try_start_31
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->TEXT_ALIGN:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_d

    :goto_32
    :try_start_32
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->TEXT_DECORATION:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_c

    :goto_33
    :try_start_33
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->TEXT_OVERFLOW:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_b

    :goto_34
    :try_start_34
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->TRANSITION:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_a

    :goto_35
    :try_start_35
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->VISIBILITY:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_9

    :goto_36
    :try_start_36
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->WEBKIT_BORDER_RADIUS:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_8

    :goto_37
    :try_start_37
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->WEBKIT_BOX_ALIGN:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_7

    :goto_38
    :try_start_38
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->WEBKIT_BOX_FLEX:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_6

    :goto_39
    :try_start_39
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->WEBKIT_BOX_ORIENT:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_5

    :goto_3a
    :try_start_3a
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->WEBKIT_BOX_PACK:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_4

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->WEBKIT_FILTER:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3

    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->WEBKIT_LINE_CLAM:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_2

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->WHITE_SPACE:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_1

    :goto_3e
    :try_start_3e
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->WIDTH:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_0

    :goto_3f
    sput-object v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->e:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_3f

    :catch_1
    move-exception v1

    goto :goto_3e

    :catch_2
    move-exception v1

    goto :goto_3d

    :catch_3
    move-exception v1

    goto :goto_3c

    :catch_4
    move-exception v1

    goto :goto_3b

    :catch_5
    move-exception v1

    goto :goto_3a

    :catch_6
    move-exception v1

    goto :goto_39

    :catch_7
    move-exception v1

    goto :goto_38

    :catch_8
    move-exception v1

    goto :goto_37

    :catch_9
    move-exception v1

    goto :goto_36

    :catch_a
    move-exception v1

    goto :goto_35

    :catch_b
    move-exception v1

    goto/16 :goto_34

    :catch_c
    move-exception v1

    goto/16 :goto_33

    :catch_d
    move-exception v1

    goto/16 :goto_32

    :catch_e
    move-exception v1

    goto/16 :goto_31

    :catch_f
    move-exception v1

    goto/16 :goto_30

    :catch_10
    move-exception v1

    goto/16 :goto_2f

    :catch_11
    move-exception v1

    goto/16 :goto_2e

    :catch_12
    move-exception v1

    goto/16 :goto_2d

    :catch_13
    move-exception v1

    goto/16 :goto_2c

    :catch_14
    move-exception v1

    goto/16 :goto_2b

    :catch_15
    move-exception v1

    goto/16 :goto_2a

    :catch_16
    move-exception v1

    goto/16 :goto_29

    :catch_17
    move-exception v1

    goto/16 :goto_28

    :catch_18
    move-exception v1

    goto/16 :goto_27

    :catch_19
    move-exception v1

    goto/16 :goto_26

    :catch_1a
    move-exception v1

    goto/16 :goto_25

    :catch_1b
    move-exception v1

    goto/16 :goto_24

    :catch_1c
    move-exception v1

    goto/16 :goto_23

    :catch_1d
    move-exception v1

    goto/16 :goto_22

    :catch_1e
    move-exception v1

    goto/16 :goto_21

    :catch_1f
    move-exception v1

    goto/16 :goto_20

    :catch_20
    move-exception v1

    goto/16 :goto_1f

    :catch_21
    move-exception v1

    goto/16 :goto_1e

    :catch_22
    move-exception v1

    goto/16 :goto_1d

    :catch_23
    move-exception v1

    goto/16 :goto_1c

    :catch_24
    move-exception v1

    goto/16 :goto_1b

    :catch_25
    move-exception v1

    goto/16 :goto_1a

    :catch_26
    move-exception v1

    goto/16 :goto_19

    :catch_27
    move-exception v1

    goto/16 :goto_18

    :catch_28
    move-exception v1

    goto/16 :goto_17

    :catch_29
    move-exception v1

    goto/16 :goto_16

    :catch_2a
    move-exception v1

    goto/16 :goto_15

    :catch_2b
    move-exception v1

    goto/16 :goto_14

    :catch_2c
    move-exception v1

    goto/16 :goto_13

    :catch_2d
    move-exception v1

    goto/16 :goto_12

    :catch_2e
    move-exception v1

    goto/16 :goto_11

    :catch_2f
    move-exception v1

    goto/16 :goto_10

    :catch_30
    move-exception v1

    goto/16 :goto_f

    :catch_31
    move-exception v1

    goto/16 :goto_e

    :catch_32
    move-exception v1

    goto/16 :goto_d

    :catch_33
    move-exception v1

    goto/16 :goto_c

    :catch_34
    move-exception v1

    goto/16 :goto_b

    :catch_35
    move-exception v1

    goto/16 :goto_a

    :catch_36
    move-exception v1

    goto/16 :goto_9

    :catch_37
    move-exception v1

    goto/16 :goto_8

    :catch_38
    move-exception v1

    goto/16 :goto_7

    :catch_39
    move-exception v1

    goto/16 :goto_6

    :catch_3a
    move-exception v1

    goto/16 :goto_5

    :catch_3b
    move-exception v1

    goto/16 :goto_4

    :catch_3c
    move-exception v1

    goto/16 :goto_3

    :catch_3d
    move-exception v1

    goto/16 :goto_2

    :catch_3e
    move-exception v1

    goto/16 :goto_1
.end method

.method public static mergeDomIntoHtml(Lcom/alipay/android/app/json/JSONArray;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 480
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 481
    :cond_0
    const-string/jumbo v0, ""

    .line 538
    :goto_0
    return-object v0

    .line 483
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 538
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_2
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v3

    .line 487
    const-string/jumbo v0, "tag"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    const-string/jumbo v0, "text"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 489
    const-string/jumbo v0, "text"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 494
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 496
    const-string/jumbo v0, "<"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 500
    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 512
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v7, v0, :cond_6

    .line 513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 516
    :cond_6
    const-string/jumbo v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string/jumbo v0, "children"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 521
    const-string/jumbo v0, "children"

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v0

    .line 520
    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mergeDomIntoHtml(Lcom/alipay/android/app/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v7, v0, :cond_8

    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 531
    :cond_8
    const-string/jumbo v0, "</"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 534
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 501
    :cond_9
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 503
    const-string/jumbo v6, "tag"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 504
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 507
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string/jumbo v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static noNeedToParseChildren(Lcom/alipay/android/app/template/view/ViewType;)Z
    .locals 1

    .prologue
    .line 572
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->label:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->button:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p0, v0, :cond_0

    .line 573
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->p:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->span:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->form:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p0, v0, :cond_0

    .line 574
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->a:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->option:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 572
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1372
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    .line 1373
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 1376
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    .line 1377
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1380
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    .line 1381
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1384
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    .line 1385
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1388
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    .line 1389
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1392
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    .line 1393
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1397
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    .line 1398
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1402
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1403
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    .line 1404
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1408
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1409
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    .line 1410
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1414
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1415
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    .line 1416
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1420
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    if-eqz v1, :cond_4

    .line 1421
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/view/AlignType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    .line 1425
    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

    if-eqz v1, :cond_5

    .line 1426
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/view/AlignType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

    .line 1430
    :cond_5
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

    if-eqz v1, :cond_6

    .line 1431
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/AlignType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/view/AlignType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

    .line 1435
    :cond_6
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    if-eqz v1, :cond_7

    .line 1436
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/DecorationType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/view/DecorationType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/DecorationType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    .line 1440
    :cond_7
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-eqz v1, :cond_8

    .line 1441
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/view/OverflowType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/OverflowType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 1445
    :cond_8
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-eqz v1, :cond_9

    .line 1446
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/OverflowType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/view/OverflowType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/OverflowType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 1450
    :cond_9
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionType:Lcom/alipay/android/app/template/view/PositionType;

    if-eqz v1, :cond_a

    .line 1451
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionType:Lcom/alipay/android/app/template/view/PositionType;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/PositionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/template/view/PositionType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/PositionType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionType:Lcom/alipay/android/app/template/view/PositionType;

    .line 1454
    :cond_a
    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1330
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    .line 1331
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    .line 1332
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultValue:Ljava/lang/String;

    .line 1333
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    .line 1334
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    .line 1335
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderColor:Ljava/lang/String;

    .line 1336
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    .line 1337
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    .line 1338
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

    .line 1339
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

    .line 1340
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    .line 1341
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 1342
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    .line 1343
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 1344
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    .line 1345
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onClickScript:Ljava/lang/String;

    .line 1346
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLoadScript:Ljava/lang/String;

    .line 1347
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    .line 1348
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontWeight:Ljava/lang/String;

    .line 1349
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->hint:Ljava/lang/String;

    .line 1350
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->href:Ljava/lang/String;

    .line 1351
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 1352
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->visibleStr:Ljava/lang/String;

    .line 1353
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->displayStr:Ljava/lang/String;

    .line 1354
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->parentLayoutType:Lcom/alipay/android/app/template/view/LayoutType;

    .line 1355
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->scaleType:Lcom/alipay/android/app/template/view/TScaleType;

    .line 1356
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 1357
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    .line 1358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a:Z

    .line 1359
    return-void
.end method

.method public getBottom()I
    .locals 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1319
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1320
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const-string/jumbo v0, "default"

    .line 1322
    :goto_0
    return-object v0

    .line 1320
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textColors:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    .line 1322
    :cond_1
    const-string/jumbo v0, "default"

    goto :goto_0
.end method

.method public getCssText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->cssText:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->displayStr:Ljava/lang/String;

    return-object v0
.end method

.method public getJsObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1326
    const-string/jumbo v0, "style"

    return-object v0
.end method

.method public getLeft()I
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getRight()I
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getScriptConfigJson()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x1

    .line 960
    sget-object v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    .line 962
    invoke-static {}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;

    move-result-object v0

    .line 963
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 965
    const-string/jumbo v2, "setWidth"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 966
    const-string/jumbo v2, "width"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 968
    const-string/jumbo v2, "setHeight"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 969
    const-string/jumbo v2, "height"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 971
    const-string/jumbo v2, "setMargin"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 972
    const-string/jumbo v4, "margin"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 974
    const-string/jumbo v2, "setMarginLeft"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 975
    const-string/jumbo v2, "marginLeft"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 977
    const-string/jumbo v2, "setMarginTop"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 978
    const-string/jumbo v2, "marginTop"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 980
    const-string/jumbo v2, "setMarginRight"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 981
    const-string/jumbo v2, "marginRight"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 983
    const-string/jumbo v2, "setMarginBottom"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 984
    const-string/jumbo v2, "marginBottom"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 986
    const-string/jumbo v2, "setPadding"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 987
    const-string/jumbo v4, "padding"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 989
    const-string/jumbo v2, "setPaddingLeft"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 990
    const-string/jumbo v2, "paddingLeft"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 992
    const-string/jumbo v2, "setPaddingTop"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 993
    const-string/jumbo v2, "paddingTop"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 995
    const-string/jumbo v2, "setPaddingRight"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 996
    const-string/jumbo v2, "paddingRight"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 998
    const-string/jumbo v2, "setPaddingBottom"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 999
    const-string/jumbo v2, "paddingBottom"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 1002
    const-string/jumbo v2, "getDisplay"

    new-array v4, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1003
    const-string/jumbo v4, "setDisplay"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v13

    invoke-virtual {v12, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1004
    const-string/jumbo v6, "display"

    invoke-virtual {v0, v1, v6, v2, v4}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1006
    const-string/jumbo v2, "setOpacity"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1007
    const-string/jumbo v4, "opacity"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1009
    const-string/jumbo v2, "setTransition"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1010
    const-string/jumbo v4, "transition"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1012
    const-string/jumbo v2, "setOverflow"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1013
    const-string/jumbo v4, "overflow"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1015
    const-string/jumbo v2, "setzIndex"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1016
    const-string/jumbo v4, "zIndex"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1018
    const-string/jumbo v2, "setPosition"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1019
    const-string/jumbo v4, "position"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1021
    const-string/jumbo v2, "getTop"

    new-array v4, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1022
    const-string/jumbo v2, "setTop"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1023
    const-string/jumbo v8, "top"

    move-object v6, v0

    move-object v7, v1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 1026
    const-string/jumbo v2, "getLeft"

    new-array v4, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1027
    const-string/jumbo v2, "setLeft"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1028
    const-string/jumbo v8, "left"

    move-object v6, v0

    move-object v7, v1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 1031
    const-string/jumbo v2, "getRight"

    new-array v4, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1032
    const-string/jumbo v2, "setRight"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1033
    const-string/jumbo v8, "right"

    move-object v6, v0

    move-object v7, v1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 1036
    const-string/jumbo v2, "getBottom"

    new-array v4, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1037
    const-string/jumbo v2, "setBottom"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 1038
    const-string/jumbo v8, "bottom"

    move-object v6, v0

    move-object v7, v1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 1041
    const-string/jumbo v2, "setTextAlign"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1042
    const-string/jumbo v4, "textAlign"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1044
    const-string/jumbo v2, "setOrientation"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1045
    const-string/jumbo v4, "webkitBoxOrient"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1048
    const-string/jumbo v2, "setWebkitBoxPack"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1049
    const-string/jumbo v4, "webkitBoxPack"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1052
    const-string/jumbo v2, "setWebkitBoxFlex"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1053
    const-string/jumbo v4, "webkitBoxFlex"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1056
    const-string/jumbo v2, "setWebkitBoxAlign"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1057
    const-string/jumbo v4, "webkitBoxAlign"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1060
    const-string/jumbo v2, "getColor"

    new-array v4, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1061
    const-string/jumbo v4, "setColor"

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v13

    invoke-virtual {v12, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1062
    const-string/jumbo v6, "color"

    invoke-virtual {v0, v1, v6, v2, v4}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1065
    const-string/jumbo v2, "setBackgroundColor"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1066
    const-string/jumbo v4, "backgroundColor"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1068
    const-string/jumbo v2, "getCssText"

    new-array v4, v13, [Ljava/lang/Class;

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1069
    const-string/jumbo v2, "setCssText"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1070
    const-string/jumbo v4, "cssText"

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 1072
    const-string/jumbo v2, "setMaxWidth"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1073
    const-string/jumbo v2, "maxWidth"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 1075
    const-string/jumbo v2, "setMaxHeight"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1076
    const-string/jumbo v2, "maxHeight"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 1078
    const-string/jumbo v2, "setFontSize"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v13

    invoke-virtual {v12, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1079
    const-string/jumbo v2, "fontSize"

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Z)V

    .line 1081
    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getScriptJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->b:Ljava/lang/String;

    .line 1083
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateElement()Lcom/alipay/android/app/template/view/widget/TElement;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    return-object v0
.end method

.method public getTop()I
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionsInt:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getWindowHashCode()I
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public initLayoutType(Lcom/alipay/android/app/template/view/ViewType;)V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    if-nez v0, :cond_1

    .line 543
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->div:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->nav:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_0

    .line 544
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->p:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_0

    .line 545
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->span:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_0

    .line 546
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->marquee:Lcom/alipay/android/app/template/view/ViewType;

    if-ne p1, v0, :cond_4

    .line 547
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/view/LayoutType;->BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    .line 561
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->input:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->password:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_2

    .line 562
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->month:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->text:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_2

    .line 563
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->num:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    if-ne p1, v0, :cond_3

    .line 564
    :cond_2
    iget v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-ne v0, v1, :cond_3

    .line 566
    const/16 v0, 0xa9

    .line 567
    const/4 v1, 0x0

    .line 566
    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->makeUnitSpec(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    .line 569
    :cond_3
    return-void

    .line 548
    :cond_4
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->button:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->img:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_5

    .line 549
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->input:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_5

    .line 550
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->password:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_5

    .line 551
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->text:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_5

    .line 552
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->payword:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_5

    .line 553
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->select:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_5

    .line 554
    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->month:Lcom/alipay/android/app/template/view/ViewType;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/alipay/android/app/template/view/ViewType;->num:Lcom/alipay/android/app/template/view/ViewType;

    if-ne p1, v0, :cond_6

    .line 555
    :cond_5
    sget-object v0, Lcom/alipay/android/app/template/view/LayoutType;->INLINE_BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    goto :goto_0

    .line 557
    :cond_6
    sget-object v0, Lcom/alipay/android/app/template/view/LayoutType;->INLINE:Lcom/alipay/android/app/template/view/LayoutType;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 1362
    iget-boolean v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a:Z

    return v0
.end method

.method public isNeedMarkUp(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 844
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "{{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const-string/jumbo v0, "}}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 844
    goto :goto_0
.end method

.method public parse(Lcom/alipay/android/app/json/JSONObject;Ljava/util/Map;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->tagName:Ljava/lang/String;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->tagName:Ljava/lang/String;

    const-string/jumbo v3, "script"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    :goto_0
    return-void

    .line 256
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/ViewType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    .line 257
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/alipay/android/app/template/view/ViewType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_2
    :goto_1
    const-string/jumbo v0, "text"

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->tagName:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 266
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 288
    :cond_3
    :goto_2
    const-string/jumbo v0, "autofocus"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 289
    const-string/jumbo v0, "autofocus"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isFocus:Z

    .line 292
    :cond_4
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->id:Ljava/lang/String;

    .line 295
    :cond_5
    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 296
    const-string/jumbo v0, "src"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 298
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v3, "src"

    iget-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->src:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_6
    const-string/jumbo v0, "defaultvalue"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 302
    const-string/jumbo v0, "defaultvalue"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultValue:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 304
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v3, "defaultvalue"

    iget-object v4, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultValue:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_7
    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 309
    const-string/jumbo v0, "keyboard"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->keyboard:Ljava/lang/String;

    .line 312
    :cond_8
    const-string/jumbo v0, "defaultChecked"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 313
    const-string/jumbo v0, "defaultChecked"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultChecked:Z

    .line 316
    :cond_9
    const-string/jumbo v0, "failurevalue"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 317
    const-string/jumbo v0, "failurevalue"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->failureValue:Ljava/lang/String;

    .line 320
    :cond_a
    const-string/jumbo v0, "disabled"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 321
    const-string/jumbo v0, "disabled"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    const-string/jumbo v0, "disabled"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 323
    const-string/jumbo v0, "true"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v1

    .line 322
    :goto_3
    iput-boolean v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isDisabled:Z

    .line 324
    invoke-virtual {p0, v3}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 325
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v2, "disabled"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_b
    const-string/jumbo v0, "onclick"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 330
    const-string/jumbo v0, "onclick"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onClickScript:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onClickScript:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 332
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v2, "onclick"

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onClickScript:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_c
    const-string/jumbo v0, "onmousedown"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 337
    const-string/jumbo v0, "onmousedown"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseDownScript:Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseDownScript:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 339
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v2, "onmousedown"

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseDownScript:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_d
    const-string/jumbo v0, "onmousemove"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 344
    const-string/jumbo v0, "onmousemove"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseMoveScript:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseMoveScript:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 346
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v2, "onmousemove"

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseMoveScript:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_e
    const-string/jumbo v0, "onmouseout"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 351
    const-string/jumbo v0, "onmouseout"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOutScript:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOutScript:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 353
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v2, "onmouseout"

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOutScript:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_f
    const-string/jumbo v0, "onmouseover"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 358
    const-string/jumbo v0, "onmouseover"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOverScript:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOverScript:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 360
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v2, "onmouseover"

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseOverScript:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_10
    const-string/jumbo v0, "onmouseup"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 365
    const-string/jumbo v0, "onmouseup"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseUpScript:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseUpScript:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 367
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v2, "onmouseup"

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onMouseUpScript:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_11
    const-string/jumbo v0, "oninput"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 372
    const-string/jumbo v0, "oninput"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 374
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v2, "oninput"

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_12
    const-string/jumbo v0, "onkeydown"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 379
    const-string/jumbo v0, "onkeydown"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyDownScript:Ljava/lang/String;

    .line 382
    :cond_13
    const-string/jumbo v0, "onkeyup"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 383
    const-string/jumbo v0, "onkeyup"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyUpScript:Ljava/lang/String;

    .line 386
    :cond_14
    const-string/jumbo v0, "onlongpress"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 387
    const-string/jumbo v0, "onlongpress"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 389
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v2, "onlongpress"

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLongClickScript:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_15
    const-string/jumbo v0, "onload"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 393
    const-string/jumbo v0, "onload"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onLoadScript:Ljava/lang/String;

    .line 396
    :cond_16
    const-string/jumbo v0, "placeholder"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 397
    const-string/jumbo v0, "placeholder"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->hint:Ljava/lang/String;

    .line 400
    :cond_17
    const-string/jumbo v0, "href"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 401
    const-string/jumbo v0, "href"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->href:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->href:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 403
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v2, "href"

    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->href:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_18
    const-string/jumbo v0, "contentMode"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 408
    const-string/jumbo v0, "contentMode"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 410
    iget-object v2, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    const-string/jumbo v3, "contentMode"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_19
    :goto_4
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 421
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->name:Ljava/lang/String;

    .line 423
    :cond_1a
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 424
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    .line 427
    :cond_1b
    const-string/jumbo v0, "selected"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 428
    const-string/jumbo v0, "selected"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "selected"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->selected:Z

    .line 431
    :cond_1c
    const-string/jumbo v0, "class"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "css"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 432
    :cond_1d
    const-string/jumbo v0, "class"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "css"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 436
    :cond_1e
    const-string/jumbo v0, "class"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "class"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    if-eqz p2, :cond_21

    .line 438
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 439
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, " +"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1f

    .line 441
    iget-object v3, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->classes:[Ljava/lang/String;

    array-length v4, v3

    :goto_6
    if-lt v1, v4, :cond_2b

    .line 455
    :cond_1f
    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 456
    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    :cond_20
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 460
    const-string/jumbo v0, "style"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 468
    :cond_21
    :goto_7
    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 469
    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->parseStyle(Ljava/lang/String;)V

    .line 471
    :cond_22
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->initLayoutType(Lcom/alipay/android/app/template/view/ViewType;)V

    goto/16 :goto_0

    .line 261
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 267
    :cond_23
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->select:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v3, :cond_24

    .line 268
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->input:Lcom/alipay/android/app/template/view/ViewType;

    if-eq v0, v3, :cond_24

    .line 269
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v3, Lcom/alipay/android/app/template/view/ViewType;->checkbox:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v3, :cond_27

    .line 270
    :cond_24
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 271
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string/jumbo v3, "\u201c"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_25
    const-string/jumbo v3, "\u201d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_26
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 280
    :cond_27
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->noNeedToParseChildren(Lcom/alipay/android/app/template/view/ViewType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    const-string/jumbo v0, "children"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 284
    invoke-static {v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mergeDomIntoHtml(Lcom/alipay/android/app/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    goto/16 :goto_2

    :cond_28
    move v0, v2

    .line 323
    goto/16 :goto_3

    .line 413
    :cond_29
    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/app/template/view/TScaleType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/TScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->scaleType:Lcom/alipay/android/app/template/view/TScaleType;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 414
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 436
    :cond_2a
    const-string/jumbo v0, "css"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 441
    :cond_2b
    aget-object v0, v3, v1

    .line 442
    const-string/jumbo v5, "dragList"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 443
    sget-object v5, Lcom/alipay/android/app/template/view/ViewType;->dragList:Lcom/alipay/android/app/template/view/ViewType;

    iput-object v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    .line 449
    :cond_2c
    :goto_8
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 450
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 444
    :cond_2e
    const-string/jumbo v5, "templatelist"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 445
    sget-object v5, Lcom/alipay/android/app/template/view/ViewType;->templatelist:Lcom/alipay/android/app/template/view/ViewType;

    iput-object v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    goto :goto_8

    .line 446
    :cond_2f
    const-string/jumbo v5, "progresswheel"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 447
    sget-object v5, Lcom/alipay/android/app/template/view/ViewType;->progresswheel:Lcom/alipay/android/app/template/view/ViewType;

    iput-object v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    goto :goto_8

    .line 462
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONException;->printStackTrace()V

    goto/16 :goto_7
.end method

.method public parseStyle(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 637
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 639
    array-length v0, v3

    if-lez v0, :cond_0

    .line 640
    array-length v4, v3

    move v1, v2

    .line 832
    :goto_0
    if-lt v1, v4, :cond_1

    .line 841
    :cond_0
    return-void

    .line 640
    :cond_1
    aget-object v5, v3, v1

    .line 641
    const-string/jumbo v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 642
    array-length v6, v0

    if-le v6, v10, :cond_2

    .line 643
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 644
    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-static {v6}, Lcom/alipay/android/app/template/view/StyleEnum;->valuesOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/StyleEnum;

    move-result-object v6

    .line 646
    if-eqz v6, :cond_2

    .line 647
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->isNeedMarkUp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 650
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/alipay/android/app/template/view/StyleEnum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 653
    :cond_3
    invoke-static {}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->b()[I

    move-result-object v5

    invoke-virtual {v6}, Lcom/alipay/android/app/template/view/StyleEnum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 659
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setDisplay(Ljava/lang/String;)V

    goto :goto_1

    .line 656
    :pswitch_2
    invoke-static {v0, v2}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    goto :goto_1

    .line 662
    :pswitch_3
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->visibleStr:Ljava/lang/String;

    goto :goto_1

    .line 667
    :pswitch_4
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    .line 666
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderRadius:I

    goto :goto_1

    .line 671
    :pswitch_5
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->parseStandarColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderColor:Ljava/lang/String;

    goto :goto_1

    .line 679
    :pswitch_6
    const-string/jumbo v5, " +"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 680
    array-length v0, v5

    if-le v0, v10, :cond_2

    .line 681
    array-length v7, v5

    move v0, v2

    :goto_2
    if-ge v0, v7, :cond_2

    aget-object v8, v5, v0

    .line 682
    const-string/jumbo v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 683
    const-string/jumbo v9, "rgba"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 684
    :cond_4
    iput-object v8, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borderColor:Ljava/lang/String;

    .line 681
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 685
    :cond_6
    const-string/jumbo v9, "solid"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 689
    iget-object v9, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->borders:[I

    .line 688
    invoke-static {v8, v6, v9}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Lcom/alipay/android/app/template/view/StyleEnum;[I)V

    goto :goto_3

    .line 698
    :pswitch_7
    iget v5, v6, Lcom/alipay/android/app/template/view/StyleEnum;->index:I

    invoke-direct {p0, v0, v5}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 704
    :pswitch_8
    iget-object v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v5}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v6, Lcom/alipay/android/app/template/view/StyleEnum;->index:I

    if-nez v5, :cond_7

    .line 705
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setBackgroundColor(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 707
    :cond_7
    iget v5, v6, Lcom/alipay/android/app/template/view/StyleEnum;->index:I

    invoke-direct {p0, v0, v5}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->b(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 712
    :pswitch_9
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setHeight(I)V

    goto/16 :goto_1

    .line 719
    :pswitch_a
    iget v5, v6, Lcom/alipay/android/app/template/view/StyleEnum;->index:I

    if-eq v5, v11, :cond_8

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    const-string/jumbo v7, "margins"

    invoke-direct {p0, v0, v6, v5, v7}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(I[IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setMargin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 726
    :pswitch_b
    iget v5, v6, Lcom/alipay/android/app/template/view/StyleEnum;->index:I

    if-eq v5, v11, :cond_9

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    const-string/jumbo v7, "paddings"

    invoke-direct {p0, v0, v6, v5, v7}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(I[IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setPadding(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 729
    :pswitch_c
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setOverflow(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 732
    :pswitch_d
    invoke-static {v0}, Lcom/alipay/android/app/template/view/AlignType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    goto/16 :goto_1

    .line 735
    :pswitch_e
    invoke-static {v0}, Lcom/alipay/android/app/template/view/AlignType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

    goto/16 :goto_1

    .line 738
    :pswitch_f
    invoke-static {v0}, Lcom/alipay/android/app/template/view/AlignType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

    goto/16 :goto_1

    .line 741
    :pswitch_10
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 742
    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    goto/16 :goto_1

    .line 745
    :pswitch_11
    invoke-static {v0}, Lcom/alipay/android/app/template/view/DecorationType;->valuesOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/DecorationType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    goto/16 :goto_1

    .line 748
    :pswitch_12
    invoke-static {v0}, Lcom/alipay/android/app/template/view/OverflowType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/OverflowType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    goto/16 :goto_1

    .line 751
    :pswitch_13
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    goto/16 :goto_1

    .line 754
    :pswitch_14
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setWidth(I)V

    goto/16 :goto_1

    .line 757
    :pswitch_15
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    goto/16 :goto_1

    .line 760
    :pswitch_16
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->fontWeight:Ljava/lang/String;

    goto/16 :goto_1

    .line 763
    :pswitch_17
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setTransition(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 771
    :pswitch_18
    const-string/jumbo v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 772
    const-string/jumbo v5, ")"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 773
    iget v5, v6, Lcom/alipay/android/app/template/view/StyleEnum;->index:I

    invoke-virtual {p0, v0, v5}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setBackgroundImage(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 777
    :pswitch_19
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setPosition(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 784
    :pswitch_1a
    iget-object v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    .line 783
    invoke-static {v0, v6, v5}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Lcom/alipay/android/app/template/view/StyleEnum;[I)V

    goto/16 :goto_1

    .line 787
    :pswitch_1b
    const-string/jumbo v5, "vertical"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    iput v10, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->orientation:I

    goto/16 :goto_1

    .line 792
    :pswitch_1c
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->lineHeight:I

    goto/16 :goto_1

    .line 795
    :pswitch_1d
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setMaxHeight(I)V

    goto/16 :goto_1

    .line 798
    :pswitch_1e
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setMaxWidth(I)V

    goto/16 :goto_1

    .line 801
    :pswitch_1f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxLines:I

    goto/16 :goto_1

    .line 804
    :pswitch_20
    const-string/jumbo v5, "blur"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 805
    const-string/jumbo v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 806
    if-lez v5, :cond_a

    .line 807
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 809
    :cond_a
    const-string/jumbo v5, ")"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->blurRadius:I

    goto/16 :goto_1

    .line 815
    :pswitch_21
    const-string/jumbo v5, " +"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 816
    if-eqz v0, :cond_2

    .line 817
    array-length v5, v0

    if-lez v5, :cond_b

    .line 818
    aget-object v5, v0, v2

    invoke-static {v5}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->backgroundWSize:I

    .line 820
    :cond_b
    array-length v5, v0

    if-le v5, v10, :cond_2

    .line 821
    aget-object v0, v0, v10

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->backgroundHSize:I

    goto/16 :goto_1

    .line 827
    :pswitch_22
    const-string/jumbo v5, "auto"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mFontSizeAdjust:Z

    goto/16 :goto_1

    .line 831
    :pswitch_23
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setMinHeight(I)V

    goto/16 :goto_1

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_12
        :pswitch_c
        :pswitch_9
        :pswitch_6
        :pswitch_13
        :pswitch_14
        :pswitch_4
        :pswitch_d
        :pswitch_11
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_8
        :pswitch_15
        :pswitch_16
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_23
        :pswitch_0
        :pswitch_1e
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mNeedAnim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->c:Lcom/alipay/android/app/template/anim/ITemplateAnimator;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->c:Lcom/alipay/android/app/template/anim/ITemplateAnimator;

    iget v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mTransition:I

    iget-object v2, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/template/anim/ITemplateAnimator;->requestLayout(ILandroid/view/View;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgColors:[Ljava/lang/String;

    .line 1159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->b(Ljava/lang/String;I)V

    .line 1160
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->setBackgroundImage(Ljava/lang/String;I)V

    .line 1144
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1148
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->bgImages:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 1151
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/view/widget/TElement;->initBackground(Landroid/app/Activity;)V

    .line 1153
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1155
    :cond_1
    return-void
.end method

.method public setBottom(I)V
    .locals 3

    .prologue
    .line 1247
    const-string/jumbo v0, "bottom"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 1250
    :cond_0
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;I)V

    .line 1128
    return-void
.end method

.method public setCssText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->cssText:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->cssText:Ljava/lang/String;

    .line 1120
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->parseStyle(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1124
    :cond_0
    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    iput-object p1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->displayStr:Ljava/lang/String;

    .line 1299
    invoke-static {p1}, Lcom/alipay/android/app/template/view/LayoutType;->valuesOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/LayoutType;

    move-result-object v0

    .line 1300
    if-eqz v0, :cond_0

    .line 1301
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->layoutType:Lcom/alipay/android/app/template/view/LayoutType;

    .line 1302
    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1303
    sget-object v1, Lcom/alipay/android/app/template/view/LayoutType;->NONE:Lcom/alipay/android/app/template/view/LayoutType;

    if-ne v0, v1, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1312
    :cond_0
    return-void

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFontSize(I)V
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1090
    :cond_0
    iput p1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textSize:I

    .line 1091
    return-void
.end method

.method public setHeight(I)V
    .locals 3

    .prologue
    .line 869
    const-string/jumbo v0, "height"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    iput p1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    .line 872
    :cond_0
    return-void
.end method

.method public setLeft(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1241
    const-string/jumbo v0, "left"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    aput p1, v0, v2

    .line 1244
    :cond_0
    return-void
.end method

.method public setMargin(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 904
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v3

    const/4 v1, 0x2

    .line 905
    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    .line 906
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->MARGIN:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-static {p1, v1, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Lcom/alipay/android/app/template/view/StyleEnum;[I)V

    .line 907
    const-string/jumbo v1, "margins"

    invoke-direct {p0, v1, v0, v3}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    .line 910
    :cond_0
    return-void
.end method

.method public setMarginBottom(I)V
    .locals 3

    .prologue
    .line 948
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    const/4 v1, 0x3

    const-string/jumbo v2, "margins"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(I[IILjava/lang/String;)V

    .line 949
    return-void
.end method

.method public setMarginLeft(I)V
    .locals 3

    .prologue
    .line 936
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    const/4 v1, 0x0

    const-string/jumbo v2, "margins"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(I[IILjava/lang/String;)V

    .line 937
    return-void
.end method

.method public setMarginRight(I)V
    .locals 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    const/4 v1, 0x2

    const-string/jumbo v2, "margins"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(I[IILjava/lang/String;)V

    .line 945
    return-void
.end method

.method public setMarginTop(I)V
    .locals 3

    .prologue
    .line 940
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->margins:[I

    const/4 v1, 0x1

    const-string/jumbo v2, "margins"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(I[IILjava/lang/String;)V

    .line 941
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1104
    :cond_0
    iput p1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxHeightStr:I

    .line 1105
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1097
    :cond_0
    iput p1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->maxWidthStr:I

    .line 1098
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1111
    :cond_0
    iput p1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->minHeightStr:I

    .line 1112
    return-void
.end method

.method public setOpacity(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1284
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    .line 1285
    iget v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    iget v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->setAlpha(Landroid/view/View;F)V

    .line 1287
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->viewType:Lcom/alipay/android/app/template/view/ViewType;

    sget-object v1, Lcom/alipay/android/app/template/view/ViewType;->body:Lcom/alipay/android/app/template/view/ViewType;

    if-ne v0, v1, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->opacity:F

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/UiUtil;->setAlpha(Landroid/view/View;F)V

    .line 1290
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1291
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1294
    :cond_1
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1187
    const-string/jumbo v0, "vertical"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->orientation:I

    .line 1189
    invoke-direct {p0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a()V

    .line 1190
    return-void

    .line 1188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1278
    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/app/template/view/OverflowType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/OverflowType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentOverflow:Lcom/alipay/android/app/template/view/OverflowType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPadding(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 875
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v1, v0, v3

    const/4 v1, 0x2

    .line 876
    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    aput v2, v0, v1

    .line 877
    sget-object v1, Lcom/alipay/android/app/template/view/StyleEnum;->PADDING:Lcom/alipay/android/app/template/view/StyleEnum;

    invoke-static {p1, v1, v0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Lcom/alipay/android/app/template/view/StyleEnum;[I)V

    .line 878
    const-string/jumbo v1, "paddings"

    invoke-direct {p0, v1, v0, v3}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    .line 881
    :cond_0
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 3

    .prologue
    .line 913
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    const/4 v1, 0x3

    const-string/jumbo v2, "paddings"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(I[IILjava/lang/String;)V

    .line 914
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 3

    .prologue
    .line 892
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    const/4 v1, 0x0

    const-string/jumbo v2, "paddings"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(I[IILjava/lang/String;)V

    .line 893
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 3

    .prologue
    .line 900
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    const/4 v1, 0x2

    const-string/jumbo v2, "paddings"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(I[IILjava/lang/String;)V

    .line 901
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->paddings:[I

    const/4 v1, 0x1

    const-string/jumbo v2, "paddings"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(I[IILjava/lang/String;)V

    .line 897
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1211
    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/app/template/view/PositionType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/PositionType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionType:Lcom/alipay/android/app/template/view/PositionType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1215
    :goto_0
    return-void

    .line 1213
    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/android/app/template/view/PositionType;->staticc:Lcom/alipay/android/app/template/view/PositionType;

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positionType:Lcom/alipay/android/app/template/view/PositionType;

    goto :goto_0
.end method

.method public setRight(I)V
    .locals 3

    .prologue
    .line 1253
    const-string/jumbo v0, "right"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1256
    :cond_0
    return-void
.end method

.method public setTemplateElement(Lcom/alipay/android/app/template/view/widget/TElement;)V
    .locals 1

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    .line 228
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->markableProps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/alipay/android/app/template/view/widget/TElement;->setNeedMarkUp()V

    .line 231
    :cond_0
    return-void
.end method

.method public setTextAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1176
    invoke-static {p1}, Lcom/alipay/android/app/template/view/AlignType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlign:Lcom/alipay/android/app/template/view/AlignType;

    .line 1177
    invoke-direct {p0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a()V

    .line 1178
    return-void
.end method

.method public setTop(I)V
    .locals 3

    .prologue
    .line 1235
    const-string/jumbo v0, "top"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1236
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->positions:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1238
    :cond_0
    return-void
.end method

.method public setTransition(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1263
    .line 1264
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    const-string/jumbo v0, "s"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1267
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1268
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 1269
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mTransition:I

    .line 1274
    :goto_0
    return-void

    .line 1272
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->mNeedAnim:Z

    goto :goto_0
.end method

.method public setWebkitBoxAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1205
    invoke-static {p1}, Lcom/alipay/android/app/template/view/AlignType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignV:Lcom/alipay/android/app/template/view/AlignType;

    .line 1206
    invoke-direct {p0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a()V

    .line 1207
    return-void
.end method

.method public setWebkitBoxFlex(F)V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->d:Lcom/alipay/android/app/template/view/widget/TElement;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TElement;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->hasOnreloadFunc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-static {}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->getInstance()Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/anim/AnimatorLayoutUtil;->addParamToLayout(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 1196
    :cond_0
    iput p1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->weight:F

    .line 1197
    return-void
.end method

.method public setWebkitBoxPack(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1200
    invoke-static {p1}, Lcom/alipay/android/app/template/view/AlignType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/AlignType;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->contentAlignH:Lcom/alipay/android/app/template/view/AlignType;

    .line 1201
    invoke-direct {p0}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a()V

    .line 1202
    return-void
.end method

.method public setWidth(I)V
    .locals 3

    .prologue
    .line 849
    const-string/jumbo v0, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->a(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    iput p1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    .line 852
    :cond_0
    return-void
.end method

.method public setzIndex(I)V
    .locals 0

    .prologue
    .line 1259
    iput p1, p0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->zIndex:I

    .line 1260
    return-void
.end method
