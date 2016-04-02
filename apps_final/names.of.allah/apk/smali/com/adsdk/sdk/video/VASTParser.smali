.class public Lcom/adsdk/sdk/video/VASTParser;
.super Ljava/lang/Object;


# static fields
.field private static final DURATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final PERCENT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^([0-5]?\\d):([0-5]?\\d):([0-5]?\\d)(?:\\.(\\d?\\d?\\d))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/adsdk/sdk/video/VASTParser;->DURATION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d?\\d?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/adsdk/sdk/video/VASTParser;->PERCENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVastFromStream(Ljava/io/InputStream;)Lcom/adsdk/sdk/video/VAST;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    :try_start_0
    const-class v2, Lcom/adsdk/sdk/video/VAST;

    invoke-interface {v0, v2, p0}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/VAST;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static createVastFromString(Ljava/lang/String;)Lcom/adsdk/sdk/video/VAST;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    :try_start_0
    const-class v2, Lcom/adsdk/sdk/video/VAST;

    invoke-interface {v0, v2, p0}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/VAST;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static fillVideoDataFromVast(Lcom/adsdk/sdk/video/VAST;)Lcom/adsdk/sdk/video/VideoData;
    .locals 13

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v6, Lcom/adsdk/sdk/video/VideoData;

    invoke-direct {v6}, Lcom/adsdk/sdk/video/VideoData;-><init>()V

    iget-object v0, p0, Lcom/adsdk/sdk/video/VAST;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v2

    move-object v1, v4

    move-object v2, v5

    :cond_3
    if-eqz v0, :cond_0

    iget v4, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->sequence:I

    invoke-virtual {v6, v4}, Lcom/adsdk/sdk/video/VideoData;->setSequence(I)V

    const/4 v4, 0x4

    iput v4, v6, Lcom/adsdk/sdk/video/VideoData;->orientation:I

    iget-object v4, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;->delivery:Ljava/lang/String;

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;->delivery:Ljava/lang/String;

    const-string v5, "streaming"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    iput v11, v6, Lcom/adsdk/sdk/video/VideoData;->delivery:I

    :goto_2
    iput v10, v6, Lcom/adsdk/sdk/video/VideoData;->display:I

    iget-object v4, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;->type:Ljava/lang/String;

    iput-object v4, v6, Lcom/adsdk/sdk/video/VideoData;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;->bitrate:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;->bitrate:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v6, Lcom/adsdk/sdk/video/VideoData;->bitrate:I

    :cond_4
    iget v4, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;->width:I

    iput v4, v6, Lcom/adsdk/sdk/video/VideoData;->width:I

    iget v4, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;->height:I

    iput v4, v6, Lcom/adsdk/sdk/video/VideoData;->height:I

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;->url:Ljava/lang/String;

    iput-object v0, v6, Lcom/adsdk/sdk/video/VideoData;->videoUrl:Ljava/lang/String;

    iget-object v0, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->duration:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->duration:Ljava/lang/String;

    invoke-static {v0}, Lcom/adsdk/sdk/video/VASTParser;->getDurationFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/adsdk/sdk/video/VideoData;->duration:I

    :cond_5
    iput-boolean v11, v6, Lcom/adsdk/sdk/video/VideoData;->showSkipButton:Z

    iget-object v0, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->skipoffset:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->skipoffset:Ljava/lang/String;

    iget v4, v6, Lcom/adsdk/sdk/video/VideoData;->duration:I

    invoke-static {v0, v4}, Lcom/adsdk/sdk/video/VASTParser;->getSkipoffsetFromString(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/adsdk/sdk/video/VideoData;->showSkipButtonAfter:I

    :cond_6
    iget-object v0, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->trackingEvents:Ljava/util/List;

    invoke-static {v6, v0}, Lcom/adsdk/sdk/video/VASTParser;->getTrackingEvents(Lcom/adsdk/sdk/video/VideoData;Ljava/util/List;)V

    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad;->inLine:Lcom/adsdk/sdk/video/VAST$Ad$InLine;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$InLine;->impressions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->videoClicks:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->videoClicks:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;->clickThrough:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->videoClicks:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;->clickTracking:Ljava/util/List;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/adsdk/sdk/video/VideoData;->videoClickTracking:Ljava/util/List;

    iget-object v0, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->videoClicks:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;->clickTracking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_7
    iget-object v0, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->videoClicks:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$VideoClicks;->clickThrough:Ljava/lang/String;

    iput-object v0, v6, Lcom/adsdk/sdk/video/VideoData;->videoClickThrough:Ljava/lang/String;

    :cond_8
    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad;->inLine:Lcom/adsdk/sdk/video/VAST$Ad$InLine;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$InLine;->creatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    move-object v1, v3

    :goto_5
    if-eqz v1, :cond_b

    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->nonLinearClickThrough:Ljava/lang/String;

    iput-object v0, v6, Lcom/adsdk/sdk/video/VideoData;->overlayClickThrough:Ljava/lang/String;

    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->nonLinearClickTracking:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/adsdk/sdk/video/VideoData;->overlayClickTracking:Ljava/lang/String;

    iget v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->height:I

    iput v0, v6, Lcom/adsdk/sdk/video/VideoData;->overlayHeight:I

    iget v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->width:I

    iput v0, v6, Lcom/adsdk/sdk/video/VideoData;->overlayWidth:I

    iput v10, v6, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlayAfter:I

    iput-boolean v11, v6, Lcom/adsdk/sdk/video/VideoData;->showHtmlOverlay:Z

    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->staticResource:Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;

    if-eqz v0, :cond_14

    iput v11, v6, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->staticResource:Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;->type:Ljava/lang/String;

    const-string v2, "image"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "<body style=\'\"\'margin: 0px; padding: 0px; text-align:center;\'\"\'><img src=\'\"\'{0}\'\"\' width=\'\"\'{1}\'dp\"\' height=\'\"\'{2}\'dp\"\'/></body>"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->staticResource:Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;

    iget-object v4, v4, Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v10

    iget v4, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v11

    const/4 v4, 0x2

    iget v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%}</style>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayMarkup:Ljava/lang/String;

    :cond_a
    :goto_6
    iget-object v0, v3, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;->trackingEvents:Ljava/util/List;

    invoke-static {v6, v0}, Lcom/adsdk/sdk/video/VASTParser;->getTrackingEvents(Lcom/adsdk/sdk/video/VideoData;Ljava/util/List;)V

    :cond_b
    move-object v3, v6

    goto/16 :goto_0

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/VAST$Ad;

    iget-object v1, v0, Lcom/adsdk/sdk/video/VAST$Ad;->inLine:Lcom/adsdk/sdk/video/VAST$Ad$InLine;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/adsdk/sdk/video/VAST$Ad;->inLine:Lcom/adsdk/sdk/video/VAST$Ad$InLine;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$InLine;->creatives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    move-object v0, v2

    move-object v1, v4

    move-object v2, v5

    :goto_7
    if-nez v2, :cond_3

    move-object v4, v1

    move-object v5, v2

    move-object v2, v0

    goto/16 :goto_1

    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative;

    iget-object v9, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    if-eqz v9, :cond_d

    iget-object v9, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v9, v9, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->mediaFiles:Ljava/util/List;

    if-eqz v9, :cond_d

    iget-object v9, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v9, v9, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->mediaFiles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v2, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->linear:Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;

    iget-object v2, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear;->mediaFiles:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$MediaFile;

    move-object v12, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_7

    :cond_f
    iput v10, v6, Lcom/adsdk/sdk/video/VideoData;->delivery:I

    goto/16 :goto_2

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/VAST$Ad$Impression;

    iget-object v5, v6, Lcom/adsdk/sdk/video/VideoData;->impressionEvents:Ljava/util/Vector;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Impression;->url:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$ClickTracking;

    iget-object v5, v6, Lcom/adsdk/sdk/video/VideoData;->videoClickTracking:Ljava/util/List;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Linear$ClickTracking;->url:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative;

    iget-object v2, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->nonLinearAds:Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->nonLinearAds:Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;

    iget-object v2, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;->nonLinears:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->nonLinearAds:Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;

    iget-object v2, v2, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;->nonLinears:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v1, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->nonLinearAds:Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;->nonLinears:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;

    iget-object v3, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative;->nonLinearAds:Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds;

    goto/16 :goto_5

    :cond_13
    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->staticResource:Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;

    iget-object v0, v0, Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;->type:Ljava/lang/String;

    const-string v2, "x-javascript"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<script src=\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->staticResource:Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"></script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayMarkup:Ljava/lang/String;

    goto/16 :goto_6

    :cond_14
    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->iframeResource:Ljava/lang/String;

    if-eqz v0, :cond_15

    iput v10, v6, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->iframeResource:Ljava/lang/String;

    iput-object v0, v6, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayUrl:Ljava/lang/String;

    goto/16 :goto_6

    :cond_15
    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->htmlResource:Ljava/lang/String;

    if-eqz v0, :cond_a

    iput v11, v6, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayType:I

    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$NonLinearAds$NonLinear;->htmlResource:Ljava/lang/String;

    iput-object v0, v6, Lcom/adsdk/sdk/video/VideoData;->htmlOverlayMarkup:Ljava/lang/String;

    goto/16 :goto_6
