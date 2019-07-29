.class public Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector$Pair;
.super Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;
.source "AnnotationIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pair"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1132
    invoke-direct {p0, p1, p2}, Lcom/shaded/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;-><init>(Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/shaded/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 1133
    return-void
.end method
