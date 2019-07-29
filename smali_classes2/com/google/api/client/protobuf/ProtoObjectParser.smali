.class public Lcom/google/api/client/protobuf/ProtoObjectParser;
.super Ljava/lang/Object;
.source "ProtoObjectParser.java"

# interfaces
.implements Lcom/google/api/client/util/ObjectParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1, p3}, Lcom/google/api/client/protobuf/ProtocolBuffers;->parseAndClose(Ljava/io/InputStream;Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    instance-of v0, p3, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 54
    check-cast p3, Ljava/lang/Class;

    .end local p3    # "dataType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/protobuf/ProtoObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 56
    .restart local p3    # "dataType":Ljava/lang/reflect/Type;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "dataType must be of Class<? extends MessageList>"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "protocol buffers must be read from a binary stream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "protocol buffers must be read from a binary stream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