.end method

.method public static getDurationFromString(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/adsdk/sdk/video/VASTParser;->DURATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    mul-int/lit8 v1, v3, 0x3c

    add-int/2addr v0, v1

    mul-int/lit16 v1, v2, 0xe10

    add-int/2addr v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getSkipoffsetFromString(Ljava/lang/String;I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/adsdk/sdk/video/VASTParser;->DURATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lcom/adsdk/sdk/video/VASTParser;->PERCENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    mul-int/lit8 v1, v3, 0x3c

    add-int/2addr v0, v1

    mul-int/lit16 v1, v2, 0xe10

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse skipoffset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ne v1, v5, :cond_0

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, p1

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long v0, v1, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    long-to-int v0, v0

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse skipoffset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTrackingEvents(Lcom/adsdk/sdk/video/VideoData;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adsdk/sdk/video/VideoData;",
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;

    iget-object v0, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->event:Ljava/lang/String;

    const-string v3, "start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "creativeView"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/VideoData;->startEvents:Ljava/util/Vector;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v3, "complete"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/video/VideoData;->completeEvents:Ljava/util/Vector;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v3, "mute"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/adsdk/sdk/video/VideoData;->muteEvents:Ljava/util/Vector;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v3, "unmute"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/adsdk/sdk/video/VideoData;->unmuteEvents:Ljava/util/Vector;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v3, "pause"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/adsdk/sdk/video/VideoData;->pauseEvents:Ljava/util/Vector;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v3, "resume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/adsdk/sdk/video/VideoData;->resumeEvents:Ljava/util/Vector;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    const-string v3, "skip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "close"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/adsdk/sdk/video/VideoData;->skipEvents:Ljava/util/Vector;

    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-string v3, "firstQuartile"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v0, p0, Lcom/adsdk/sdk/video/VideoData;->duration:I

    div-int/lit8 v3, v0, 0x4

    iget-object v0, p0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v4, p0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const-string v3, "midpoint"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v0, p0, Lcom/adsdk/sdk/video/VideoData;->duration:I

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v4, p0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    const-string v3, "thirdQuartile"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adsdk/sdk/video/VideoData;->duration:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v3, v0, 0x4

    iget-object v0, p0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_f

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v4, p0, Lcom/adsdk/sdk/video/VideoData;->timeTrackingEvents:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v1, v1, Lcom/adsdk/sdk/video/VAST$Ad$Creative$Tracking;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
