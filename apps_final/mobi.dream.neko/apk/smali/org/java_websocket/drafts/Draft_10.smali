.class public Lorg/java_websocket/drafts/Draft_10;
.super Lorg/java_websocket/drafts/Draft;
.source "Draft_10.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/java_websocket/drafts/Draft_10$IncompleteException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fragmentedframe:Lorg/java_websocket/framing/Framedata;

.field private incompleteframe:Ljava/nio/ByteBuffer;

.field private final reuseableRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/java_websocket/drafts/Draft_10;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/java_websocket/drafts/Draft_10;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_10;->fragmentedframe:Lorg/java_websocket/framing/Framedata;

    .line 67
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_10;->reuseableRandom:Ljava/util/Random;

    return-void
.end method

.method private fromOpcode(Lorg/java_websocket/framing/Framedata$Opcode;)B
    .locals 3
    .param p1, "opcode"    # Lorg/java_websocket/framing/Framedata$Opcode;

    .prologue
    .line 161
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    .line 163
    :cond_0
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_1

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_2

    .line 166
    const/4 v0, 0x2

    goto :goto_0

    .line 167
    :cond_2
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_3

    .line 168
    const/16 v0, 0x8

    goto :goto_0

    .line 169
    :cond_3
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_4

    .line 170
    const/16 v0, 0x9

    goto :goto_0

    .line 171
    :cond_4
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    if-ne p1, v0, :cond_5

    .line 172
    const/16 v0, 0xa

    goto :goto_0

    .line 173
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/java_websocket/framing/Framedata$Opcode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateFinalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "seckey":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "acc":Ljava/lang/String;
    :try_start_0
    const-string v4, "SHA1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 185
    .local v3, "sh1":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lorg/java_websocket/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 182
    .end local v3    # "sh1":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static readVersion(Lorg/java_websocket/handshake/Handshakedata;)I
    .locals 5
    .param p0, "handshakedata"    # Lorg/java_websocket/handshake/Handshakedata;

    .prologue
    const/4 v1, -0x1

    .line 51
    const-string v3, "Sec-WebSocket-Version"

    invoke-interface {p0, v3}, Lorg/java_websocket/handshake/Handshakedata;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "vers":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 55
    :try_start_0
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :cond_0
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private toByteArray(JI)[B
    .locals 5
    .param p1, "val"    # J
    .param p3, "bytecount"    # I

    .prologue
    .line 214
    new-array v0, p3, [B

    .line 215
    .local v0, "buffer":[B
    mul-int/lit8 v3, p3, 0x8

    add-int/lit8 v1, v3, -0x8

    .line 216
    .local v1, "highest":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 217
    mul-int/lit8 v3, v2, 0x8

    sub-int v3, v1, v3

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-object v0
.end method

.method private toOpcode(B)Lorg/java_websocket/framing/Framedata$Opcode;
    .locals 3
    .param p1, "opcode"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidFrameException;
        }
    .end annotation

    .prologue
    .line 223
    packed-switch p1, :pswitch_data_0

    .line 239
    :pswitch_0
    new-instance v0, Lorg/java_websocket/exceptions/InvalidFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow optcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :pswitch_1
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CONTINUOUS:Lorg/java_websocket/framing/Framedata$Opcode;

    .line 236
    :goto_0
    return-object v0

    .line 227
    :pswitch_2
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 229
    :pswitch_3
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 232
    :pswitch_4
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 234
    :pswitch_5
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 236
    :pswitch_6
    sget-object v0, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public acceptHandshakeAsClient(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 3
    .param p1, "request"    # Lorg/java_websocket/handshake/ClientHandshake;
    .param p2, "response"    # Lorg/java_websocket/handshake/ServerHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v2, "Sec-WebSocket-Key"

    invoke-interface {p1, v2}, Lorg/java_websocket/handshake/ClientHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Sec-WebSocket-Accept"

    invoke-interface {p2, v2}, Lorg/java_websocket/handshake/ServerHandshake;->hasFieldValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    :cond_0
    sget-object v2, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    .line 80
    :goto_0
    return-object v2

    .line 74
    :cond_1
    const-string v2, "Sec-WebSocket-Accept"

    invoke-interface {p2, v2}, Lorg/java_websocket/handshake/ServerHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "seckey_answere":Ljava/lang/String;
    const-string v2, "Sec-WebSocket-Key"

    invoke-interface {p1, v2}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "seckey_challenge":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/java_websocket/drafts/Draft_10;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    sget-object v2, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 80
    :cond_2
    sget-object v2, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public acceptHandshakeAsServer(Lorg/java_websocket/handshake/ClientHandshake;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 2
    .param p1, "handshakedata"    # Lorg/java_websocket/handshake/ClientHandshake;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p1}, Lorg/java_websocket/drafts/Draft_10;->readVersion(Lorg/java_websocket/handshake/Handshakedata;)I

    move-result v0

    .line 87
    .local v0, "v":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lorg/java_websocket/drafts/Draft_10;->basicAccept(Lorg/java_websocket/handshake/Handshakedata;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    .line 89
    :goto_0
    return-object v1

    .line 88
    :cond_1
    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0

    .line 89
    :cond_2
    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public createBinaryFrame(Lorg/java_websocket/framing/Framedata;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "framedata"    # Lorg/java_websocket/framing/Framedata;

    .prologue
    .line 94
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getPayloadData()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 95
    .local v4, "mes":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lorg/java_websocket/drafts/Draft_10;->role:Lorg/java_websocket/WebSocket$Role;

    sget-object v10, Lorg/java_websocket/WebSocket$Role;->CLIENT:Lorg/java_websocket/WebSocket$Role;

    if-ne v9, v10, :cond_0

    const/4 v2, 0x1

    .line 96
    .local v2, "mask":Z
    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/16 v10, 0x7d

    if-gt v9, v10, :cond_1

    const/4 v8, 0x1

    .line 97
    .local v8, "sizebytes":I
    :goto_1
    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    add-int/lit8 v9, v8, 0x1

    :goto_2
    add-int/lit8 v10, v9, 0x1

    if-eqz v2, :cond_4

    const/4 v9, 0x4

    :goto_3
    add-int/2addr v9, v10

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->getOpcode()Lorg/java_websocket/framing/Framedata$Opcode;

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/java_websocket/drafts/Draft_10;->fromOpcode(Lorg/java_websocket/framing/Framedata$Opcode;)B

    move-result v6

    .line 99
    .local v6, "optcode":B
    invoke-interface {p1}, Lorg/java_websocket/framing/Framedata;->isFin()Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, -0x80

    :goto_4
    int-to-byte v5, v9

    .line 100
    .local v5, "one":B
    or-int v9, v5, v6

    int-to-byte v5, v9

    .line 101
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {p0, v9, v10, v8}, Lorg/java_websocket/drafts/Draft_10;->toByteArray(JI)[B

    move-result-object v7

    .line 103
    .local v7, "payloadlengthbytes":[B
    sget-boolean v9, Lorg/java_websocket/drafts/Draft_10;->$assertionsDisabled:Z

    if-nez v9, :cond_6

    array-length v9, v7

    if-eq v9, v8, :cond_6

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 95
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "mask":Z
    .end local v5    # "one":B
    .end local v6    # "optcode":B
    .end local v7    # "payloadlengthbytes":[B
    .end local v8    # "sizebytes":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 96
    .restart local v2    # "mask":Z
    :cond_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const v10, 0xffff

    if-gt v9, v10, :cond_2

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    const/16 v8, 0x8

    goto :goto_1

    .restart local v8    # "sizebytes":I
    :cond_3
    move v9, v8

    .line 97
    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 99
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    .restart local v6    # "optcode":B
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 105
    .restart local v5    # "one":B
    .restart local v7    # "payloadlengthbytes":[B
    :cond_6
    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 106
    const/4 v9, 0x0

    aget-byte v10, v7, v9

    if-eqz v2, :cond_7

    const/16 v9, -0x80

    :goto_5
    or-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 116
    :goto_6
    if-eqz v2, :cond_d

    .line 117
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 118
    .local v3, "maskkey":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lorg/java_websocket/drafts/Draft_10;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    if-ge v1, v9, :cond_e

    .line 121
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    rem-int/lit8 v10, v1, 0x4

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 106
    .end local v1    # "i":I
    .end local v3    # "maskkey":Ljava/nio/ByteBuffer;
    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    .line 107
    :cond_8
    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    .line 108
    if-eqz v2, :cond_9

    const/16 v9, -0x80

    :goto_8
    or-int/lit8 v9, v9, 0x7e

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 108
    :cond_9
    const/4 v9, 0x0

    goto :goto_8

    .line 110
    :cond_a
    const/16 v9, 0x8

    if-ne v8, v9, :cond_c

    .line 111
    if-eqz v2, :cond_b

    const/16 v9, -0x80

    :goto_9
    or-int/lit8 v9, v9, 0x7f

    int-to-byte v9, v9

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 111
    :cond_b
    const/4 v9, 0x0

    goto :goto_9

    .line 114
    :cond_c
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Size representation not supported/specified"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 124
    :cond_d
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 126
    :cond_e
    sget-boolean v9, Lorg/java_websocket/drafts/Draft_10;->$assertionsDisabled:Z

    if-nez v9, :cond_f

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-eqz v9, :cond_f

    new-instance v9, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(I)V

    throw v9

    .line 127
    :cond_f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 129
    return-object v0
.end method

.method public createFrames(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-direct {v0}, Lorg/java_websocket/framing/FramedataImpl1;-><init>()V

    .line 150
    .local v0, "curframe":Lorg/java_websocket/framing/FrameBuilder;
    :try_start_0
    invoke-static {p1}, Lorg/java_websocket/util/Charsetfunctions;->utf8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/java_websocket/framing/FrameBuilder;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/java_websocket/framing/FrameBuilder;->setFin(Z)V

    .line 155
    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->TEXT:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-interface {v0, v2}, Lorg/java_websocket/framing/FrameBuilder;->setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V

    .line 156
    invoke-interface {v0, p2}, Lorg/java_websocket/framing/FrameBuilder;->setTransferemasked(Z)V

    .line 157
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    new-instance v2, Lorg/java_websocket/exceptions/NotSendableException;

    invoke-direct {v2, v1}, Lorg/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createFrames(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 3
    .param p1, "binary"    # Ljava/nio/ByteBuffer;
    .param p2, "mask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-direct {v0}, Lorg/java_websocket/framing/FramedataImpl1;-><init>()V

    .line 136
    .local v0, "curframe":Lorg/java_websocket/framing/FrameBuilder;
    :try_start_0
    invoke-interface {v0, p1}, Lorg/java_websocket/framing/FrameBuilder;->setPayload(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/java_websocket/framing/FrameBuilder;->setFin(Z)V

    .line 141
    sget-object v2, Lorg/java_websocket/framing/Framedata$Opcode;->BINARY:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-interface {v0, v2}, Lorg/java_websocket/framing/FrameBuilder;->setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V

    .line 142
    invoke-interface {v0, p2}, Lorg/java_websocket/framing/FrameBuilder;->setTransferemasked(Z)V

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Lorg/java_websocket/exceptions/InvalidDataException;
    new-instance v2, Lorg/java_websocket/exceptions/NotSendableException;

    invoke-direct {v2, v1}, Lorg/java_websocket/exceptions/NotSendableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCloseHandshakeType()Lorg/java_websocket/drafts/Draft$CloseHandshakeType;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lorg/java_websocket/drafts/Draft$CloseHandshakeType;->TWOWAY:Lorg/java_websocket/drafts/Draft$CloseHandshakeType;

    return-object v0
.end method

.method public postProcessHandshakeRequestAsClient(Lorg/java_websocket/handshake/ClientHandshakeBuilder;)Lorg/java_websocket/handshake/ClientHandshakeBuilder;
    .locals 3
    .param p1, "request"    # Lorg/java_websocket/handshake/ClientHandshakeBuilder;

    .prologue
    .line 190
    const-string v1, "Upgrade"

    const-string v2, "websocket"

    invoke-interface {p1, v1, v2}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "Connection"

    const-string v2, "Upgrade"

    invoke-interface {p1, v1, v2}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "8"

    invoke-interface {p1, v1, v2}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 195
    .local v0, "random":[B
    iget-object v1, p0, Lorg/java_websocket/drafts/Draft_10;->reuseableRandom:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 196
    const-string v1, "Sec-WebSocket-Key"

    invoke-static {v0}, Lorg/java_websocket/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/java_websocket/handshake/ClientHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-object p1
.end method

.method public postProcessHandshakeResponseAsServer(Lorg/java_websocket/handshake/ClientHandshake;Lorg/java_websocket/handshake/ServerHandshakeBuilder;)Lorg/java_websocket/handshake/HandshakeBuilder;
    .locals 3
    .param p1, "request"    # Lorg/java_websocket/handshake/ClientHandshake;
    .param p2, "response"    # Lorg/java_websocket/handshake/ServerHandshakeBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 203
    const-string v1, "Upgrade"

    const-string v2, "websocket"

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "Connection"

    const-string v2, "Connection"

    invoke-interface {p1, v2}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "Switching Protocols"

    invoke-interface {p2, v1}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->setHttpStatusMessage(Ljava/lang/String;)V

    .line 206
    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1}, Lorg/java_websocket/handshake/ClientHandshake;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "seckey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 208
    new-instance v1, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string v2, "missing Sec-WebSocket-Key"

    invoke-direct {v1, v2}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    const-string v1, "Sec-WebSocket-Accept"

    invoke-direct {p0, v0}, Lorg/java_websocket/drafts/Draft_10;->generateFinalKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/java_websocket/handshake/ServerHandshakeBuilder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-object p2
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 387
    return-void
.end method

.method public translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 11
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/java_websocket/framing/Framedata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/LimitExedeedException;,
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 248
    .local v5, "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_2

    .line 252
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 254
    .local v0, "available_next_byte_count":I
    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 256
    .local v3, "expected_next_byte_count":I
    if-le v3, v0, :cond_1

    .line 258
    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual {v8, v9, v10, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 297
    .end local v0    # "available_next_byte_count":I
    .end local v3    # "expected_next_byte_count":I
    .end local v5    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 262
    .restart local v0    # "available_next_byte_count":I
    .restart local v3    # "expected_next_byte_count":I
    .restart local v5    # "frames":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/framing/Framedata;>;"
    :cond_1
    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual {v8, v9, v10, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 263
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v8}, Lorg/java_websocket/drafts/Draft_10;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;

    move-result-object v1

    .line 266
    .local v1, "cur":Lorg/java_websocket/framing/Framedata;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lorg/java_websocket/drafts/Draft_10$IncompleteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    .end local v0    # "available_next_byte_count":I
    .end local v1    # "cur":Lorg/java_websocket/framing/Framedata;
    .end local v3    # "expected_next_byte_count":I
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 284
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 286
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/java_websocket/drafts/Draft_10;->translateSingleFrame(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;

    move-result-object v1

    .line 287
    .restart local v1    # "cur":Lorg/java_websocket/framing/Framedata;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/java_websocket/drafts/Draft_10$IncompleteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 288
    .end local v1    # "cur":Lorg/java_websocket/framing/Framedata;
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Lorg/java_websocket/drafts/Draft_10$IncompleteException;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 291
    invoke-virtual {v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;->getPreferedSize()I

    move-result v7

    .line 292
    .local v7, "pref":I
    invoke-virtual {p0, v7}, Lorg/java_websocket/drafts/Draft_10;->checkAlloc(I)I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 293
    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 269
    .end local v2    # "e":Lorg/java_websocket/drafts/Draft_10$IncompleteException;
    .end local v7    # "pref":I
    :catch_1
    move-exception v2

    .line 271
    .restart local v2    # "e":Lorg/java_websocket/drafts/Draft_10$IncompleteException;
    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    .line 272
    .local v6, "oldsize":I
    invoke-virtual {v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;->getPreferedSize()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/java_websocket/drafts/Draft_10;->checkAlloc(I)I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 273
    .local v4, "extendedframe":Ljava/nio/ByteBuffer;
    sget-boolean v8, Lorg/java_websocket/drafts/Draft_10;->$assertionsDisabled:Z

    if-nez v8, :cond_3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    iget-object v9, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    if-gt v8, v9, :cond_3

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 274
    :cond_3
    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 275
    iget-object v8, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 276
    iput-object v4, p0, Lorg/java_websocket/drafts/Draft_10;->incompleteframe:Ljava/nio/ByteBuffer;

    .line 278
    invoke-virtual {p0, p1}, Lorg/java_websocket/drafts/Draft_10;->translateFrame(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public translateSingleFrame(Ljava/nio/ByteBuffer;)Lorg/java_websocket/framing/Framedata;
    .locals 23
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/drafts/Draft_10$IncompleteException;,
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    .line 302
    .local v13, "maxpacketsize":I
    const/16 v17, 0x2

    .line 303
    .local v17, "realpacketsize":I
    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 304
    new-instance v20, Lorg/java_websocket/drafts/Draft_10$IncompleteException;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lorg/java_websocket/drafts/Draft_10;I)V

    throw v20

    .line 305
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 306
    .local v5, "b1":B
    shr-int/lit8 v20, v5, 0x8

    if-eqz v20, :cond_1

    const/4 v3, 0x1

    .line 307
    .local v3, "FIN":Z
    :goto_0
    and-int/lit8 v20, v5, 0x7f

    shr-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v18, v0

    .line 308
    .local v18, "rsv":B
    if-eqz v18, :cond_2

    .line 309
    new-instance v20, Lorg/java_websocket/exceptions/InvalidFrameException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "bad rsv "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 306
    .end local v3    # "FIN":Z
    .end local v18    # "rsv":B
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 310
    .restart local v3    # "FIN":Z
    .restart local v18    # "rsv":B
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 311
    .local v6, "b2":B
    and-int/lit8 v20, v6, -0x80

    if-eqz v20, :cond_4

    const/4 v4, 0x1

    .line 312
    .local v4, "MASK":Z
    :goto_1
    and-int/lit8 v20, v6, 0x7f

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v16, v0

    .line 313
    .local v16, "payloadlength":I
    and-int/lit8 v20, v5, 0xf

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/java_websocket/drafts/Draft_10;->toOpcode(B)Lorg/java_websocket/framing/Framedata$Opcode;

    move-result-object v14

    .line 315
    .local v14, "optcode":Lorg/java_websocket/framing/Framedata$Opcode;
    if-nez v3, :cond_5

    .line 316
    sget-object v20, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v20

    if-eq v14, v0, :cond_3

    sget-object v20, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v20

    if-eq v14, v0, :cond_3

    sget-object v20, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_5

    .line 317
    :cond_3
    new-instance v20, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string v21, "control frames may no be fragmented"

    invoke-direct/range {v20 .. v21}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 311
    .end local v4    # "MASK":Z
    .end local v14    # "optcode":Lorg/java_websocket/framing/Framedata$Opcode;
    .end local v16    # "payloadlength":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 321
    .restart local v4    # "MASK":Z
    .restart local v14    # "optcode":Lorg/java_websocket/framing/Framedata$Opcode;
    .restart local v16    # "payloadlength":I
    :cond_5
    if-ltz v16, :cond_6

    const/16 v20, 0x7d

    move/from16 v0, v16

    move/from16 v1, v20

    if-gt v0, v1, :cond_6

    .line 352
    :goto_2
    if-eqz v4, :cond_e

    const/16 v20, 0x4

    :goto_3
    add-int v17, v17, v20

    .line 354
    add-int v17, v17, v16

    .line 356
    move/from16 v0, v17

    if-ge v13, v0, :cond_f

    .line 357
    new-instance v20, Lorg/java_websocket/drafts/Draft_10$IncompleteException;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lorg/java_websocket/drafts/Draft_10;I)V

    throw v20

    .line 323
    :cond_6
    sget-object v20, Lorg/java_websocket/framing/Framedata$Opcode;->PING:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v20

    if-eq v14, v0, :cond_7

    sget-object v20, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v20

    if-eq v14, v0, :cond_7

    sget-object v20, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_8

    .line 324
    :cond_7
    new-instance v20, Lorg/java_websocket/exceptions/InvalidFrameException;

    const-string v21, "more than 125 octets"

    invoke-direct/range {v20 .. v21}, Lorg/java_websocket/exceptions/InvalidFrameException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 326
    :cond_8
    const/16 v20, 0x7e

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 327
    add-int/lit8 v17, v17, 0x2

    .line 328
    move/from16 v0, v17

    if-ge v13, v0, :cond_9

    .line 329
    new-instance v20, Lorg/java_websocket/drafts/Draft_10$IncompleteException;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lorg/java_websocket/drafts/Draft_10;I)V

    throw v20

    .line 330
    :cond_9
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 331
    .local v19, "sizebytes":[B
    const/16 v20, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v21

    aput-byte v21, v19, v20

    .line 332
    const/16 v20, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v21

    aput-byte v21, v19, v20

    .line 333
    new-instance v20, Ljava/math/BigInteger;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->intValue()I

    move-result v16

    .line 334
    goto :goto_2

    .line 335
    .end local v19    # "sizebytes":[B
    :cond_a
    add-int/lit8 v17, v17, 0x8

    .line 336
    move/from16 v0, v17

    if-ge v13, v0, :cond_b

    .line 337
    new-instance v20, Lorg/java_websocket/drafts/Draft_10$IncompleteException;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/drafts/Draft_10$IncompleteException;-><init>(Lorg/java_websocket/drafts/Draft_10;I)V

    throw v20

    .line 338
    :cond_b
    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v7, v0, [B

    .line 339
    .local v7, "bytes":[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ge v9, v0, :cond_c

    .line 340
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v20

    aput-byte v20, v7, v9

    .line 339
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 342
    :cond_c
    new-instance v20, Ljava/math/BigInteger;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    .line 343
    .local v10, "length":J
    const-wide/32 v20, 0x7fffffff

    cmp-long v20, v10, v20

    if-lez v20, :cond_d

    .line 344
    new-instance v20, Lorg/java_websocket/exceptions/LimitExedeedException;

    const-string v21, "Payloadsize is to big..."

    invoke-direct/range {v20 .. v21}, Lorg/java_websocket/exceptions/LimitExedeedException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 346
    :cond_d
    long-to-int v0, v10

    move/from16 v16, v0

    goto/16 :goto_2

    .line 352
    .end local v7    # "bytes":[B
    .end local v9    # "i":I
    .end local v10    # "length":J
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 359
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/java_websocket/drafts/Draft_10;->checkAlloc(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 360
    .local v15, "payload":Ljava/nio/ByteBuffer;
    if-eqz v4, :cond_10

    .line 361
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v12, v0, [B

    .line 362
    .local v12, "maskskey":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 363
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    move/from16 v0, v16

    if-ge v9, v0, :cond_11

    .line 364
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v20

    rem-int/lit8 v21, v9, 0x4

    aget-byte v21, v12, v21

    xor-int v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 363
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 367
    .end local v9    # "i":I
    .end local v12    # "maskskey":[B
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 368
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    :cond_11
    sget-object v20, Lorg/java_websocket/framing/Framedata$Opcode;->CLOSING:Lorg/java_websocket/framing/Framedata$Opcode;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_12

    .line 373
    new-instance v8, Lorg/java_websocket/framing/CloseFrameBuilder;

    invoke-direct {v8}, Lorg/java_websocket/framing/CloseFrameBuilder;-><init>()V

    .line 379
    .local v8, "frame":Lorg/java_websocket/framing/FrameBuilder;
    :goto_6
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 380
    invoke-interface {v8, v15}, Lorg/java_websocket/framing/FrameBuilder;->setPayload(Ljava/nio/ByteBuffer;)V

    .line 381
    return-object v8

    .line 375
    .end local v8    # "frame":Lorg/java_websocket/framing/FrameBuilder;
    :cond_12
    new-instance v8, Lorg/java_websocket/framing/FramedataImpl1;

    invoke-direct {v8}, Lorg/java_websocket/framing/FramedataImpl1;-><init>()V

    .line 376
    .restart local v8    # "frame":Lorg/java_websocket/framing/FrameBuilder;
    invoke-interface {v8, v3}, Lorg/java_websocket/framing/FrameBuilder;->setFin(Z)V

    .line 377
    invoke-interface {v8, v14}, Lorg/java_websocket/framing/FrameBuilder;->setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V

    goto :goto_6
.end method
