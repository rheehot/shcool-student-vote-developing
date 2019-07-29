.class public Lorg/shaded/apache/http/message/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

# interfaces
.implements Lorg/shaded/apache/http/NameValuePair;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5957a9ac336aca08L


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-nez p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v2

    .line 92
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    goto :goto_0

    .line 93
    :cond_2
    instance-of v3, p1, Lorg/shaded/apache/http/NameValuePair;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 94
    check-cast v0, Lorg/shaded/apache/http/message/BasicNameValuePair;

    .line 95
    .local v0, "that":Lorg/shaded/apache/http/message/BasicNameValuePair;
    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/shaded/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/shaded/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/shaded/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 103
    const/16 v0, 0x11

    .line 104
    .local v0, "hash":I
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/shaded/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 105
    iget-object v1, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/shaded/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 106
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 79
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    .line 86
    :goto_0
    return-object v2

    .line 81
    :cond_0
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v1, v2, v3

    .line 82
    .local v1, "len":I
    new-instance v0, Lorg/shaded/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, v1}, Lorg/shaded/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 83
    .local v0, "buffer":Lorg/shaded/apache/http/util/CharArrayBuffer;
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 84
    const-string v2, "="

    invoke-virtual {v0, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lorg/shaded/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/shaded/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Lorg/shaded/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
