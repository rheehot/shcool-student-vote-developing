.class public final Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
.super Ljava/lang/Object;
.source "BasicHttpProcessor.java"

# interfaces
.implements Lorg/shaded/apache/http/protocol/HttpProcessor;
.implements Lorg/shaded/apache/http/protocol/HttpRequestInterceptorList;
.implements Lorg/shaded/apache/http/protocol/HttpResponseInterceptorList;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected final requestInterceptors:Ljava/util/List;

.field protected final responseInterceptors:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lorg/shaded/apache/http/HttpRequestInterceptor;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;)V

    .line 122
    return-void
.end method

.method public final addInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;I)V
    .locals 0
    .param p1, "interceptor"    # Lorg/shaded/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;I)V

    .line 128
    return-void
.end method

.method public final addInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;)V
    .locals 0
    .param p1, "interceptor"    # Lorg/shaded/apache/http/HttpResponseInterceptor;

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;)V

    .line 170
    return-void
.end method

.method public final addInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;I)V
    .locals 0
    .param p1, "interceptor"    # Lorg/shaded/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addResponseInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;I)V

    .line 175
    return-void
.end method

.method public addRequestInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/shaded/apache/http/HttpRequestInterceptor;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addRequestInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lorg/shaded/apache/http/HttpRequestInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addResponseInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;)V
    .locals 1
    .param p1, "itcp"    # Lorg/shaded/apache/http/HttpResponseInterceptor;

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addResponseInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;I)V
    .locals 1
    .param p1, "itcp"    # Lorg/shaded/apache/http/HttpResponseInterceptor;
    .param p2, "index"    # I

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public clearInterceptors()V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    .line 240
    invoke-virtual {p0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    .line 241
    return-void
.end method

.method public clearRequestInterceptors()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    return-void
.end method

.method public clearResponseInterceptors()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    .line 293
    .local v0, "clone":Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->copyInterceptors(Lorg/shaded/apache/http/protocol/BasicHttpProcessor;)V

    .line 294
    return-object v0
.end method

.method public copy()Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 287
    .local v0, "clone":Lorg/shaded/apache/http/protocol/BasicHttpProcessor;
    invoke-virtual {p0, v0}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->copyInterceptors(Lorg/shaded/apache/http/protocol/BasicHttpProcessor;)V

    .line 288
    return-object v0
.end method

.method protected copyInterceptors(Lorg/shaded/apache/http/protocol/BasicHttpProcessor;)V
    .locals 2
    .param p1, "target"    # Lorg/shaded/apache/http/protocol/BasicHttpProcessor;

    .prologue
    .line 274
    iget-object v0, p1, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    iget-object v0, p1, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    iget-object v1, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    iget-object v0, p1, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    iget-object v0, p1, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    iget-object v1, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    return-void
.end method

.method public getRequestInterceptor(I)Lorg/shaded/apache/http/HttpRequestInterceptor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 140
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 141
    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/HttpRequestInterceptor;

    goto :goto_0
.end method

.method public getRequestInterceptorCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseInterceptor(I)Lorg/shaded/apache/http/HttpResponseInterceptor;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 188
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 189
    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/shaded/apache/http/HttpResponseInterceptor;

    goto :goto_0
.end method

.method public getResponseInterceptorCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/shaded/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 249
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/shaded/apache/http/HttpRequestInterceptor;

    .line 251
    .local v1, "interceptor":Lorg/shaded/apache/http/HttpRequestInterceptor;
    invoke-interface {v1, p1, p2}, Lorg/shaded/apache/http/HttpRequestInterceptor;->process(Lorg/shaded/apache/http/HttpRequest;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "interceptor":Lorg/shaded/apache/http/HttpRequestInterceptor;
    :cond_0
    return-void
.end method

.method public process(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "response"    # Lorg/shaded/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/shaded/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/shaded/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 261
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/shaded/apache/http/HttpResponseInterceptor;

    .line 263
    .local v1, "interceptor":Lorg/shaded/apache/http/HttpResponseInterceptor;
    invoke-interface {v1, p1, p2}, Lorg/shaded/apache/http/HttpResponseInterceptor;->process(Lorg/shaded/apache/http/HttpResponse;Lorg/shaded/apache/http/protocol/HttpContext;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v1    # "interceptor":Lorg/shaded/apache/http/HttpResponseInterceptor;
    :cond_0
    return-void
.end method

.method public removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 94
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 101
    .end local v1    # "request":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 3
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 105
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, "request":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 112
    .end local v1    # "request":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public setInterceptors(Ljava/util/List;)V
    .locals 4
    .param p1, "list"    # Ljava/util/List;

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "List must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_0
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 223
    iget-object v2, p0, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 225
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 226
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/shaded/apache/http/HttpRequestInterceptor;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 227
    check-cast v2, Lorg/shaded/apache/http/HttpRequestInterceptor;

    invoke-virtual {p0, v2}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/shaded/apache/http/HttpRequestInterceptor;)V

    .line 229
    :cond_1
    instance-of v2, v1, Lorg/shaded/apache/http/HttpResponseInterceptor;

    if-eqz v2, :cond_2

    .line 230
    check-cast v1, Lorg/shaded/apache/http/HttpResponseInterceptor;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/shaded/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/shaded/apache/http/HttpResponseInterceptor;)V

    .line 224
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_3
    return-void
.end method
