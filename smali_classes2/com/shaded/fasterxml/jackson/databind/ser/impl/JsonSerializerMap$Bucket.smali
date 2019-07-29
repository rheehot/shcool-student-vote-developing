.class final Lcom/shaded/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;
.super Ljava/lang/Object;
.source "JsonSerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/ser/impl/JsonSerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Bucket"
.end annotation


# instance fields
.field public final key:Lcom/shaded/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

.field public final next:Lcom/shaded/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

.field public final value:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;Lcom/shaded/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shaded/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;",
            "Lcom/shaded/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;",
            "Lcom/shaded/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->next:Lcom/shaded/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;

    .line 87
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/shaded/fasterxml/jackson/databind/ser/SerializerCache$TypeKey;

    .line 88
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/shaded/fasterxml/jackson/databind/JsonSerializer;

    .line 89
    return-void
.end method
