.class public Lcom/inmobi/androidsdk/IMBrowserActivity;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field public static final ANIMATED:Ljava/lang/String; = "isAnimationEnabledOnDimiss"

.field public static final BROWSER_ACTIVITY:I = 0x64

.field public static final EXPANDDATA:Ljava/lang/String; = "data"

.field public static final EXPAND_ACTIVITY:I = 0x66

.field public static final EXTRA_BROWSER_ACTIVITY_TYPE:Ljava/lang/String; = "extra_browser_type"

.field public static final EXTRA_URL:Ljava/lang/String; = "extra_url"

.field public static final GET_IMAGE:I = 0x65

.field public static final INTERSTITIAL_ACTIVITY:I = 0x65

.field private static b:Lcom/inmobi/re/container/IMWebView;

.field private static c:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

.field private static d:Lcom/inmobi/re/container/IMWebView;

.field private static e:Landroid/widget/FrameLayout;

.field private static f:Landroid/os/Message;

.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/re/controller/util/StartActivityForResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static m:I

.field private static o:Landroid/app/Activity;


# instance fields
.field private a:Lcom/inmobi/re/container/IMWebView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:F

.field private i:Ljava/lang/Boolean;

.field private j:Lcom/inmobi/re/container/CustomView;

.field private k:J

.field private n:I

