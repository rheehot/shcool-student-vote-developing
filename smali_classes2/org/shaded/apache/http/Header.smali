.class public interface abstract Lorg/shaded/apache/http/Header;
.super Ljava/lang/Object;
.source "Header.java"


# virtual methods
.method public abstract getElements()[Lorg/shaded/apache/http/HeaderElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/shaded/apache/http/ParseException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method
