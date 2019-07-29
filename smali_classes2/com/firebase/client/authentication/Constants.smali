.class public Lcom/firebase/client/authentication/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final FIREBASE_AUTH_ANONYMOUS_PATH:Ljava/lang/String; = "/auth/anonymous"

.field public static final FIREBASE_AUTH_CREATE_USER_PATH:Ljava/lang/String; = "/users"

.field public static final FIREBASE_AUTH_DEFAULT_API_HOST:Ljava/lang/String; = "https://auth.firebase.com/"

.field public static final FIREBASE_AUTH_EMAIL_PATH_FORMAT:Ljava/lang/String; = "/users/%s/email"

.field public static final FIREBASE_AUTH_PASSWORD_PATH:Ljava/lang/String; = "/auth/password"

.field public static final FIREBASE_AUTH_PASSWORD_PATH_FORMAT:Ljava/lang/String; = "/users/%s/password"

.field public static final FIREBASE_AUTH_PROVIDER_PATH_FORMAT:Ljava/lang/String; = "/auth/%s/token"

.field public static final FIREBASE_AUTH_REMOVE_USER_PATH_FORMAT:Ljava/lang/String; = "/users/%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
