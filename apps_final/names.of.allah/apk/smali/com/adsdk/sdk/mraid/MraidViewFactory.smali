.class public Lcom/adsdk/sdk/mraid/MraidViewFactory;
.super Ljava/lang/Object;


# static fields
.field protected static instance:Lcom/adsdk/sdk/mraid/MraidViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidViewFactory;

    invoke-direct {v0}, Lcom/adsdk/sdk/mraid/MraidViewFactory;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/mraid/MraidViewFactory;->instance:Lcom/adsdk/sdk/mraid/MraidViewFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/adsdk/sdk/mraid/MraidView;
    .locals 1

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidViewFactory;->instance:Lcom/adsdk/sdk/mraid/MraidViewFactory;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/mraid/MraidViewFactory;->internalCreate(Landroid/content/Context;)Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Lcom/adsdk/sdk/mraid/MraidView;
    .locals 1

    sget-object v0, Lcom/adsdk/sdk/mraid/MraidViewFactory;->instance:Lcom/adsdk/sdk/mraid/MraidViewFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/adsdk/sdk/mraid/MraidViewFactory;->internalCreate(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/adsdk/sdk/mraid/MraidViewFactory;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lcom/adsdk/sdk/mraid/MraidViewFactory;->instance:Lcom/adsdk/sdk/mraid/MraidViewFactory;

    return-void
.end method


# virtual methods
.method protected internalCreate(Landroid/content/Context;)Lcom/adsdk/sdk/mraid/MraidView;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {v0, p1}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected internalCreate(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)Lcom/adsdk/sdk/mraid/MraidView;
    .locals 1

    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/mraid/MraidView$ExpansionStyle;Lcom/adsdk/sdk/mraid/MraidView$NativeCloseButtonStyle;Lcom/adsdk/sdk/mraid/MraidView$PlacementType;)V

    return-object v0
.end method
