.class final Lcom/appyet/g/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/xmlpull/v1/XmlSerializer;

.field protected b:Lcom/appyet/g/d;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/g/e;->a:Lorg/xmlpull/v1/XmlSerializer;

    new-instance v0, Lcom/appyet/g/o;

    invoke-direct {v0}, Lcom/appyet/g/o;-><init>()V

    iput-object v0, p0, Lcom/appyet/g/e;->b:Lcom/appyet/g/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "methodResponse"

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "param"

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    iget-object v1, p0, Lcom/appyet/g/e;->b:Lcom/appyet/g/d;

    invoke-interface {v1, v0}, Lcom/appyet/g/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v2, "fault"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    iget-object v1, p0, Lcom/appyet/g/e;->b:Lcom/appyet/g/d;

    invoke-interface {v1, v0}, Lcom/appyet/g/d;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "faultString"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "faultCode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Lcom/appyet/g/m;

    invoke-direct {v2, v1, v0}, Lcom/appyet/g/m;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Lcom/appyet/g/p;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/appyet/g/p;

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/appyet/g/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad tag <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> in XMLRPC response - neither <params> nor <fault>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appyet/g/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    new-instance v1, Lcom/appyet/g/l;

    const-string v2, "Error getting result from server."

    invoke-direct {v1, v2, v0}, Lcom/appyet/g/l;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
