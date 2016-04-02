.class public abstract Lorg/apache/james/mime4j/parser/AbstractEntity;
.super Ljava/lang/Object;
.source "AbstractEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStateMachine;


# static fields
.field private static final T_IN_BODYPART:I = -0x2

.field private static final T_IN_MESSAGE:I = -0x3

.field private static final fieldChars:Ljava/util/BitSet;


# instance fields
.field protected final body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

.field protected final config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

.field private endOfHeader:Z

.field protected final endState:I

.field private field:Lorg/apache/james/mime4j/parser/Field;

.field private headerCount:I

.field private lineCount:I

.field private final linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field protected final log:Lorg/apache/commons/logging/Log;

.field protected final parent:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

.field protected final startState:I

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    sput-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    .line 63
    const/16 v0, 0x21

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 64
    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 67
    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_1
    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 3
    .param p1, "parent"    # Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .param p2, "startState"    # I
    .param p3, "endState"    # I
    .param p4, "config"    # Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    .line 86
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->parent:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    .line 87
    iput p2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    .line 88
    iput p2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->startState:I

    .line 89
    iput p3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endState:I

    .line 90
    iput-object p4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->newBodyDescriptor(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    .line 92
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 93
    iput v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    .line 94
    iput-boolean v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    .line 95
    iput v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    .line 96
    return-void
.end method

.method private fillFieldBuffer()Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 126
    iget-boolean v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    if-eqz v5, :cond_0

    .line 127
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 129
    :cond_0
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v4

    .line 130
    .local v4, "maxLineLen":I
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;

    move-result-object v2

    .line 131
    .local v2, "instream":Lorg/apache/james/mime4j/io/LineReaderInputStream;
    new-instance v1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v5, 0x40

    invoke-direct {v1, v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 136
    .local v1, "fieldbuf":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    :cond_1
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v3

    .line 137
    .local v3, "len":I
    if-lez v4, :cond_2

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v5

    add-int/2addr v5, v3

    if-lt v5, v4, :cond_2

    .line 138
    new-instance v5, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string v6, "Maximum line length limit exceeded"

    invoke-direct {v5, v6}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    :cond_2
    if-lez v3, :cond_3

    .line 141
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v5

    invoke-virtual {v1, v5, v8, v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 143
    :cond_3
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->clear()V

    .line 144
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 145
    sget-object v5, Lorg/apache/james/mime4j/parser/Event;->HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    .line 146
    iput-boolean v7, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    .line 171
    :goto_0
    return-object v1

    .line 149
    :cond_4
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v3

    .line 150
    if-lez v3, :cond_5

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    .line 151
    add-int/lit8 v3, v3, -0x1

    .line 153
    :cond_5
    if-lez v3, :cond_6

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_6

    .line 154
    add-int/lit8 v3, v3, -0x1

    .line 156
    :cond_6
    if-nez v3, :cond_7

    .line 158
    iput-boolean v7, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    goto :goto_0

    .line 161
    :cond_7
    iget v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    .line 162
    iget v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    if-le v5, v7, :cond_1

    .line 163
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v5, v8}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v0

    .line 164
    .local v0, "ch":I
    const/16 v5, 0x20

    if-eq v0, v5, :cond_1

    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    goto :goto_0
.end method

.method public static final stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 333
    packed-switch p0, :pswitch_data_0

    .line 383
    const-string v0, "Unknown"

    .line 386
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 335
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_0
    const-string v0, "End of stream"

    .line 336
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 338
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Start message"

    .line 339
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 341
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_2
    const-string v0, "End message"

    .line 342
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 344
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_3
    const-string v0, "Raw entity"

    .line 345
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 347
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_4
    const-string v0, "Start header"

    .line 348
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 350
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_5
    const-string v0, "Field"

    .line 351
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 353
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_6
    const-string v0, "End header"

    .line 354
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 356
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_7
    const-string v0, "Start multipart"

    .line 357
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 359
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_8
    const-string v0, "End multipart"

    .line 360
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 362
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_9
    const-string v0, "Preamble"

    .line 363
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 365
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_a
    const-string v0, "Epilogue"

    .line 366
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 368
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_b
    const-string v0, "Start bodypart"

    .line 369
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 371
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_c
    const-string v0, "End bodypart"

    .line 372
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 374
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_d
    const-string v0, "Body"

    .line 375
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 377
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_e
    const-string v0, "Bodypart"

    .line 378
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 380
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_f
    const-string v0, "In message"

    .line 381
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method protected debug(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/james/mime4j/parser/Event;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 318
    :cond_0
    return-void
.end method

.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :sswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    return-object v0

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;
.end method

.method public getField()Lorg/apache/james/mime4j/parser/Field;
    .locals 3

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Lorg/apache/james/mime4j/parser/Field;

    return-object v0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getLineNumber()I
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    return v0
.end method

.method protected message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Lorg/apache/james/mime4j/parser/Event;

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const-string v1, "Event is unexpectedly null."

    .line 291
    .local v1, "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getLineNumber()I

    move-result v0

    .line 292
    .local v0, "lineNumber":I
    if-gtz v0, :cond_1

    .line 295
    .end local v1    # "message":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 288
    .end local v0    # "lineNumber":I
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/Event;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_0

    .line 295
    .restart local v0    # "lineNumber":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected monitor(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/james/mime4j/parser/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isStrictParsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeParseEventException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/parser/MimeParseEventException;-><init>(Lorg/apache/james/mime4j/parser/Event;)V

    throw v0

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->warn(Lorg/apache/james/mime4j/parser/Event;)V

    .line 274
    return-void
.end method

.method protected newBodyDescriptor(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    .locals 2
    .param p1, "pParent"    # Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    .prologue
    .line 109
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isMaximalBodyDescriptor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    .line 114
    .local v0, "result":Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    :goto_0
    return-object v0

    .line 112
    .end local v0    # "result":Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    .restart local v0    # "result":Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    goto :goto_0
.end method

.method protected parseField()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxHeaderCount()I

    move-result v3

    .line 177
    .local v3, "maxHeaderLimit":I
    :cond_0
    iget-boolean v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    if-eqz v6, :cond_1

    .line 178
    const/4 v6, 0x0

    .line 215
    :goto_0
    return v6

    .line 180
    :cond_1
    iget v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    if-lt v6, v3, :cond_2

    .line 181
    new-instance v6, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    const-string v7, "Maximum header limit exceeded"

    invoke-direct {v6, v7}, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 184
    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->fillFieldBuffer()Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v0

    .line 185
    .local v0, "fieldbuf":Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    iget v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    .line 188
    invoke-virtual {v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    .line 189
    .local v2, "len":I
    if-lez v2, :cond_3

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 190
    add-int/lit8 v2, v2, -0x1

    .line 192
    :cond_3
    if-lez v2, :cond_4

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_4

    .line 193
    add-int/lit8 v2, v2, -0x1

    .line 195
    :cond_4
    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->setLength(I)V

    .line 197
    const/4 v5, 0x1

    .line 199
    .local v5, "valid":Z
    const/16 v6, 0x3a

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->indexOf(B)I

    move-result v4

    .line 200
    .local v4, "pos":I
    if-gtz v4, :cond_6

    .line 201
    sget-object v6, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    .line 202
    const/4 v5, 0x0

    .line 212
    :cond_5
    :goto_1
    if-eqz v5, :cond_0

    .line 213
    new-instance v6, Lorg/apache/james/mime4j/parser/RawField;

    invoke-direct {v6, v0, v4}, Lorg/apache/james/mime4j/parser/RawField;-><init>(Lorg/apache/james/mime4j/util/ByteSequence;I)V

    iput-object v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Lorg/apache/james/mime4j/parser/Field;

    .line 214
    iget-object v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    iget-object v7, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Lorg/apache/james/mime4j/parser/Field;

    invoke-interface {v6, v7}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    .line 215
    const/4 v6, 0x1

    goto :goto_0

    .line 204
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 205
    sget-object v6, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 206
    sget-object v6, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v6}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    .line 207
    const/4 v5, 0x0

    .line 208
    goto :goto_1

    .line 204
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected warn(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/james/mime4j/parser/Event;

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 307
    :cond_0
    return-void
.end method