.field private p:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->l:Ljava/util/Map;

    const/4 v0, 0x0

    sput v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:J

    new-instance v0, Lcom/inmobi/androidsdk/a;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/a;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->p:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic a()Lcom/inmobi/re/container/IMWebView;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/IMWebView;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/inmobi/re/controller/JSUtilityController;->formats:[Ljava/text/SimpleDateFormat;

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    :try_start_0
    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    sget-object v3, Lcom/inmobi/re/controller/JSUtilityController;->calendarUntiFormats:[Ljava/text/SimpleDateFormat;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    :try_start_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_0
    return-object v1

    :catch_0
    move-exception v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v3, v2, -0x1

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "[InMobi]-4.4.1"

    const-string v4, "Couldn\'t parse json in create calendar event"

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "[InMobi]-[RE]-4.4.1"

    const-string v3, "Exception parsing recurrence rule"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lorg/json/JSONArray;II)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    if-lt v3, p2, :cond_0

    if-gt v3, p3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    add-int/lit8 v3, v2, -0x1

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "[InMobi]-4.4.1"

    const-string v4, "Couldn\'t parse json in create calendar event"

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "[InMobi]-[RE]-4.4.1"

    const-string v3, "Exception parsing recurrence rule"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v3, p5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    const-string v0, "com.google.android.apps.plus"

    goto :goto_0

    :pswitch_2
    const-string v0, "com.twitter.android"

    goto :goto_0

    :catch_0
    move-exception v0

    packed-switch p1, :pswitch_data_1

    :goto_2
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v2, p5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, p5, v5, v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    :pswitch_3
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "https://www.facebook.com/dialog/feed?app_id=181821551957328&link="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {p3, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&picture="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {p4, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&name=&description="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&redirect_uri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {p3, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "https://m.google.com/app/plus/x/?v=compose&content="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://twitter.com/home?status="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const-string v3, "[InMobi]-[RE]-4.4.1"

    const-string v4, "UTF-8 encoding not supported? What sorcery is this?"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_3
    invoke-virtual {p0, v0, p5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {p0, p5, v5, v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "beginTime"

    invoke-virtual {v2, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "allDay"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "endTime"

    invoke-virtual {v2, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "title"

    invoke-virtual {v2, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eventLocation"

    invoke-virtual {v2, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    invoke-virtual {v2, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "transparent"

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "availability"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string v1, ""

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v1, v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p9

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "frequency"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "daily"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "weekly"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "monthly"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "yearly"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "freq="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "interval"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_2
    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "interval="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_1
    :try_start_3
    const-string v1, "expires"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "until="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "+"

    const-string v7, "Z+"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "-"

    const-string v7, "Z-"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    const-string v1, "daysInWeek"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "byday="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "daysInMonth"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/16 v5, -0x1e

    const/16 v6, 0x1f

    invoke-direct {p0, v1, v5, v6}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lorg/json/JSONArray;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bymonthday="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, "daysInYear"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/16 v5, -0x16c

    const/16 v6, 0x16d

    invoke-direct {p0, v1, v5, v6}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lorg/json/JSONArray;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "byyearday="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "weeksInMonth"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v5, -0x3

    const/4 v6, 0x4

    invoke-direct {p0, v1, v5, v6}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lorg/json/JSONArray;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "byweekno="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "monthsInYear"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v4, 0x1

    const/16 v5, 0xc

    invoke-direct {p0, v1, v4, v5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Lorg/json/JSONArray;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bymonth="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "[InMobi]-[RE]-4.4.1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recurrence rule : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    const-string v1, ""

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "rrule"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    move/from16 v0, p10

    invoke-virtual {p0, v2, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4
    return-void

    :cond_b
    const-string v1, "opaque"

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "availability"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, p10

    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/androidsdk/IMBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_4

    :cond_c
    :try_start_5
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v4, "Frequency is incorrect in recurrence rule"

    const-string v5, "createCalendarEvent"

    invoke-virtual {v1, v4, v5}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move/from16 v0, p10

    invoke-virtual {p0, v2, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_6
    const-string v4, "[InMobi]-[RE]-4.4.1"

    const-string v5, "Exception parsing recurrence rule"

    invoke-static {v4, v5, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_7
    iget-object v5, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v6, "Interval is incorrect in recurrence rule"

    const-string v7, "createCalendarEvent"

    invoke-virtual {v5, v6, v7}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v5, "[InMobi]-[RE]-4.4.1"

    const-string v6, "Invalid interval in recurrence rule"

    invoke-static {v5, v6, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_f
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v5, "Date format is incorrect in until"

    const-string v6, "createCalendarEvent"

    invoke-virtual {v1, v5, v6}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2
.end method

.method private a(Landroid/content/Intent;)V
    .locals 18

    const-string v1, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "takeCameraPicture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "output"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v1, v2}, Lcom/inmobi/androidsdk/IMBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v2, "getGalleryImage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6}, Lcom/inmobi/androidsdk/IMBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v1, v2}, Lcom/inmobi/androidsdk/IMBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v2, "postToSocial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "socialType"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v1, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "link"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v2, "createCalendarEvent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "start"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v1, "end"

    const-wide/16 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "description"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "summary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "transparency"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "recurrence"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v7, p0

    move/from16 v17, v6

    invoke-direct/range {v7 .. v17}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$b;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$b;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x108009a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v2

    const/high16 v3, 0x42300000    # 44.0f

    iget v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v2

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41c80000    # 25.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v2, Lcom/inmobi/re/container/CustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:F

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$g;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$g;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/re/container/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/inmobi/re/container/CustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:F

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->REFRESH:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$h;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$h;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/re/container/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/inmobi/re/container/CustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:F

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->BACK:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$e;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$e;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/re/container/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/inmobi/re/container/CustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:F

    sget-object v4, Lcom/inmobi/re/container/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/re/container/CustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/re/container/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/re/container/CustomView$SwitchIconType;)V

    iput-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Lcom/inmobi/re/container/CustomView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Lcom/inmobi/re/container/CustomView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Lcom/inmobi/re/container/CustomView;

    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$f;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$f;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic b()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->o:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/re/container/CustomView;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Lcom/inmobi/re/container/CustomView;

    return-object v0
.end method

.method static synthetic c()Lcom/inmobi/re/container/IMWebView;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method public static generateId(Lcom/inmobi/re/controller/util/StartActivityForResultCallback;)I
    .locals 2

    sget v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:I

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->l:Ljava/util/Map;

    sget v1, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:I

    return v0
.end method

.method public static requestOnAdDismiss(Landroid/os/Message;)V
    .locals 0

    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Landroid/os/Message;

    return-void
.end method

.method public static setExpandedLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Landroid/widget/FrameLayout;

    :cond_0
    return-void
.end method

.method public static setExpandedWebview(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/re/container/IMWebView;

    :cond_0
    return-void
.end method

.method public static setOriginalActivity(Landroid/app/Activity;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->o:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public static setWebViewListener(Lcom/inmobi/re/container/IMWebView$IMWebViewListener;)V
    .locals 0

    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    return-void
.end method

.method public static setWebview(Lcom/inmobi/re/container/IMWebView;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/re/controller/util/StartActivityForResultCallback;

    invoke-interface {v0, p2, p3}, Lcom/inmobi/re/controller/util/StartActivityForResultCallback;->onActivityResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->l:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->finish()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "onActivityResult failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "In allow true,  device orientation:ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->onOrientationEventChange()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    const-string v0, "[InMobi]-[RE]-4.4.1"

    const-string v1, "In allow true,  device orientation:ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/16 v7, 0x400

    const/4 v4, 0x0

    const/16 v6, 0x64

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "extra_browser_type"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->n:I

    const-string v0, "isAnimationEnabledOnDimiss"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:J

    iget v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->n:I

    if-ne v0, v6, :cond_6

    invoke-virtual {p0, v5}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestWindowFeature(I)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v0, "action"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:F

    const-string v0, "extra_url"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FIRST_INSTANCE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:Ljava/lang/Boolean;

    const-string v2, "[InMobi]-[RE]-4.4.1"

    const-string v3, "IMBrowserActivity-> onCreate"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->startSync()V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    const-string v2, "QAMODE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Lcom/inmobi/re/container/IMWebView;

    sget-object v3, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v2, p0, v3, v5, v5}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v3

    invoke-static {}, Lcom/inmobi/commons/internal/WrapperFunctions;->getParamFillParent()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Landroid/widget/RelativeLayout;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->p:Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v3}, Lcom/inmobi/re/container/IMWebView;->setExternalWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2}, Lcom/inmobi/re/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/inmobi/re/container/IMWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    if-eqz v1, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mk-carrier"

    const-string v2, "117.97.87.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-real-ip"

    const-string v2, "117.97.87.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setContentView(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2, v0}, Lcom/inmobi/re/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->n:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p0}, Lcom/inmobi/re/container/IMWebView;->setActivity(Landroid/app/Activity;)V

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-virtual {v0, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->setActivity(Landroid/app/Activity;)V

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    iget-wide v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->changeContentAreaForInterstitials(J)V

    const/16 v0, 0xe1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$i;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$i;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$c;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$c;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->n:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/re/container/IMWebView;

    sget-object v1, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setState(Lcom/inmobi/re/container/IMWebView$ViewState;)V

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/re/container/IMWebView;

    iput-boolean v5, v0, Lcom/inmobi/re/container/IMWebView;->mIsViewable:Z

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0, p0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->setActivity(Landroid/app/Activity;)V

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0, p0}, Lcom/inmobi/re/container/IMWebView;->setBrowserActivity(Landroid/app/Activity;)V

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mExpandController:Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->handleOrientationForExpand()V

    sget v0, Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;->EXP_CLOSE_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$d;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$d;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$a;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$a;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->releaseAllPlayers()V

    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Landroid/os/Message;

    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mAudioVideoController:Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;->releaseAllPlayers()V

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->b:Lcom/inmobi/re/container/IMWebView;

    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Landroid/widget/FrameLayout;

    :cond_3
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/re/container/IMWebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[RE]-4.4.1"

    const-string v2, "Exception in onDestroy "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    return-void
.end method
