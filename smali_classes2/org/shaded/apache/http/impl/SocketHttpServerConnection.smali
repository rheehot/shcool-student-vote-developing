.class public Lorg/shaded/apache/http/impl/SocketHttpServerConnection;
.super Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;
.source "SocketHttpServerConnection.java"

# interfaces
.implements Lorg/shaded/apache/http/HttpInetConnection;


# instance fields
.field private volatile open:Z

.field private volatile socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/shaded/apache/http/impl/AbstractHttpServerConnection;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 65
    return-void
.end method


# virtual methods
.method protected assertNotOpen()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->open:Z

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    return-void
.end method

.method protected assertOpen()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->open:Z

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    return-void
.end method

.method protected bind(Ljava/net/Socket;Lorg/shaded/apache/http/params/HttpParams;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "params"    # Lorg/shaded/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Socket may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    if-nez p2, :cond_1

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP parameters may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_1
    iput-object p1, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 177
    invoke-static {p2}, Lorg/shaded/apache/http/params/HttpConnectionParams;->getSocketBufferSize(Lorg/shaded/apache/http/params/HttpParams;)I

    move-result v0

    .line 179
    .local v0, "buffersize":I
    invoke-virtual {p0, p1, v0, p2}, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->createHttpDataReceiver(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionInputBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p2}, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->createHttpDataTransmitter(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionOutputBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2}, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->init(Lorg/shaded/apache/http/io/SessionInputBuffer;Lorg/shaded/apache/http/io/SessionOutputBuffer;Lorg/shaded/apache/http/params/HttpParams;)V

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->open:Z

    .line 185
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->open:Z

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->open:Z

    .line 265
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->doFlush()V

    .line 268
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    :goto_2
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    goto :goto_2

    .line 273
    :catch_1
    move-exception v0

    goto :goto_2

    .line 269
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected createHttpDataReceiver(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionInputBuffer;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/shaded/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->createSessionInputBuffer(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createHttpDataTransmitter(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionOutputBuffer;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/shaded/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionInputBuffer;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/shaded/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lorg/shaded/apache/http/impl/io/SocketInputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/shaded/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)Lorg/shaded/apache/http/io/SessionOutputBuffer;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/shaded/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lorg/shaded/apache/http/impl/io/SocketOutputBuffer;

    invoke-direct {v0, p1, p2, p3}, Lorg/shaded/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/shaded/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 241
    iget-object v2, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    .line 243
    :try_start_0
    iget-object v2, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "ignore":Ljava/net/SocketException;
    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->open:Z

    return v0
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->assertOpen()V

    .line 229
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->open:Z

    .line 254
    iget-object v0, p0, Lorg/shaded/apache/http/impl/SocketHttpServerConnection;->socket:Ljava/net/Socket;

    .line 255
    .local v0, "tmpsocket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 258
    :cond_0
    return-void
.end method
