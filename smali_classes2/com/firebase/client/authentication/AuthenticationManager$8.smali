.class Lcom/firebase/client/authentication/AuthenticationManager$8;
.super Ljava/lang/Object;
.source "AuthenticationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->makeRequest(Ljava/lang/String;Lcom/firebase/client/utilities/HttpUtilities$HttpRequestType;Ljava/util/Map;Ljava/util/Map;Lcom/firebase/client/authentication/RequestHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;

.field final synthetic val$handler:Lcom/firebase/client/authentication/RequestHandler;

.field final synthetic val$request:Lorg/shaded/apache/http/client/methods/HttpUriRequest;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lcom/firebase/client/authentication/RequestHandler;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    iput-object p2, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->val$request:Lorg/shaded/apache/http/client/methods/HttpUriRequest;

    iput-object p3, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->val$handler:Lcom/firebase/client/authentication/RequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v4, 0x4e20

    .line 443
    new-instance v2, Lorg/shaded/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/shaded/apache/http/params/BasicHttpParams;-><init>()V

    .line 444
    .local v2, "httpParameters":Lorg/shaded/apache/http/params/HttpParams;
    invoke-static {v2, v4}, Lorg/shaded/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/shaded/apache/http/params/HttpParams;I)V

    .line 445
    invoke-static {v2, v4}, Lorg/shaded/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/shaded/apache/http/params/HttpParams;I)V

    .line 447
    new-instance v1, Lorg/shaded/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2}, Lorg/shaded/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/shaded/apache/http/params/HttpParams;)V

    .line 448
    .local v1, "httpClient":Lorg/shaded/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v1}, Lorg/shaded/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/shaded/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.protocol.cookie-policy"

    const-string v6, "compatibility"

    invoke-interface {v4, v5, v6}, Lorg/shaded/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/shaded/apache/http/params/HttpParams;

    .line 450
    :try_start_0
    iget-object v4, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->val$request:Lorg/shaded/apache/http/client/methods/HttpUriRequest;

    new-instance v5, Lcom/firebase/client/authentication/JsonBasicResponseHandler;

    invoke-direct {v5}, Lcom/firebase/client/authentication/JsonBasicResponseHandler;-><init>()V

    invoke-virtual {v1, v4, v5}, Lorg/shaded/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/shaded/apache/http/client/methods/HttpUriRequest;Lorg/shaded/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 451
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v3, :cond_0

    .line 452
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Authentication server did not respond with a valid response"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v3    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    new-instance v5, Lcom/firebase/client/authentication/AuthenticationManager$8$2;

    invoke-direct {v5, p0, v0}, Lcom/firebase/client/authentication/AuthenticationManager$8$2;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$8;Ljava/io/IOException;)V

    invoke-static {v4, v5}, Lcom/firebase/client/authentication/AuthenticationManager;->access$600(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V

    .line 468
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 454
    .restart local v3    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/firebase/client/authentication/AuthenticationManager$8;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    new-instance v5, Lcom/firebase/client/authentication/AuthenticationManager$8$1;

    invoke-direct {v5, p0, v3}, Lcom/firebase/client/authentication/AuthenticationManager$8$1;-><init>(Lcom/firebase/client/authentication/AuthenticationManager$8;Ljava/util/Map;)V

    invoke-static {v4, v5}, Lcom/firebase/client/authentication/AuthenticationManager;->access$600(Lcom/firebase/client/authentication/AuthenticationManager;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
