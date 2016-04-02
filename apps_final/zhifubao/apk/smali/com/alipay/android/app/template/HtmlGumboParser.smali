.class public Lcom/alipay/android/app/template/HtmlGumboParser;
.super Ljava/lang/Object;
.source "HtmlGumboParser.java"


# static fields
.field public static final KEY_CHILDREN:Ljava/lang/String; = "children"

.field public static final KEY_TAG:Ljava/lang/String; = "tag"

.field private static a:Lcom/alipay/android/app/template/HtmlGumboParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "gumbo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/template/HtmlGumboParser;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/alipay/android/app/template/HtmlGumboParser;->a:Lcom/alipay/android/app/template/HtmlGumboParser;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/alipay/android/app/template/HtmlGumboParser;

    invoke-direct {v0}, Lcom/alipay/android/app/template/HtmlGumboParser;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/HtmlGumboParser;->a:Lcom/alipay/android/app/template/HtmlGumboParser;

    .line 59
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/HtmlGumboParser;->a:Lcom/alipay/android/app/template/HtmlGumboParser;

    return-object v0
.end method


# virtual methods
.method public native parseHtmlToJson(Ljava/lang/String;Lcom/alipay/android/app/template/HtmlGumboParser$Options;)Lorg/json/JSONObject;
.end method
