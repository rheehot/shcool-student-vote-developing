.class final Lcom/shaded/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Bucket"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final index:I

.field public final key:Ljava/lang/String;

.field public final next:Lcom/shaded/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

.field public final value:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/shaded/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 336
    iput-object p2, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    .line 337
    iput-object p3, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/shaded/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 338
    iput p4, p0, Lcom/shaded/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->index:I

    .line 339
    return-void
.end method
