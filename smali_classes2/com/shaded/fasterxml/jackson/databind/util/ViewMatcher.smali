.class public abstract Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher;
.super Ljava/lang/Object;
.source "ViewMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Multi;,
        Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Single;,
        Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Empty;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static construct([Ljava/lang/Class;)Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher;"
        }
    .end annotation

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Empty;->instance:Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Empty;

    .line 22
    :goto_0
    return-object v0

    .line 16
    :cond_0
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 22
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Multi;

    invoke-direct {v0, p0}, Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Multi;-><init>([Ljava/lang/Class;)V

    goto :goto_0

    .line 18
    :pswitch_0
    sget-object v0, Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Empty;->instance:Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Empty;

    goto :goto_0

    .line 20
    :pswitch_1
    new-instance v0, Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Single;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/shaded/fasterxml/jackson/databind/util/ViewMatcher$Single;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract isVisibleForView(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method
