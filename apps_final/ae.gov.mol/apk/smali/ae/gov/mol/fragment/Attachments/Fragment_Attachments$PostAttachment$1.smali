.class Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment$1;
.super Ljava/lang/Object;
.source "Fragment_Attachments.java"

# interfaces
.implements Lcom/stanfy/gsonxml/XmlParserCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;-><init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment$1;->this$1:Lae/gov/mol/fragment/Attachments/Fragment_Attachments$PostAttachment;

    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 2

    .prologue
    .line 866
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
