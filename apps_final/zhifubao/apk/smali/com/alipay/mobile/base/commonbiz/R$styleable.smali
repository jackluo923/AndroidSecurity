.class public final Lcom/alipay/mobile/base/commonbiz/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final public_service_circle_page_indicator:[I

.field public static final public_service_circle_page_indicator_android_background:I = 0x1

.field public static final public_service_circle_page_indicator_android_orientation:I = 0x0

.field public static final public_service_circle_page_indicator_circle_centered:I = 0x2

.field public static final public_service_circle_page_indicator_circle_radius:I = 0x3

.field public static final public_service_circle_page_indicator_circle_snap:I = 0x4

.field public static final public_service_circle_page_indicator_circle_stroke_width:I = 0x5

.field public static final public_service_circle_page_indicator_fill_color:I = 0x6

.field public static final public_service_circle_page_indicator_page_color:I = 0x7

.field public static final public_service_circle_page_indicator_stroke_color:I = 0x8

.field public static final public_service_view_pager_indicator:[I

.field public static final public_service_view_pager_indicator_circle_page_indicator_style:I = 0x0

.field public static final widgetContainer:[I

.field public static final widgetContainer_containerId:I = 0x0

.field public static final widgetContainer_groupGap:I = 0x1

.field public static final widgetContainer_isAutoRefresh:I = 0x2

.field public static final widgetMsgFlag:[I

.field public static final widgetMsgFlag_bindingWidget:I = 0x0

.field public static final widgetMsgFlag_isNeedSyncData:I = 0x1

.field public static final widgetMsgFlag_maxCount:I = 0x4

.field public static final widgetMsgFlag_overTenShowN:I = 0x3

.field public static final widgetMsgFlag_pointPadding:I = 0x2

.field public static final yearMonthPicker:[I

.field public static final yearMonthPicker_startDate:I = 0x0

.field public static final yearMonthPicker_yearFirst:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 597
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/base/commonbiz/R$styleable;->public_service_circle_page_indicator:[I

    .line 756
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 757
    const v2, 0x22010002

    aput v2, v0, v1

    .line 756
    sput-object v0, Lcom/alipay/mobile/base/commonbiz/R$styleable;->public_service_view_pager_indicator:[I

    .line 786
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/base/commonbiz/R$styleable;->widgetContainer:[I

    .line 851
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/mobile/base/commonbiz/R$styleable;->widgetMsgFlag:[I

    .line 939
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/alipay/mobile/base/commonbiz/R$styleable;->yearMonthPicker:[I

    .line 570
    return-void

    .line 597
    nop

    :array_0
    .array-data 4
        0x10100c4
        0x10100d4
        0x22010001
        0x22010003
        0x22010005
        0x22010006
        0x22010009
        0x2201000d
        0x22010010
    .end array-data

    .line 786
    :array_1
    .array-data 4
        0x22010008
        0x2201000a
        0x2201000b
    .end array-data

    .line 851
    :array_2
    .array-data 4
        0x22010000
        0x2201000c
        0x2201000e
        0x22010011
        0x22010012
    .end array-data

    .line 939
    :array_3
    .array-data 4
        0x2201000f
        0x22010013
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
