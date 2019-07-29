.class Lcom/firebase/client/authentication/JsonBasicResponseHandler$1;
.super Lcom/shaded/fasterxml/jackson/core/type/TypeReference;
.source "JsonBasicResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/JsonBasicResponseHandler;->handleResponse(Lorg/shaded/apache/http/HttpResponse;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shaded/fasterxml/jackson/core/type/TypeReference",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/client/authentication/JsonBasicResponseHandler;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/JsonBasicResponseHandler;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/firebase/client/authentication/JsonBasicResponseHandler$1;->this$0:Lcom/firebase/client/authentication/JsonBasicResponseHandler;

    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
