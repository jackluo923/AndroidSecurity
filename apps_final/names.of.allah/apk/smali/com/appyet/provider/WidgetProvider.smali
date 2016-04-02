.class public Lcom/appyet/provider/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appyet/provider/WidgetProvider;->e:[I

    const-string v0, "ACTION_WIDGET_FORWARD"

    sput-object v0, Lcom/appyet/provider/WidgetProvider;->b:Ljava/lang/String;

    const-string v0, "ACTION_WIDGET_BACKWARD"

    sput-object v0, Lcom/appyet/provider/WidgetProvider;->c:Ljava/lang/String;

    const-string v0, "ACTION_WIDGET_OPEN"

    sput-object v0, Lcom/appyet/provider/WidgetProvider;->d:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        -0xde5543
        -0x5b00
        -0x42d5b2
        -0x9ab495
        -0x783fce
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-wide/high16 v10, 0x400c000000000000L    # 3.5

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const/4 v1, 0x2

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_4

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appWidgetMinHeight"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x404b800000000000L    # 55.0

    div-double/2addr v2, v4

    cmpg-double v4, v2, v6

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpg-double v0, v2, v8

    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    cmpg-double v0, v2, v10

    if-gtz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x404b800000000000L    # 55.0

    div-double/2addr v2, v4

    cmpg-double v4, v2, v6

    if-lez v4, :cond_0

    cmpg-double v0, v2, v8

    if-gtz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    cmpg-double v0, v2, v10

    if-gtz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static a(Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/FeedItem;)Landroid/net/Uri;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appyet/context/ApplicationContext;->j:Lcom/appyet/manager/al;

    invoke-virtual {p1}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appyet/manager/al;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/appyet/data/FeedItem;->getThumbnailMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/appyet/manager/al;->d(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/appyet/context/ApplicationContext;

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, v2, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    move/from16 v0, p2

    int-to-long v8, v0

    invoke-virtual {v4, v8, v9}, Lcom/appyet/manager/d;->j(J)Lcom/appyet/data/Widget;

    move-result-object v11

    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, v2, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v11}, Lcom/appyet/data/Widget;->getModuleId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/appyet/manager/d;->g(J)Lcom/appyet/data/Module;

    move-result-object v12

    invoke-virtual {v12}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v8, "Feed"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v2, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v11}, Lcom/appyet/data/Widget;->getModuleId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/appyet/manager/d;->e(J)Ljava/util/List;

    move-result-object v3

    :goto_1
    move-object v10, v3

    :goto_2
    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/appyet/provider/WidgetProvider;->a(Landroid/content/Context;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_3
    const v3, 0x7f0a0068

    const-string v4, "0/0"

    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0a0069

    invoke-virtual {v12}, Lcom/appyet/data/Module;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/appyet/f/w;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0a0065

    invoke-virtual {v2}, Lcom/appyet/context/ApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f08005b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v11}, Lcom/appyet/data/Widget;->getModuleId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    sget-object v6, Lcom/appyet/provider/WidgetProvider;->e:[I

    array-length v6, v6

    rem-int/2addr v4, v6

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v7, Lcom/appyet/provider/WidgetProvider;->e:[I

    aget v4, v7, v4

    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    const v4, 0x7f0a006a

    invoke-virtual {v5, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f030033

    invoke-direct {v3, v4, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v4, 0x7f0a006e

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const v4, 0x7f0a006e

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    const v4, 0x7f0a006f

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    iget-object v2, v2, Lcom/appyet/context/ApplicationContext;->e:Lcom/appyet/manager/ap;

    invoke-virtual {v2, v3}, Lcom/appyet/manager/ap;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v12}, Lcom/appyet/data/Module;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v8, "FeedQuery"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v3, v2, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v3, v3, Lcom/appyet/metadata/Metadata;->MetadataModuleFeedSqls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/appyet/metadata/MetadataModuleFeedSql;

    move-object v4, v0

    iget-object v3, v2, Lcom/appyet/context/ApplicationContext;->q:Lcom/appyet/metadata/Metadata;

    iget-object v3, v3, Lcom/appyet/metadata/Metadata;->MetadataModules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appyet/metadata/MetadataModule;

    iget v10, v3, Lcom/appyet/metadata/MetadataModule;->Id:I

    iget v13, v4, Lcom/appyet/metadata/MetadataModuleFeedSql;->ModuleId:I

    if-ne v10, v13, :cond_4

    iget-object v3, v3, Lcom/appyet/metadata/MetadataModule;->Guid:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/appyet/data/Module;->getGuid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-object v4, v4, Lcom/appyet/metadata/MetadataModuleFeedSql;->Query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/appyet/manager/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :pswitch_0
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03001f

    invoke-direct {v5, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_3

    :pswitch_1
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03001e

    invoke-direct {v5, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_3

    :pswitch_2
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030022

    invoke-direct {v5, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v11}, Lcom/appyet/data/Widget;->getPosition()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    add-int v3, v3, p3

    if-gez v3, :cond_7

    const/4 v3, 0x0

    :cond_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1f

    const/4 v3, 0x0

    move v9, v3

    :goto_4
    add-int/lit8 v3, v9, -0x1

    if-gez v3, :cond_1e

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v8, v3

    :goto_5
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appyet/data/FeedItem;

    invoke-static {v2, v3}, Lcom/appyet/provider/WidgetProvider;->a(Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/FeedItem;)Landroid/net/Uri;

    move-result-object v13

    if-ltz v8, :cond_8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v8, v3, :cond_8

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appyet/data/FeedItem;

    invoke-static {v2, v3}, Lcom/appyet/provider/WidgetProvider;->a(Lcom/appyet/context/ApplicationContext;Lcom/appyet/data/FeedItem;)Landroid/net/Uri;

    move-result-object v3

    move-object v7, v3

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/appyet/provider/WidgetProvider;->a(Landroid/content/Context;I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    move-object v4, v5

    move-object v5, v6

    :goto_6
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v14, 0x7f030033

    invoke-direct {v6, v3, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f0a006e

    invoke-virtual {v6, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const v3, 0x7f0a006e

    invoke-virtual {v6, v3, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    if-eqz v5, :cond_9

    const v3, 0x7f0a006e

    invoke-virtual {v6, v3, v5}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_9
    const v3, 0x7f0a006f

    const/4 v14, 0x0

    invoke-virtual {v6, v3, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v3, Landroid/content/Intent;

    const-class v14, Lcom/appyet/provider/WidgetProvider;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v14, Lcom/appyet/provider/WidgetProvider;->b:Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v14, Lcom/appyet/provider/WidgetProvider;->a:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v14, 0x7f0a006f

    invoke-virtual {v6, v14, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    int-to-long v14, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/appyet/data/Widget;->setPosition(Ljava/lang/Long;)V

    iget-object v3, v2, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v3, v11}, Lcom/appyet/manager/d;->b(Lcom/appyet/data/Widget;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v9, :cond_a

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appyet/data/FeedItem;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/16 v14, 0x64

    if-lt v11, v14, :cond_18

    const v11, 0x7f0a0068

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_7
    const v11, 0x7f0a0069

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/appyet/data/Module;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/appyet/f/w;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " / "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v15

    invoke-static {v2, v15}, Lcom/appyet/d/a;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v11, 0x7f0a0065

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-nez v13, :cond_19

    const/4 v11, 0x1

    const/4 v14, 0x1

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    sget-object v14, Lcom/appyet/provider/WidgetProvider;->e:[I

    array-length v14, v14

    rem-int/2addr v9, v14

    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v15, Lcom/appyet/provider/WidgetProvider;->e:[I

    aget v9, v15, v9

    invoke-virtual {v14, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    const v9, 0x7f0a006a

    invoke-virtual {v4, v9, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_8
    new-instance v9, Landroid/content/Intent;

    const-class v11, Lcom/appyet/provider/WidgetProvider;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v11, Lcom/appyet/provider/WidgetProvider;->d:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v11, Lcom/appyet/provider/WidgetProvider;->a:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getFeedItemId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v9, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    if-nez v13, :cond_1a

    const v9, 0x7f0a006a

    invoke-virtual {v4, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_a
    :goto_9
    if-ltz v8, :cond_b

    if-eqz v5, :cond_b

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v8, :cond_1d

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appyet/data/FeedItem;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    const/16 v9, 0x64

    if-lt v4, v9, :cond_1b

    const v4, 0x7f0a0068

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_a
    const v4, 0x7f0a0069

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/appyet/data/Module;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/appyet/f/w;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getPubDate()Ljava/util/Date;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/appyet/d/a;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v4, 0x7f0a0065

    invoke-virtual {v3}, Lcom/appyet/data/FeedItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-nez v7, :cond_1c

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lcom/appyet/provider/WidgetProvider;->e:[I

    array-length v4, v4

    rem-int v4, v8, v4

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v8, Lcom/appyet/provider/WidgetProvider;->e:[I

    aget v4, v8, v4

    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    const v4, 0x7f0a006a

    invoke-virtual {v5, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_b
    :goto_b
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :pswitch_3
    if-nez p3, :cond_d

    const/4 v4, 0x0

    if-nez v13, :cond_c

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001f

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :cond_c
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030018

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :cond_d
    if-nez v7, :cond_e

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f030021

    invoke-direct {v4, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_c
    if-nez v13, :cond_f

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030020

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :cond_e
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f03001a

    invoke-direct {v4, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_c

    :cond_f
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030019

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :pswitch_4
    if-nez p3, :cond_11

    const/4 v4, 0x0

    if-nez v13, :cond_10

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001e

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :cond_10
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030017

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :cond_11
    if-nez v7, :cond_12

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f030026

    invoke-direct {v4, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_d
    if-nez v13, :cond_13

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030025

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :cond_12
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f03001c

    invoke-direct {v4, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_d

    :cond_13
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001b

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :pswitch_5
    if-nez p3, :cond_15

    const/4 v4, 0x0

    if-nez v13, :cond_14

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030022

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :cond_14
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030017

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :cond_15
    if-nez v7, :cond_16

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f030024

    invoke-direct {v4, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_e
    if-nez v13, :cond_17

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030023

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :cond_16
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f03001c

    invoke-direct {v4, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_e

    :cond_17
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001b

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_6

    :cond_18
    const v11, 0x7f0a0068

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_19
    const v9, 0x7f0a0063

    invoke-virtual {v4, v9, v13}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    goto/16 :goto_8

    :cond_1a
    const v9, 0x7f0a0063

    invoke-virtual {v4, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_9

    :cond_1b
    const v4, 0x7f0a0068

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_1c
    const v3, 0x7f0a0063

    invoke-virtual {v5, v3, v7}, Landroid/widget/RemoteViews;->setImageViewUri(ILandroid/net/Uri;)V

    goto/16 :goto_b

    :cond_1d
    const v3, 0x7f0a0065

    const-string v4, ""

    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0a0063

    const v4, 0x7f0200fe

    invoke-virtual {v5, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_b

    :cond_1e
    move v8, v3

    goto/16 :goto_5

    :cond_1f
    move v9, v3

    goto/16 :goto_4

    :cond_20
    move-object v10, v3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/appyet/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, p2, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    invoke-virtual {v0, v2}, Lcom/appyet/manager/d;->e(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MFRD://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".widget/id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appyet/provider/WidgetProvider;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/provider/WidgetProvider;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/provider/WidgetProvider;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {p1, v1, v0, v2}, Lcom/appyet/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/provider/WidgetProvider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/provider/WidgetProvider;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/appyet/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/provider/WidgetProvider;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appyet/provider/WidgetProvider;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/appyet/activity/MainActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ACTION_WIDGET_OPEN_FEEDITEM_ID"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p3

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p3, v0

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3}, Lcom/appyet/provider/WidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
