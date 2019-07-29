.class Lcom/firebase/client/authentication/AuthenticationManager$5;
.super Lcom/shaded/fasterxml/jackson/core/type/TypeReference;
.source "AuthenticationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/client/authentication/AuthenticationManager;->resumeSession()V
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
.field final synthetic this$0:Lcom/firebase/client/authentication/AuthenticationManager;


# direct methods
.method constructor <init>(Lcom/firebase/client/authentication/AuthenticationManager;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/firebase/client/authentication/AuthenticationManager$5;->this$0:Lcom/firebase/client/authentication/AuthenticationManager;

    invoke-direct {p0}, Lcom/shaded/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
