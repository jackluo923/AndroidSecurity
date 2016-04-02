.class Lorg/apache/james/mime4j/message/Header$1;
.super Lorg/apache/james/mime4j/parser/AbstractContentHandler;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/james/mime4j/message/Header;-><init>(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/james/mime4j/message/Header;

.field final synthetic val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/message/Header;Lorg/apache/james/mime4j/parser/MimeStreamParser;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Header$1;->this$0:Lorg/apache/james/mime4j/message/Header;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/Header$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endHeader()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header$1;->val$parser:Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->stop()V

    .line 82
    return-void
.end method

.method public field(Lorg/apache/james/mime4j/parser/Field;)V
    .locals 1
    .param p1, "field"    # Lorg/apache/james/mime4j/parser/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header$1;->this$0:Lorg/apache/james/mime4j/message/Header;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 86
    return-void
.end method
